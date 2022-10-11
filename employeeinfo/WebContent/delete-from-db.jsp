<%@ page import="java.sql.*"%>
<html>
<body>
<%
String id=request.getParameter("id");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/advjava","root","mysql");
	String query=("delete from employeedetails where eid=?");
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1,id);
	int num=ps.executeUpdate();
	if(num>=1)
	{
		%>
		<jsp:include page="delete-by-id.jsp" />
		<h2>Employee with id <%=id%> has been deleted</h2>
		<%
		return;
	}
	
	 %>
	 <jsp:include page="delete-by-id.jsp" />
	 <h2>Employee with id <%=id %> does not exist</h2>
	 <%
}
catch(Exception ex)
{
	out.println(ex);
}
%>

</body>
</html>