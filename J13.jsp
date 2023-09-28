<%@page errorPage="error.jsp" %>
<html>
	<head>
		<title> Example of Error Page</title>
	</head>
	<body>
		<h1> Arithmetic Example</h1>
		<form action = "#" method="GET">
			<h2>Enter First No :<input type = "text" name = "fno" ></h2><br>
			<h2>Enter Second No :<input type = "text" name = "sno" ></h2><br>
			<input type = "submit" value = "Get Answer">
		</form>
	</body>
</html>
 <%
	if(request.getParameter("fno") != null && request.getParameter("sno") != null)  
	{
		if(!request.getParameter("fno").equals("") && !request.getParameter("sno").equals(""))
		{
			int a  = Integer.parseInt(request.getParameter("fno"));
			int b =  Integer.parseInt(request.getParameter("sno"));
			int ans = a/b;
			out.println("Answer is ::"+ans);
		}
		else
		{
			out.println("Please Enter all Field");
		}
	}
	else
	{
		out.println("Field are Null");
	}
%>
