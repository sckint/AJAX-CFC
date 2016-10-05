<cfcomponent name="loadState">

	<cffunction name="state_load" hint="I Load State according to Country ID" access="remote">
		<cfargument name="countryId" required="yes">
		<cfsetting SHOWDEBUGOUTPUT="no">
	<!--- Your datasource needs to be specified here --->
	<cfquery name="qState" datasource="datasource">
		<!--- Temporary Table Inserted --->
		
		DECLARE @MyCountry table(
	   		id int,
	    	country varchar(100)
		);

		INSERT INTO @MyCountry VALUES (1,'INDIA');
		INSERT INTO @MyCountry VALUES (2,'RUSSIA');
		INSERT INTO @MyCountry VALUES (3,'USA');
		INSERT INTO @MyCountry VALUES (4,'Canada');

		DECLARE @MyStates table(
	   		id int,
	   		state varchar(100),
	    	countryId int
		);

		INSERT INTO @MyStates VALUES (1,'New Delhi',1);
		INSERT INTO @MyStates VALUES (2,'Maharastra',1);
		INSERT INTO @MyStates VALUES (3,'Kerala',1);
		
		INSERT INTO @MyStates VALUES (4,'Washington',3);
		INSERT INTO @MyStates VALUES (5,'California',3);

		INSERT INTO @MyStates VALUES (6,'Moscow',2);

		select * from @MyStates where countryId = 
		<cfqueryparam value="#arguments.countryId#" cfsqltype="cf_sql_int">
		
	</cfquery>
	<cfoutput>
		<select name="state" class="form-control">
			<option value="">Select a State</option>
			<cfloop query="qState">
				<option value="#id#">#state#</option>
			</cfloop>
		</select>
	</cfoutput>
	<cfabort>
	</cffunction>
	
</cfcomponent>