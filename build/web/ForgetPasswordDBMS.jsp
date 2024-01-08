
<%@include file="DBCON.jsp" %>
<html>
    <body>
        Welcome <%=request.getParameter("login_id")%> Forget password DBMS page
        <%
            String loginId = request.getParameter("loginId");
            String custname = request.getParameter("custname");
          
            String MobileNo = request.getParameter("Mono");
            String NewPassword = request.getParameter("newpass");
            String ConfirmPassword = request.getParameter("conpass");
            out.println(loginId);
            out.println(custname);
           
            out.println(MobileNo);
            try {
                String passchanquery = "select * from account where accno='"+request.getParameter("loginId")+"'";
                Statement smt = con.createStatement();
                ResultSet rs1 = smt.executeQuery(passchanquery);
                int count = 0;
                while (rs1.next()) {
                    out.println(rs1.getString(2));
                    if(loginId.equals(rs1.getString(1)) && custname.equalsIgnoreCase(rs1.getString(2)) && Integer.parseInt(MobileNo)  ==  rs1.getInt(8)) 
                    {
                        count++;
                        break;
                    }
                }
                if(count > 0) {
                    out.println("All condition Match <br>");
                    if (NewPassword.equals(ConfirmPassword)) {
                        out.println("Both r same");
                        String updatepasswordquery1 = "update account set password='" + ConfirmPassword + "' where accno='" + request.getParameter("loginId") + "'";
                        PreparedStatement pst = con.prepareStatement(updatepasswordquery1);

                        pst.executeUpdate();
                        out.println("Password updated....");
                        out.println("<a href=Login.jsp>New Login</a> ");
                    }
                    else {
                    out.println("Both r  not same");
                }
                } 

            } catch (Exception e) {

            }


        %>
    </body>
</html>
