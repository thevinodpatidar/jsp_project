
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<%
session.invalidate();
response.sendRedirect("login.jsp");
%>
</body>
</html>