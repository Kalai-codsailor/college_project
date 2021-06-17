

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;  


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1 ;
    private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");
        LoginBean loginBean = new LoginBean();
		loginBean.setUsername(uname);
        loginBean.setPassword(password);
        
       
        try {
            if (loginDao.validate(loginBean)) {
            	response.setContentType("text/html");  
                PrintWriter out = response.getWriter();  
                HttpSession session = request.getSession();
                 session.setAttribute("uname",uname);
                 out.print(uname);
                 Cookie c1= new Cookie("uname",uname);
                 
                 response.addCookie(c1);
                   response.sendRedirect("index2.jsp");
                  
                   out.print("<script type=\"text/javascript\">");
                   out.println("alert('login as customer');");
                   
                   
                   /**
                   Cookie ck= new Cookie("uname",request.getParameter("uname"));
                   response.addCookie(ck);
                   */
                   
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("user", uname);
                response.sendRedirect("memberRegister.jsp");
                
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}