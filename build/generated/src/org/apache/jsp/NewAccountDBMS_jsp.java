package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Random;
import java.sql.*;

public final class NewAccountDBMS_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection con;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/DBCON.jsp");
  }

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

      out.write('\n');
      out.write("\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                String connectionUrl="jdbc:mysql://localhost:3306/GlobalBankingDB";
                String dbuser="root";
                String dbpass="root";
                
                con=DriverManager.getConnection(connectionUrl,dbuser,dbpass);
                
                out.println("conection success...");
                
            }
            catch(Exception e)
            {
                out.print("connection faild..."+e);
            }
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>New Account Registration</title>\n");
      out.write("    <!-- Link the CSS stylesheet -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("  </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");

           try {
//        String accno = request.getParameter("accno");
//        
//        // Check if the provided account number needs to be regenerated
//        if (accno == null || accno.isEmpty() || accno.equals("ACC00")) {
//            Integer accountCounter = (Integer) session.getAttribute("accountCounter");
//            if (accountCounter == null) {
//                accountCounter = 1;
//            } else {
//                accountCounter++;
//            }
//            accno = "ACC00" + accountCounter;
//        }
               String accno=request.getParameter("accno")  ;
                String cname=request.getParameter("cname");
                String cfname=request.getParameter("cfname");
                String cdob=request.getParameter("cdob");
                String cgender=request.getParameter("cgender");
                String opdate=request.getParameter("opdate");
                String cadd=request.getParameter("cadd");
                String ccontact=request.getParameter("ccontactno");
                String role=request.getParameter("role");
                String password=request.getParameter("password");
                String SQ =request.getParameter("secques");
                String SA =request.getParameter("secans");
                
                String accountinsertquery="insert into account values(?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement pst1=con.prepareStatement(accountinsertquery);
               
                pst1.setString(1, accno);
                pst1.setString(2, cname);
                pst1.setString(3, cfname);
                pst1.setString(4, cdob);
                pst1.setString(5, cgender);
                pst1.setString(6, opdate);
                pst1.setString(7, cadd);
                pst1.setString(8,ccontact);
                pst1.setString(9, role);
                pst1.setString(10, password);
                pst1.setString(11,SQ);
                pst1.setString(12,SA);

                    pst1.executeUpdate();
            out.println("<br>account created....");

            String customertable = "create table " + accno + "( accountnno varchar(20),ref varchar(20),dotrans date,transid varchar(20),depamount int ,wdrwamount int ,netbal int);";
            PreparedStatement pst2 = con.prepareStatement(customertable);
            PreparedStatement pst3 = con.prepareStatement(customertable);
            pst3.executeUpdate();
                
                out.println("customer "+accno+"  table created also");
                
                
            }
            catch(Exception e)
            {
                out.println("not insert .... account not created..."+e);  
            }
        
      out.write("\n");
      out.write("    </body>\n");
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
