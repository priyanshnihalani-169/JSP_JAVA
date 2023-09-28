import java.io.*;import javax.servlet.*;
import javax.servlet.http.*;
 
public class InitParam extends HttpServlet {
	int count;
	public void init(ServletConfig c1)throws  ServletException
	{
		count = 0;
	}

	public void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException, ServletException
    	{
         	res.setContentType("text/html");
        	PrintWriter out = res.getWriter();

        	out.println("<!DOCTYPE html><html>");
        	out.println("<head>");
        	out.println("<title>First servlet</title>");
        	out.println("</head>");
        	out.println("<body>");
		count++;
		out.println("<h1>Count is ::"+count+"</h1>");
        	 
		out.println("<h1>City : Junagadh</h1>");
        	out.println("</body>");
        	out.println("</html>");

		getServletConfig().getServletContext().getRequestDispatcher("/Address").include(req,res);
    	}
}



