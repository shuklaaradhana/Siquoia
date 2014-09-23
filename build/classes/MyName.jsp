<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   String name = request.getParameter( "username" );
   session.setAttribute( "Name", name );
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<FORM METHOD=POST ACTION="MyName.jsp">
What's your name? <INPUT TYPE=TEXT NAME=username SIZE=20>
<INPUT TYPE=SUBMIT value="Login" >
<a href="Menu.jsp">login</a>

</body>
</html>