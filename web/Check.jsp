<%@include file="DBCON.jsp" %>


<html>

    <body>
        <%
            String role=request.getParameter("role");
            String loginid=request.getParameter("loginid");
            String password=request.getParameter("loginpassword");
            String cname=null;
            String name=request.getParameter("name");
             
            session.setAttribute("login_id",loginid);
             session.setAttribute("login_Name",name);
            
            try
            {
                String namequery = "select * from account where accno = '"+loginid+"'";
                Statement stmt1 = con.createStatement();
                ResultSet rs = stmt1.executeQuery(namequery);
                
                while(rs.next())
                {
                    out.println(cname=rs.getString(2));
                }
                
                session.setAttribute("login_name", cname);
                
                String viewaccountquery="select * from account";
                Statement stmt=con.createStatement();
                ResultSet rs1=stmt.executeQuery(viewaccountquery);
                
                int count=0;
                
                while(rs1.next())
                {
                    //out.println(" "+rs1.getString(1));
                    //out.println(" "+rs1.getString(9));
                    //out.println(" "+rs1.getString(10));
                    //out.println("<br>");
                
                if(role.equalsIgnoreCase(rs1.getString(9)) && loginid.equalsIgnoreCase(rs1.getString(1)) && password.equals(rs1.getString(10)))
                {
                    count++;
                    break;
                }
                }
                 if(count>0)
                 {
                     if(loginid.equals("A001"))
                     {
                         out.println("ADMIN login success......");
                         response.sendRedirect("AdminLogin.jsp");
                     }
                     else
                     {
                     out.println("Customer login success......");
                     response.sendRedirect("CustomerLogin.jsp");
                     }
               
                 }
                 
                 else
                 {
                       RequestDispatcher disp=request.getRequestDispatcher("Login.jsp");
                       disp.include(request, response);
                       out.println("Login Failed....");
                 }
        }    
            catch(Exception e)
            {
                out.println(e);
            }
           
        %>
       
    0
    </body>
</html>
