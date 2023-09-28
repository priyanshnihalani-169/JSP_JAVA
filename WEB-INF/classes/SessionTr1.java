import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
 
public class SessionTr1 extends HttpServlet {
	String unm;
	@Override	
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException, ServletException
    	{
         	res.setContentType("text/html");
        	PrintWriter out = res.getWriter();

        	out.println("<!DOCTYPE html><html>");
        	out.println("<head>");
        	out.println("<title>Set Session Demo</title>");
        	out.println("</head>");
        	out.println("<body>");
	
		HttpSession s1 = req.getSession(false);
		unm = (String)s1.getAttribute("uname");
		out.println("<h1>Welcome To"+unm+"</h1>");
		
        	out.println("</body>");
        	out.println("</html>");
    	}
}



