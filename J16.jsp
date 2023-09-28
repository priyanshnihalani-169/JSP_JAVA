 
<html>
	<head>
		<title> Example of Error Page</title>
	</head>
	<body>
		<h1> J16</h1>
		<%
			out.println("<br><b>Roll No ::</b> " +request.getParameter("rno"));
			out.println("<br><b>Name :: </b>" +request.getParameter("nm"));
			out.println("<br><b>City :: </b>" +request.getParameter("ct"));
		%>		
	</body>
</html>
  
