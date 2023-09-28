<%@page errorPage="error.jsp" %>
<html>
	<head>
		<title> Example of Error Page</title>
	</head>
	<body>
		<h1> Login</h1>
		<form action = "#" method="GET">
			<h2>Enter UserName :<input type = "text" name = "unm" ></h2><br>
			<h2>Enter Password :<input type = "text" name = "pass" ></h2><br>
			<input type = "submit" value = "Login">
		</form>
	</body>
</html>
 <%
	if((request.getParameter("unm") != null) && (request.getParameter("pass") != null))  
	{
		if((request.getParameter("unm").equals("admin")) && (request.getParameter("pass").equals("admin")))
		{%>
			 <jsp:forward page = "J1.jsp"/>
		<%}
		else
		{%>
			 <jsp:include page = "error.jsp"/>
		<%}
	}
	else
	{
		out.println("Field are Null");
	}
%>
