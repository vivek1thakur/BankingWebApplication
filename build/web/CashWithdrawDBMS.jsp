<%@include file="DBCON.jsp" %>
<html>
    
    <body>
        <%
        try
        {
            int lastbal=0;
            String viewquerylast="select * from transactionbank";
            Statement stmt1=con.createStatement();
            ResultSet rs2=stmt1.executeQuery(viewquerylast);
            
            while(rs2.next())
            {
                lastbal=rs2.getInt(7);
            }    
            
            String accno=request.getParameter("accno");
            String refname=request.getParameter("refname");
            String dot=request.getParameter("dot");
            String trid=request.getParameter("trid");
            int wthamount=Integer.parseInt(request.getParameter("wthamt"));
            
            String wthinsertquery="insert into transactionbank values(?,?,?,?,?,?,?);";
            
            PreparedStatement pst1=con.prepareStatement(wthinsertquery);
            
            pst1.setString(1, accno);
            pst1.setString(2, refname);
            pst1.setString(3, dot);
            pst1.setString(4, trid);
             pst1.setInt(5, 0); 
              pst1.setInt(6, wthamount); 
             pst1.setInt(7, (lastbal-wthamount));  
             
            pst1.executeUpdate();
            
            
            out.println("Transaction Successful Cash Withdraw");
            
            
              int lastbalcustomer = 0;
                String viewquerylastcustomer = "select * from "+accno;
                Statement stmt2 = con.createStatement();
                ResultSet rs3 = stmt2.executeQuery(viewquerylastcustomer);
                while (rs3.next()) {
                    lastbalcustomer = rs3.getInt(7);
                }
                String depositequerycustomer = "insert into "+accno+" values(?,?,?,?,?,?,?);";

                PreparedStatement pst2 = con.prepareStatement(depositequerycustomer);

                pst2.setString(1, accno);
                pst2.setString(2, refname);
                pst2.setString(3, dot);
                pst2.setString(4, trid);
                pst2.setInt(5,0);
                pst2.setInt(6,wthamount );
                pst2.setInt(7, (lastbal -wthamount));

                pst2.executeUpdate();
                out.println("Cash Withdraw in customer "+accno+" table successffullyy....");
         
        }
        catch(Exception e)
        {
            out.println("Transaction failed... money not deducted"+e);
        }
        
        %>
        
    </body>
</html>
