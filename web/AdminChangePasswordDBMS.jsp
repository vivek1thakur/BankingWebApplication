<%@include file="DBCON.jsp" %>
<html>

    <body>
        Welcome <%=session.getAttribute("login_id")%><br> Name:- <%=session.getAttribute("login_name")%>login page
         
        change password DBMS page
        <%
            String oldpassword = request.getParameter("oldpass");
            String newpassword = request.getParameter("newpass");
            String confirmpassword = request.getParameter("cnpass");
            
            out.println(oldpassword);
            out.println(newpassword);
            out.println(confirmpassword);
            
            try
            {
                String passchangequery="select * from account where accno='"+session.getAttribute("login_id")+"'";
                Statement smt=con.createStatement();
                ResultSet rs=smt.executeQuery(passchangequery);
                
                int count=0;
                
                while(rs.next())
                {
                
                    //out.println(rs.getString(10));
                    if(oldpassword.equals(rs.getString(10)))
                    {
                        count++;
                        break;
                    }
                
                }
                if(count>0)
                {
                
                    out.println("Old Password Match....<br>");
                    if(newpassword.equals(confirmpassword))
                    {
                        out.println("both are same");
                        String updatepasswordquery="update account set password='"+newpassword+"'where accno='"+session.getAttribute("login_id")+"'";
                        
                        PreparedStatement pst=con.prepareStatement(updatepasswordquery);
                        
                        pst.executeUpdate();
                        out.println("Password Updated......");
                        out.println("<a href=Login.jsp> Now Login again </a>");
                    }
                }
                else
                {
                    out.println("Old Password Notmatch....");
                }
                out.println("");
                
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
            
    </body>
</html>
