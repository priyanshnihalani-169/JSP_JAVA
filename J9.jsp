<html>
<head><title></title></head>
<body>
	<form name = "f1" method="post" action = "J9.jsp">
		Enter Starting Number : <input type = "text" name = "n1" ><br>
		Enter Ending Number :<input type = "text" name = "n2" ><br>
		<br>
		<input type = "submit" value="Run" >
	</form>
	<% 
		String inp1 = request.getParameter("n1");
		String inp2 = request.getParameter("n2");
		
		if((inp1 != null) && (inp2 != null))
		{
			int x = Integer.parseInt(inp1);
			int y = Integer.parseInt(inp2);
		
			for(int i=x;i<=y;i++)
			{
				out.println("<br>Number is ::"+i);
			}
		}
	%>
</body>
 </html>