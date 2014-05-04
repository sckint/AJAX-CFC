
<!--- default block --->

<cfset loadCountry() />

<!--- Function Block --->

<cffunction name="loadCountry" hint="I Load Country Details">
	<!--- Your datasource needs to be specified here --->
	<cfquery name="qCountry" datasource="datasource">
		DECLARE @MyTableVar table(
	   		id int,
	    	country varchar(100)
		);

		INSERT INTO @MyTableVar VALUES (1,'INDIA');
		INSERT INTO @MyTableVar VALUES (2,'RUSSIA');
		INSERT INTO @MyTableVar VALUES (3,'USA');

		SELECT * FROM @MyTableVar
	</cfquery>
</cffunction>	