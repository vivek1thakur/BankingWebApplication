<%@include file="DBCON.jsp" %>
<html>
    <body>
        Welcome <%=session.getAttribute("login_id")%><br> Name:- <%=session.getAttribute("login_name")%><br>
        <%
            try
            {
                int lastbal=0;
                String viewquery = "select * from "+session.getAttribute("login_id");
                Statement stmt = con.createStatement();
                ResultSet rs2 = stmt.executeQuery(viewquery);
                
                while(rs2.next())
                {
                    lastbal = rs2.getInt(7);
                }
                
                String accno = request.getParameter("accno");
                String refname = request.getParameter("refname");
                String dot = request.getParameter("dot");
                String trid = request.getParameter("trid");
                int depamount = Integer.parseInt(request.getParameter("depamt"));
//                int netbalance = Integer.parseInt(request.getParameter("netbal"));
                
                String depositquery = "insert into " +session.getAttribute("login_id")+" values(?,?,?,?,?,?,?);";
                
                PreparedStatement pst1 = con.prepareStatement(depositquery);
                
                pst1.setString(1, refname);
                pst1.setString(2, accno);
                pst1.setString(3, dot);
                pst1.setString(4, trid);
                pst1.setInt(5, 0);
                pst1.setInt(6,depamount);
                pst1.setInt(7, (lastbal-depamount));
                
                pst1.executeUpdate();
                
                out.println("Fund transfer from "+session.getAttribute("login_id")+"<br>");
                
                //-------------------------for customer-------------------------------//
                
                int lastbalcustomer=0;
                String viewquerycustomer = "select * from "+accno;
                Statement stmt1 = con.createStatement();
                ResultSet rs3 = stmt1.executeQuery(viewquerycustomer);
                
                while(rs3.next())
                {
                    lastbalcustomer = rs3.getInt(7);
                }
                
                String depositquerycustomer = "insert into "+accno+" values(?,?,?,?,?,?,?);";
                
                PreparedStatement pst2 = con.prepareStatement(depositquerycustomer);
                
                pst2.setString(1, accno);
                pst2.setString(2, refname);
                pst2.setString(3, dot);
                pst2.setString(4, trid);
                pst2.setInt(5, depamount);
                pst2.setInt(6, 0);
                pst2.setInt(7, (depamount+lastbalcustomer));
                
                pst2.executeUpdate();
                
                out.println("<br>Cash Transfer in "+accno+" Successfully....");
            }
            catch(Exception e)
            {
                out.println("Cash Transfer Not Success!!!!!"+e);
            }
        %>
    </body>
</html>