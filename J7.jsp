<html>
<head>
	<title>First JSP Page</title>
</head>	
<body>
	<%= "<h1> The sum is "+(Integer.parseInt(request.getParameter("a"))+Integer.parseInt(request.getParameter("b")))+"</h1>"%>
</body>
</html>

 