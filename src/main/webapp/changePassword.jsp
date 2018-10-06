<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(request.getAttribute("isValidUsername") != null && request.getAttribute("isValidUsername").equals("true")){
	request.setAttribute("isValidUsername", "false");
	out.print("<script>alert('Invalid Username')</script>");
}
%>
<form action="UpdatePassword" method="post">
Username:<input type="text" required name="username" placeholder="Enter username">
New Password:<input type="text" required name="newPassword" placeholder="Enter New Password">
<input type="submit" value="Submit" />
</form>


</body>
</html>