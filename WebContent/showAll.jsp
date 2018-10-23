
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show All</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<%
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","");
System.out.println("Connected to Database");
PreparedStatement pst=con.prepareStatement("select * from user_table");
ResultSet rs=pst.executeQuery();
if(rs.next()) {
	out.println("<br><br>");
	out.println("<table border=\"1\" align=\"center\" cellpadding=\"5\">");
	do {
		String id=rs.getString("userid");
		String name=rs.getString("name");
		String ct=rs.getString("city");
		out.println("<tr><td>"+id+"</td><td>"+name+"</td><td>"+ct+"</td><td><a href=\"delete.jsp?uid="+id+"\">Delete</a></td><td><a href=\"details.jsp?uid="+id+"\">More Details</a></td><td><a href=\"edit.jsp?uid="+id+"\">Update Details</a></td></tr>");
	}while(rs.next());
	out.println("</table>");
}else {
	out.println("<h2 width=\"200px\">Sorry !</h2>");
}
pst.close();
con.close();
%>
</body>
</html>