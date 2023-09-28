<html>
<head><title>Arithmethic Operation</title></head>
<body>
	<form name = "f1" method="post" action = "J8.jsp">
		Enter First Number : <input type = "text" name = "n1" /><br>
		Enter Second Number :<input type = "text" name = "n2" /><br>
		<br>
		<input type = "submit" value="Find Max" />
	</form>
	<% 
		String inp1 = request.getParameter("n1");
		String inp2 = request.getParameter("n2");
		
		if((inp1 != null) && (inp2 != null))
		{
			int x = Integer.parseInt(inp1);
			int y = Integer.parseInt(inp2);
		
			if(x  > y)
			{
				out.println("<br>First Number is MAX");
			}
			else
			{
				out.println("<br>Second Number is MAX");
			}
		}
	%>
</body>
 </html>