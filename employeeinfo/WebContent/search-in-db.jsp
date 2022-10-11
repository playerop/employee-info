<%@ page import="java.sql.*" %>
<html>
<head>
<style>
table{
border:1px solid black;
}
	th{
		text-align:left;
	}
</style>
</head>
<body>
<%
String id=request.getParameter("id");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advjava","root","mysql");
	String query=("select * from employeedetails where eid=?");
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,id);
	ResultSet rst=ps.executeQuery();
	if(rst.next())
	{
		%>
		<table>
		<tr>
			<th>Employee Id</th><td><%=rst.getString(1) %></td>
		</tr>
		<tr>
			<th>Employee name</th><td><%=rst.getString(2) %></td>
		</tr>
		<tr>
			<th>Employee department</th><td><%=rst.getString(3) %></td>
		</tr>
		<tr>
			<th>Employee salary</th><td><%=rst.getString(4) %></td>
		</tr>
		</table>
		<%
		return;
	}
	
	 %>
	 <jsp:include page="search-in-browser.jsp" />
	 <h2>Employee with id <%=rst.getString(id) %> does not exist</h2>
	 <%
}
catch(Exception ex)
{
	out.println(ex);
}
%>

</body>
</html>