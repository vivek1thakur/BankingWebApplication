<%@page import="java.util.Random"%>
<%@include file="DBCON.jsp"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Account Registration</title>
    <!-- Link the CSS stylesheet -->
    <link rel="stylesheet" href="style.css">
  </head>
    <body>
        
        <%
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
        %>
    </body>
</html>
