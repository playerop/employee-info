<%@ page import="java.sql.*" %>
<html>
<body>
<!-- Object is created by web server and we will get value from request object(of 
httpServletRequest created by web server) by calling getParameter method (below)-->
<%
String v1=request.getParameter("id");
String v2=request.getParameter("naam");
String v3=request.getParameter("department");
String v4=request.getParameter("vetan");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advjava","root","mysql");
	String query="insert into employeedetails values(?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,v1);
	ps.setString(2,v2);
	ps.setString(3,v3);
	ps.setString(4,v4);
	ps.executeUpdate();
	%>
	<h1>Recored has been successfully inserted</h1>
	<%
}
catch(Exception ex)
{
	out.println(ex);
}
%>
</body>
</html>