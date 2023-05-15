package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import com.Model.Book;
import com.DAO.BookDAO;

public final class book_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>Book Store</title>\n");
      out.write("\n");
      out.write("        <!-- font awesome cdn link  -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\">\n");
      out.write("\n");
      out.write("        <!-- custom css file link  -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <!-- Icon -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <style>\n");
      out.write("        li a {\n");
      out.write("            font-size: 13px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        a i {\n");
      out.write("            font-size: 24px;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <!-- header section starts  -->\n");
      out.write("\n");
      out.write("        <header>\n");
      out.write("            <a href=\"#\" class=\"logo\"><i class=\"fa fa-book\"></i>Book Store</a>\n");
      out.write("            <div id=\"menu-bar\" class=\"fas fa-bars\"></div>\n");
      out.write("\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"home.jsp\">Home</a></li>\n");
      out.write("                <li><a href=\"book.jsp\">Books</a></li>\n");
      out.write("                <li><a href=\"aboutus.jsp\">About Us</a></li>\n");
      out.write("                <li><a href=\"contactus.jsp\">Contact Us</a></li>\n");
      out.write("                <li><a href=\"logout.jsp\">LogOut</a></li>\n");
      out.write("           </ul>\n");
      out.write("            \n");
      out.write("            <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath }", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/cart\"><i class=\"bi bi-bag\"></i></a>\n");
      out.write("        </header>\n");
      out.write("        \n");
      out.write("    <!-- Content -->\n");
      out.write("        <section class=\"menu\" id=\"menu\">\n");
      out.write("            <br><br><br><br>\n");
      out.write("\n");
      out.write("            <h1 class=\"heading\">Book List</h1>\n");
      out.write("            \n");
      out.write("            <div class=\"box-container\">\n");
      out.write("\n");
      out.write("                ");

                BookDAO bookDAO = new BookDAO();
                List<Book> listBook = bookDAO.selectAllBooks();
                for (Book book : listBook) {
                
      out.write("\n");
      out.write("                \n");
      out.write("                <div class=\"box\">\n");
      out.write("                    <span class=\"delete\"></span>\n");
      out.write("                    <span class=\"price\">RM ");
      out.print(book.getPrice());
      out.write("</span>\n");
      out.write("                    <img src=\"/Book_Store/image.jsp?id=");
      out.print(book.getId());
      out.write("\" alt=\"\">\n");
      out.write("                    <h3>\n");
      out.write("                        <a>");
      out.print(book.getTitle());
      out.write("</a> <!-- Book Title -->\n");
      out.write("                    </h3>\n");
      out.write("                    <a>");
      out.print(book.getAuthor());
      out.write("</a>\n");
      out.write("                    <div class=\"card-footer\">\n");
      out.write("                       \n");
      out.write("                        <a class=\"li-modal\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath }", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/cart?&action=buy&id=");
      out.print(book.getId());
      out.write("\"><button type=\"button\" class=\"btn btn-primary\" >\n");
      out.write("                            Buy\n");
      out.write("                        </button> </a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </section>\n");
      out.write("        <!-- End-Content -->\n");
      out.write("    </body>\n");
      out.write("</html>");
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
