<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
Strig email=session.getAttribute("email").tostring();
String status="processing";
try
{
	Connection con=ConnnectionProvider.getCon()
	PreparedStatement ps=con.prepareStatement("update cart set status=? where email=? and status='bill'");
    ps.serString(1,status);
    ps.setString(2,email);
    ps.executeUpdate();
    response.sendRedirect("home.jsp");
}
catch(Exception e)
{
	System.out.println(e);
	}
%>