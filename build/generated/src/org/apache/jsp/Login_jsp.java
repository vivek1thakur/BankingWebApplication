package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("  <title>Global Bank - Welcome</title>\n");
      out.write("  <!-- Add your CSS stylesheet here -->\n");
      out.write("    <a href=\"Login.jsp\"></a>\n");
      out.write("  <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("</head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("    <!-- Add your bank logo and navigation links here -->\n");
      out.write("    <img src=\"logo.jpg\" alt=\"Bank Logo\">\n");
      out.write("    <nav>\n");
      out.write("      <ul>\n");
      out.write("        <li><a href=\"index.html\">Home</a></li>\n");
      out.write("        <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("        <li><a href=\"about.jsp\">About Us</a></li>\n");
      out.write("        <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </nav>\n");
      out.write("  </header>\n");
      out.write("        <h1 style=\"color:red\"  align=\"center\">\n");
      out.write("             Login your account\n");
      out.write("        </h1>\n");
      out.write("        <main>\n");
      out.write("            <section class=\"hero\">\n");
      out.write("                       \n");
      out.write("        <form action=\"Check.jsp\" method=\"post\" >\n");
      out.write("            <table border=\"2\" bgcolor=\"white\" bordercolor=\"red\" align=\"center\" >\n");
      out.write("                <tr>\n");
      out.write("                    <td> Select Role</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"role\">\n");
      out.write("                            <option value=\"Select\">Select</option>\n");
      out.write("                            <option value=\"admin\">ADMIN</option>\n");
      out.write("                            <option value=\"customer\">CUSTOMER</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        LoginID\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"loginid\">\n");
      out.write("                    </td>\n");
      out.write("                    </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td><input type=\"text\" name=\"loginpassword\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><input type=\"submit\"  name=\"b1\" value=\"login\"></td>\n");
      out.write("                     <td><input type=\"reset\" name=\"b2\" value=\"reset\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td><a href=\"ForgetPassword.jsp\"> Forget password</a></td>\n");
      out.write("                </tr>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("            </table>\n");
      out.write("       </form>\n");
      out.write("               \n");
      out.write("            </section>\n");
      out.write("        </main>\n");
      out.write("        <footer>\n");
      out.write("    <!-- Add footer content and links to important pages here -->\n");
      out.write("    <p>&copy; 2023 Global Bank. All rights reserved.</p>\n");
      out.write("    <ul>\n");
      out.write("      <li><a href=\"PrivacyPolicy.jsp\">Privacy Policy</a></li>\n");
      out.write("      <li><a href=\"TandC.jsp\">Terms of Service</a></li>\n");
      out.write("      <!--<li><a href=\"#\">Accessibility</a></li>-->\n");
      out.write("    </ul>\n");
      out.write("  </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
