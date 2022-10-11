<html>
<body>
<form action="insert-in-db.jsp" method="post">
<table>
<tr><th colspan="2">Insert Customer Info</th></tr>
	<tr>
		<td>Enter Customer id:</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>Enter Customer name:</td>
		<td><input type="text" name="naam"></td>
	</tr>
	<tr>
		<td>Select Customer department:</td>
		<td>
			<select name="department">
				<option disabled>Select department</option>
				<option>HR</option>
				<option>Sales</option>
				<option>Marketing</option>
				<option>Manager</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>Enter Customer salary:</td>
		<td><input type="text" name="vetan"></td>
	</tr>
	<tr>
		<td>
		<button>Save record</button>
		</td>
	</tr>
</table>
</form>
</body>
</html>