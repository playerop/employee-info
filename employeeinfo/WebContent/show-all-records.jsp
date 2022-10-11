<%@ page import="java.sql.*" %>
<html>
<body>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advjava","root","mysql");
String query=("select * from employeedetails");
Statement st=con.createStatement();
ResultSet rst=st.executeQuery(query);
%>
<table>
	<tr>
		<th>Employee Id</th>
		<th>Employee name</th>
		<th>Employee department</th>
		<th>Employee salary</th>
	</tr>
	<%
	while(rst.next())
	{	
	%>
		<tr>
			<td><%=rst.getString(1) %></td>
			<td><%=rst.getString(2) %></td>
			<td><%=rst.getString(3) %></td>
			<td><%=rst.getString(4) %></td>
		</tr>
	<%
	}
	 %>
	</table>
<% 
}
catch(Exception ex)
{
	out.println(ex);
}
%>
</body>
</html>