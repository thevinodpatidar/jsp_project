
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<h1 align="center">Registration</h1>
<form action="doRegister.jsp" method="post">
<table align="center" border="0" cellpadding="2" cellspacing="4">
<tr>
  <td>Enter User ID :</td>
  <td width="152">
  <input type="text" name="uid" size="20"></td>
  </tr>
 <tr>
   <td>Name :</td>
   <td width="152">
   <input type="text" name="nm"size="20"></td>
   </tr>
 <tr>
   <td>City :</td>
   <td width="152">
   <input type="text" name="ct" size="20"></td>
   </tr> 
 <tr>
   <td>Email :</td>
   <td width="152">
   <input type="text" name="em" size="20"></td>
   </tr> 
 <tr>
   <td>Salary :</td>
   <td width="152">
   <input type="text" name="sal" size="20"></td>
   </tr>   
 <tr>  
   <td>Enter Password :</td>
   <td width="152">
   <input type="password" name="pwd" size="20"></td>
   </tr>
  <tr>
   <td width="123">&nbsp;</td>
   <td width="152">
   <input type="submit" value="Register"></td>
   </tr>
  <tr>
    <td colspan="2"><button><a href="login.jsp">Login</a></button></td>
    </tr>
</table>
</form>
</body>
</html>