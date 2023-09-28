<html>
	<head>
		<title>Welcome</title>
	</head>
	<body>
		<h1>Student Information</h1>
		<form action = "#" method="GET">
			<h2>Enter Student Name :<input type = "text" name = "unm"></h2><br>
			<h2>Enter Student City :<input type = "text" name = "ct"></h2><br>
			<h2>Enter Student Contact No :<input type = "text" name = "cno"></h2><br>
			<input type = "submit" value = "Submit">
		</form>
	</body>
</html>
<%@ pageimport = " java.sql.*"  %>
	<% 
		String unm,ct,cno;
		unm = request.getParameter("unm");
		ct = request.getParameter("ct");
		cno = request.getParameter("cno");
	if((unm != null) && (ct != null) && (cno != null))
	{
	
		try
		{
			 
			Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/bca","root","");	 
			Statement st = cn.createStatement();
			st.execute("insert into stud(snm,scity,scno)values('"+unm+"','"+ct+"','"+cno+"')");
			ResultSet rs = st.getResultSet();
			out.println("<h2>Record Insert successfully....</h2>");
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}
	else
	{
		out.println("Please Insert record");
	}
	%>
