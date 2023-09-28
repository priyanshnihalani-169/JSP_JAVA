import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
 
public class Address extends HttpServlet {

	@Override	
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException, ServletException
    	{
         	res.setContentType("text/html");
        	PrintWriter out = res.getWriter();

        	out.println("<!DOCTYPE html><html>");
        	out.println("<head>");
        	out.println("<title>First servlet</title>");
        	out.println("</head>");
        	out.println("<body>");
		 
        	out.println("<h1>Devsani Priya Vinodbhai</h1>");
		out.println("<h2>8,Premdip App.</h2>");
		out.println("<h2>Ambika Chowk</h2>");
		out.println("<h2>Jungadh - 362001</h2>");
        	out.println("</body>");
        	out.println("</html>");
    	}
}



