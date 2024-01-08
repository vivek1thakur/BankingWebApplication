<%@include file="DBCON.jsp" %>
<html>
    <body>
        <%
            String acno = request.getParameter("acno");
            String newpass = request.getParameter("newpass");
            String conpass = request.getParameter("conpass");
            
            String changepassword = "select * from account where accno = '"+acno+"'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(changepassword);
            
            int count=0;
            while(rs.next())
            {
                if(acno.equalsIgnoreCase(rs.getString(1)))
                {
                    count++;
                }
            }
            if(count>0)
            {
                if(newpass.equals(conpass))
                {
                    String setpassword = "update account set password= '"+newpass+"' where accno='"+acno+"'";
                    PreparedStatement pst = con.prepareStatement(setpassword);
                        
                        pst.executeUpdate();
                        
                        out.print("<br> your password is sucessfully change");
                }
            }
            else
            {
            
            }
        %>
    </body>
</html>