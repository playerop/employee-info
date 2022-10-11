<%@ page import="java.sql.*" %><html>
<body>
<form action="show-by-department.jsp" method="post">
	<select name="department">
	<option>--Select department--</option>
		<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advjava","root","mysql");
		String query="select distinct department from employeedetails";
		Statement st=con.createStatement();
		ResultSet rst=st.executeQuery(query);
		while(rst.next())
		{
		%>
			<option><%=rst.getString(1)%></option>
		<%
		}
		%>
	</select>
	<button>Show Records</button>
</form>
</body>
</html>