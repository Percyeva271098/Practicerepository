<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String url=request.getParameter("url");
String price=request.getParameter("price");
String active=request.getParameter("active");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update product set name='"+name+"',url='"+url+"',price='"+price+"',active='"+active+"',where id='"+id+"'");
	if(active.equals("No"))
	{
		st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
	}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>