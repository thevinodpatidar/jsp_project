
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<%
String err=(String)request.getAttribute("error");
if(err!=null){
%>
<p align="center"><font color="#F00"><%=err%></font></p>
<%} %>
<form action="checkLogin.jsp">
<table align="center" border="0" cellpadding="2" cellspacing="4">
<tr>
  <td>Enter User ID</td>
  <td width="152">
  <input type="text" name="uid" size="20"></td>
  </tr>
 <tr>
   <td>Enter Password</td>
   <td width="152">
   <input type="password" name="pwd" size="20"></td>
   </tr>
  <tr>
   <td width="123">&nbsp;</td>
   <td width="152">
   <input type="submit" value="Login"></td>
   </tr>
  <tr>
    <td colspan="2"><button><a href="register.jsp">Register</a></button></td>
    </tr>
</table>
</form>
</form>
</body>
</html>