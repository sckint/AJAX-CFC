<!--- Include Template for Loading Country --->
<cfinclude template="country.cfm">
<!DOCTYPE html>
<html>
	<head>
		<title>
			Dynamic Select Boxes
		</title>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
		<script type="text/javascript" src="js/populate.js"></script>
	</head>
	<body>
		<cfoutput>
			<div class="container">
				<form class="form-horizontal" name="state_populate">
					<div class="form-group">
						<div class="col-md-4 col-md-offset-4">
							<select name="country" id="country" class="form-control">
								<option value="0">Select</option>
								<cfloop query="qCountry">
									<option value="#id#">
										#country#
									</option>
								</cfloop>
							</select>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-4 col-md-offset-4" id="state">
							<select name="state" class="form-control">
								<option value="">Select</option>
							 </select>
						</div>
					</div>
				</form>
			</div>
		</cfoutput>
	</body>