import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
 
public class GetCookie extends HttpServlet {
	@Override	
	public void servies(HttpServletRequest req,HttpServletResponse res)throws IOException, ServletException
    	{
         	res.setContentType("text/html");
        	PrintWriter out = res.getWriter();

        	out.println("<!DOCTYPE html><html>");
        	out.println("<head>");
        	out.println("<title>First servlet</title>");
        	out.println("</head>");
        	out.println("<body>");
		 Cookie c1[] = req.getCookies();

		for(int i=0;i<c1.length;i++)
		{
			out.println("<h2>Welcome To :"+c1[i].getName()+"</h2>");
			out.println("<h2>Age : "+c1[i].getValue()+"</h2>");
		}
        	out.println("</body>");
        	out.println("</html>");
    	}
}



