
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>checkLogin</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<%
String uid=request.getParameter("uid");
String pwd=request.getParameter("pwd");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","");
System.out.println("Connected to Database");
PreparedStatement pst=con.prepareStatement("select name from user_table where userid=? and password=?");
pst.setString(1,uid);
pst.setString(2,pwd);
ResultSet rs=pst.executeQuery();
if(rs.next()) {
	String name=rs.getString(1);
	session.setAttribute("userid",uid);
	session.setAttribute("uname",name);
	response.sendRedirect("home.jsp");
}else {
	request.setAttribute("error","Invalid Id/Password");
	%>
	<jsp:forward page="login.jsp"></jsp:forward>
	<% 
}
	pst.close();
	con.close();
	%>
</body>
</html>