
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
 
public class CookieDemo extends HttpServlet {
	@Override	
	public void service(HttpServletRequest req,HttpServletResponse res)throws IOException, ServletException
    	{
         	res.setContentType("text/html");
		Cookie c1 = new Cookie("unm","Uday");
		res.addCookie(c1);
        	PrintWriter out = res.getWriter();
		out.println("Just Received Cookie");
        	 
    	}
}



