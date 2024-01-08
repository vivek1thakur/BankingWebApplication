<%@include file="DBCON.jsp" %>
<%@include file="ViewStatement.jsp" %>

<html>

    <body>
        <h3 align="center">**************Statements***************</h3>
        <%
              try
              {
                  String choice=request.getParameter("choice");
                  String statementviewquery="";
                  
                  if(choice.equalsIgnoreCase("AccountNo"))
                  {
                        String chaccount=request.getParameter("cuschoice");
                        statementviewquery ="select * from "+chaccount;
                  }
              
                  else
                  {
                        statementviewquery="select * from transactionbank";
                  
                  }
                  
                  Statement stmt=con.createStatement();
                  
                  ResultSet rs1=stmt.executeQuery(statementviewquery);
                  
                  while(rs1.next())
                  {
                      out.println(" "+rs1.getString(1));
                      out.println(" "+rs1.getString(2));
                      out.println(" "+rs1.getString(3));
                      out.println(" "+rs1.getString(4));
                      out.println(" "+rs1.getInt(5));
                      out.println(" "+rs1.getInt(6));
                      out.println(" "+rs1.getInt(7));
                      out.println("<br>");
                  }
              
              }
               catch(Exception e)
              {
                  out.println("data not found"+e);
              }
        %>
       
    
    </body>
</html>
