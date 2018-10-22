
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<%
String id=request.getParameter("uid");
String nm=request.getParameter("nm");
String em=request.getParameter("em");
String ct=request.getParameter("ct");
String s=request.getParameter("sal");
double sal=Double.parseDouble(s);
Class.forName("com.mysql.jdbc.Driver");		
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","");
PreparedStatement pst=con.prepareStatement("update user_table set name=?,city=?,email=?,salary=? where userid=?");


pst.setString(1, nm);
pst.setString(2, ct);
pst.setString(3, em);		
pst.setDouble(4, sal);
pst.setString(5, id);
int r=pst.executeUpdate();
if(r!=0){
	out.println("<h1 align=\"center\">Data Updated Successfully<h1>");			
	
//	out.println("<p><a href=\"showAll\">ShowAll</a></p>");
}
else{
	out.println("<h1>Error in Updatation</h1>");
	
}
pst.close();
con.close();
%>
</body>
</html>