

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class getcookie
 */
@WebServlet("/getcookie")
public class getcookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getcookie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		 
		/**
		Cookie[] ck=request.getCookies();  
        response.addCookie(ck);
        */
        request.getRequestDispatcher("loginsuccess.jsp").include(request, response);  
        /**
        Cookie ck[]=request.getCookies();  
      String uname=ck[0].getValue();
      */   try {
    	  response.setContentType("text/html");
  		
  		
  		
  		PrintWriter out=response.getWriter();  
            Cookie c1[]=request.getCookies();
            
            out.print("hello  "+c1[1].getValue());
            out.print("<b>Welcome to krypto kodes Profile</b>");  
            
            String uname=c1[1].getValue();
            out.print("<br>Welcome, "+ uname);
            out.close();
            
	}catch(Exception e){System.out.println(e);}  }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
