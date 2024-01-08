package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.time.LocalDate;;

public final class NewAccount_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    \n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>New Account Registration</title>\n");
      out.write("    <!-- Link the CSS stylesheet -->\n");
      out.write("   <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("  </head>\n");
      out.write("    <body>\n");
      out.write("      \n");
      out.write("        <header>\n");
      out.write("    <!-- Add your bank logo and navigation links here -->\n");
      out.write("    <img src=\"logo.jpg\" alt=\"Bank Logo\">\n");
      out.write("    <nav>\n");
      out.write("      <ul>\n");
      out.write("        <li><a href=\"index.html\">Home</a></li>\n");
      out.write("        <li><a href=\"Login.jsp\">Login</a></li>\n");
      out.write("        <li><a href=\"about.jsp\">About Us</a></li>\n");
      out.write("       \n");
      out.write("      </ul>\n");
      out.write("    </nav>\n");
      out.write("  </header>\n");
      out.write("            \n");
      out.write("<!--  HttpSession ssn = request.getSession(true);\n");
      out.write("       Integer accountCounter = (Integer) ssn.getAttribute(\"accountCounter\");\n");
      out.write("       if (accountCounter == null) {\n");
      out.write("           accountCounter = 1;\n");
      out.write("       } else {\n");
      out.write("           // Check if a specific account number is provided in the request\n");
      out.write("           String providedAccountNumber = request.getParameter(\"providedAccNo\");\n");
      out.write("           if (providedAccountNumber != null && !providedAccountNumber.isEmpty()) {\n");
      out.write("               accountCounter++;\n");
      out.write("           }\n");
      out.write("       }\n");
      out.write("       ssn.setAttribute(\"accountCounter\", accountCounter);-->\n");

 Integer accountCounter = (Integer) session.getAttribute("uniqueAccountCounter");
    if (accountCounter == null) {
        accountCounter = 1;
    } else {
        accountCounter++;
    }
    session.setAttribute("uniqueAccountCounter", accountCounter);
    
    // Generate the account number using a serial number format (e.g., ACC001, ACC002, ...)
    String accountNumber = String.format("ACC%03d", accountCounter);
   
    
      out.write("\n");
      out.write("   \n");
      out.write("            \n");
      out.write("            ");
  LocalDate aod = LocalDate.now(); 
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        <h2 style=\"color: #d40c15\" align=\"center\">New account Registration</h2>\n");
      out.write("    <main> \n");
      out.write("    \n");
      out.write("        <form action=\"NewAccountDBMS.jsp\" method=\"post\" >\n");
      out.write("            <table >\n");
      out.write("  \n");
      out.write("            \n");
      out.write("                <tr>\n");
      out.write("                     <td>Account Number</td>\n");
      out.write("                     <td><input type=\"text\" name=\"accno\" value=\"");
      out.print(accountNumber);
      out.write("\" readonly></td>\n");
      out.write("                     \n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>Customer Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"cname\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Father Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"cfname\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>DOB</td>\n");
      out.write("                    <td><input type=\"date\" name=\"cdob\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Gender</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"cgender\"> \n");
      out.write("                            <option value=\"Male\"> Male</option>\n");
      out.write("                            <option value=\"Female\">Female</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Account Opening Date</td>\n");
      out.write("                    <td><input type=\"text\" name=\"opdate\" value=\" ");
      out.print(aod);
      out.write("\" > </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Address</td>\n");
      out.write("                    <td><input type=\"text\" name=\"cadd\"></td>\n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("                <tr>\n");
      out.write("                    <td>CONTACT number</td>\n");
      out.write("                    <td><input type=\"text\" name=\"ccontactno\" ></td>\n");
      out.write("                </tr>\n");
      out.write("                   <tr>\n");
      out.write("                    <td>ROLE</td>\n");
      out.write("                    <td><select name=\"role\">\n");
      out.write("                            <option value=\"customer\">CUS</option>\n");
      out.write("                         <option value=\"ADMIN\">ADMIN</option></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>pa                  <td><input type=\"password\" name=\"password\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>SECURITY QUESTION</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"secques\">\n");
      out.write("                            <option value=\"mother name name\">mother Name</option>\n");
      out.write("                         <option value=\"Favourite sport\">Fav  Game</option>\n");
      out.write("                           <option value=\"School\">School Name</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("                    <td>Security Ans</td>\n");
      out.write("                    <td><input type=\"password\" name=\"secans\"></td>\n");
      out.write("                </tr>\n");
      out.write("                  \n");
      out.write("                <tr>\n");
      out.write("                    <td><input type=\"submit\"  name=\"b1\" value=\"Save\"></td>\n");
      out.write("                    <td><input type=\"reset\" name=\"b2\" value=\"Reset\"></td>\n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write(" \n");
      out.write("        </main>\n");
      out.write(" \n");
      out.write("   </body>\n");
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
