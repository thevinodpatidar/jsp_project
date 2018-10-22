
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<%
String uid=request.getParameter("uid");

response.setContentType("text/html");

out.println("<html>");
out.println("<head><title>Login Servlet</title></head>");
out.println("<body>");
try {
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","");
	System.out.println("Connected to Database");
	PreparedStatement pst=con.prepareStatement("delete from user_table where userid=?");
	pst.setString(1,uid);
	int r=pst.executeUpdate();
	if(r>0) {
		out.println("<h2>User Deleted</h2>");
		out.println("<br><br>");
	}else {
		out.println("<h2>Sorry! Invalid UserID</h2>");
	}
	pst.close();
	con.close();
}catch(Exception e) {
out.println("Error "+e);
}
out.println("</body>");
out.println("</html>");
%>
</body>
</html>