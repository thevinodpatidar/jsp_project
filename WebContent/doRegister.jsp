
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>doRegister</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<%
String id=request.getParameter("uid");
String nm=request.getParameter("nm");
String ct=request.getParameter("ct");
String em=request.getParameter("em");
String s=request.getParameter("sal");
double sal=Double.parseDouble(s);
String pwd=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","");
System.out.println("Connected to Database");
PreparedStatement pst=con.prepareStatement("insert into user_table(userid,name,city,email,password,salary) values(?,?,?,?,?,?)");
pst.setString(1,id);
pst.setString(2, nm);
pst.setString(3, ct);
pst.setString(4, em);
pst.setString(5, pwd);
pst.setDouble(6, sal);
int r=pst.executeUpdate();
if(r!=0) {
	out.println("<h1 align=\"center\">Registered Successfully</h1>");
	out.println("<h2 align=\"center\">With UserID: "+id+"</h2>");
	out.println("<p align=\"center\"><button><a href=\"register.jsp\">Register</a></button></p>");
	out.println("<p align=\"center\"><button><a href=\"login.jsp\">Login</a></button></p>");
}else {
	out.println("<h1>Error In Registration</h1>");
	out.println("<p><a href=\"register.jsp\">Register</a></p>");
}
pst.close();
con.close();
%>
</body>
</html>