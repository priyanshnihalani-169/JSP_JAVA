 <%
	if(!request.getParameter("fno").equals("") && !request.getParameter("sno").equals("") )
	{
		int a  = Integer.parseInt(request.getParameter("fno"));
		int b =  Integer.parseInt(request.getParameter("sno"));
		int ans = a/b;
		out.println("Answer is ::"+ans);
	}
	else
	{
		out.println("Please Enter All Field.....");
	}
%>
