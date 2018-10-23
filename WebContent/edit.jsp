
<%@page import="java.sql.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<%
String id=request.getParameter("uid");
Class.forName("com.mysql.jdbc.Driver");		
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","");
PreparedStatement pst=con.prepareStatement("select * from user_table where userid=?");

pst.setString(1, id);
ResultSet rs=pst.executeQuery();
if(rs.next()){					
	
		String name=rs.getString("name");
		String ct=rs.getString("city");
		String em=rs.getString("email");
		double sal=rs.getDouble("salary");
		
		out.println("<form action=\"update.jsp\" align=\"center\">");
		out.println("<input type=\"hidden\" name=\"uid\" value=\""+id+"\">");
						
		out.println("<table border=\"0\" align=\"center\" cellpadding=\"5\">");
		out.println("<tr><th>User id</th><td>"+id+"</td></tr>");
		out.println("<tr><th>Name</th><td><input type=\"text\" name=\"nm\" value=\""+name+"\"></td></tr>");
		out.println("<tr><th>City</th><td><input type=\"text\" name=\"ct\" value=\""+ct+"\"></td></tr>");
		out.println("<tr><th>Email</th><td><input type=\"text\" name=\"em\" value=\""+em+"\"></td></tr>");
		out.println("<tr><th>Salary</th><td><input type=\"text\" name=\"sal\" value=\""+sal+"\"></td></tr>");
		out.println("</table>");		
		out.println("<button type=\"submit\">Update</button>");
	out.println("</table>");
	out.println("</form>"); 
}else{
	out.println("<h2>Sorry! No Data Found</h2>");
		}
pst.close();
con.close();
%>
</body>
</html>