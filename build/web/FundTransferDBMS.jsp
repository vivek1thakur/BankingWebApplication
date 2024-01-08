<%@include file="DBCON.jsp"%>
<html>
    <body>
        <%
            try
            {
                int lastbal=0;
                String viewquerylast="select * from transactionbank";
                Statement stmt1= con.createStatement();
                ResultSet rs2=stmt1.executeQuery(viewquerylast);
                
                while(rs2.next())
                {
                    lastbal=rs2.getInt(7);
                }
                //out.println(lastbal);
                String accno=request.getParameter("accno");
                String refname=request.getParameter("refname");
                String dot=request.getParameter("dot");
                String trid=request.getParameter("trid");
                int depamount=Integer.parseInt(request.getParameter("depamt"));
                
                String depositequery="insert into transactionbank values(?,?,?,?,?,?,?)";
                
                PreparedStatement pst1=con.prepareStatement(depositequery);
                
                pst1.setString(1,accno);
                pst1.setString(2,refname);
                pst1.setString(3,dot);
                pst1.setString(4,trid);
                pst1.setInt(5,depamount);
                pst1.setInt(6,0);
                pst1.setInt(7,depamount+lastbal);
                
                pst1.executeUpdate();
                
                out.println("cash deposit successfully....");
            }
            catch(Exception e)
            {
                out.println("Transaction Failed"+e);
            }
            %>
    </body>
</html>