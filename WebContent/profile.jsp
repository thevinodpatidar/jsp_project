
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<%
String uid=(String)session.getAttribute("userid");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","");
System.out.println("Connected to Database");
PreparedStatement pst=con.prepareStatement("select * from user_table where userid=?");
pst.setString(1,uid);
ResultSet rs=pst.executeQuery();
if(rs.next()) {
	out.println("<table align=\"center\" border=\"0px\" cellpadding=\"2\" cellspacing=\"9\">");
do {
		String id=rs.getString("userid");
		String name=rs.getString("name");
		String ct=rs.getString("city");
		String em=rs.getString("email");
		double sal=rs.getDouble("salary");
		out.println("<tr><td>User Id</td><td>"+id+"</td></tr>");
		out.println("<tr><td>Name</td><td>"+name+"</td></tr>");
		out.println("<tr><td>City</td><td>"+ct+"</td></tr>");
		out.println("<tr><td>Email</td><td>"+em+"</td></tr>");
		out.println("<tr><td>Salary</td><td>"+sal+"</td></tr>");
		out.println("<tr><td><button type=\"submit\"><a href=\"edit.jsp?uid="+uid+"\">Edit</button>");
	}while(rs.next());
	out.print("</table>");
}
pst.close();
con.close();

%>
</body>
</html>