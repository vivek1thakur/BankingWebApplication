<%@include  file="DBCON.jsp" %>
<html>
    <body>
        Welcome<%=session.getAttribute("loginid")%> Login Page
        change password DBMS page
        <%
            String oldpassword = request.getParameter("oldpass");
            String newpassword = request.getParameter("newpass");
            String confirmpassword = request.getParameter("cnpass");

            out.println(oldpassword);
            out.println(newpassword);
            out.println(confirmpassword);

            try {
                String passchanquery = "select * from account where accno='" + session.getAttribute("loginid") + "'";
                Statement smt = con.createStatement();
                ResultSet rs = smt.executeQuery(passchanquery);
                int count = 0;
                while(rs.next())
                {
                    //out.println(" "+rs.getString(10));
                    if(oldpassword.equals(rs.getString(10)))
                    {
                        count++;
                        break;
                    }
                }
                if(count>0)
                {
                    out.println("Old Password Match <br>");
                    if(newpassword.equals(confirmpassword))
                    {
                        out.println("Both r same");
                        String updatepasswordquery = "update account set password='"+confirmpassword+"' where accno='"+session.getAttribute("loginid") +"'";
                        PreparedStatement pst = con.prepareStatement(updatepasswordquery);
                        
                        pst.executeUpdate();
                        out.println("Password updated....");
                        out.println("<a href=Login.jsp>New Login</a> ");
                    }
                    else
                    {
                        out.println("Both rnot same");
                    }
                }
                else
                {
                    out.println("Old Password Not Match");
                }
                out.println(" ");
            } catch (Exception e) {
                out.println(e);
            }

        %>
    </body>
</html>
