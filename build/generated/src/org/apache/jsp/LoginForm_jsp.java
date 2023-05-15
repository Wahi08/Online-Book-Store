package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class LoginForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");

if(session.getAttribute("login")!=null) //check login session user not access or back to index.jsp page
{
	response.sendRedirect("welcome.jsp");
}

      out.write('\n');
      out.write('\n');

try
{
	Class.forName("com.mysql.jdbc.Driver"); //load driver
        String myURL = "jdbc:mysql://localhost/bookstore";
            Connection con = DriverManager.getConnection(myURL,"root","admin"); //create connection
	
	if(request.getParameter("btn_login")!=null) //check login button click event not null
        {	
		String email,password;
		
		email=request.getParameter("txt_email"); //txt_email
		password=request.getParameter("txt_password"); //txt_password
		
		PreparedStatement pstmt=null; //create statement
		
		pstmt=con.prepareStatement("SELECT email, password from customer where email=?"); //sql select query 
		pstmt.setString(1,email);
		
		ResultSet rs=pstmt.executeQuery(); //execute query and store in resultset object rs.
		
		if(rs.next())
		{
			String dbemail=rs.getString("email");
			String dbpassword=rs.getString("password");
			
			if(email.equals(dbemail) && password.equals(dbpassword))
			{
				session.setAttribute("login",dbemail); //session name is login and store fetchable database email address
				response.sendRedirect("home.jsp"); //after login success redirect to welcome.jsp page
			}
		}
		else
		{
			request.setAttribute("errorMsg","invalid email or password"); //invalid error message for email or password wrong
		}
		
		con.close(); //close connection	
	}
	
}
catch(Exception e)
{
	out.println(e);
}

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("\t<title>Login Form | Bookstore</title>\n");
      out.write("\n");
      out.write("\t<link rel=\"stylesheet\" href=\"login-register2.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"login-register.css\">\n");
      out.write("\t\n");
      out.write("\t<script>\n");
      out.write("\t\t\n");
      out.write("\t\tfunction validate()\n");
      out.write("\t\t{\n");
      out.write("\t\t\tvar email = document.myform.txt_email;\n");
      out.write("\t\t\tvar password = document.myform.txt_password;\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\tif (email.value == null || email.value == \"\") //check email textbox not blank\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\twindow.alert(\"please enter email ?\"); //alert message\n");
      out.write("\t\t\t\temail.style.background = '#00FFFF';\n");
      out.write("\t\t\t\temail.focus();\n");
      out.write("\t\t\t\treturn false;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\tif (password.value == null || password.value == \"\") //check password textbox not blank\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\twindow.alert(\"please enter password ?\"); //alert message\n");
      out.write("\t\t\t\tpassword.style.background = '#00FFFF'; \n");
      out.write("\t\t\t\tpassword.focus();\n");
      out.write("\t\t\t\treturn false;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t}\n");
      out.write("\t\t\t\n");
      out.write("\t</script>\n");
      out.write("\t\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <ul>\n");
      out.write("        <li><h2>BookStore</h2></li>\n");
      out.write("    </ul>\n");
      out.write("\n");
      out.write("    <div class=\"main-content\">\n");
      out.write("\n");
      out.write("        <form class=\"form-register\" method=\"post\" name=\"myform\" onsubmit=\"return validate();\">\n");
      out.write("\n");
      out.write("            <div class=\"form-register-with-email\">\n");
      out.write("\n");
      out.write("                <div class=\"form-white-background\">\n");
      out.write("\n");
      out.write("                    <div class=\"form-title-row\">\n");
      out.write("                        <h1>Login</h1>\n");
      out.write("                    </div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<p style=\"color:red\">\t\t\t\t   \t\t\n");
      out.write("\t\t\t\t\t");

					if(request.getAttribute("errorMsg")!=null)
					{
						out.println(request.getAttribute("errorMsg")); //error message for email or password 
					}
					
      out.write("\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t   \n");
      out.write("\t\t\t\t   </br>\n");
      out.write("\n");
      out.write("                    <div class=\"form-row\">\n");
      out.write("                        <label>\n");
      out.write("                            <span>Email</span>\n");
      out.write("                            <input type=\"text\" name=\"txt_email\" id=\"email\" placeholder=\"enter email\">\n");
      out.write("                        </label>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form-row\">\n");
      out.write("                        <label>\n");
      out.write("                            <span>Password</span>\n");
      out.write("                            <input type=\"password\" name=\"txt_password\" id=\"password\" placeholder=\"enter password\">\n");
      out.write("                        </label>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\t\t\t<input type=\"submit\" name=\"btn_login\" value=\"Login\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\t\t<a href=\"RegisterForm.jsp\" class=\"form-log-in-with-existing\">You Don't have an account? <b> Register here </b></a>\n");
      out.write("                <br><br> <br><br>\n");
      out.write("                <a href=\"AdminLoginForm.jsp\" class=\"form-log-in-with-existing\">Admin? <b> Click Here </b></a>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
