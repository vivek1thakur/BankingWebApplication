<%@page import="java.util.Random"%>
<%@page import="java.time.LocalDate;" %>

<html>
  
    <body >
          <% LocalDate d1 = LocalDate.now(); %>
           <%!Random rndm= new Random();%>
     
        <h1 align="center">Transaction for Customer Cash Withdraw</h1>
        <h3 bgimage="bgim.png">
            <form action="CashWithdrawDBMS.jsp" method="post">
                <table  align="center">
                    <tr>
                        <td>Account Number</td>
                        <td>    <input type="text" name="accno"></td>
                    </tr>
                     <tr>
                        <td>Reference</td>
                        <td>    <input type="text" name="refname"></td>
                    </tr>
                     <tr>
                        <td>Date Of Transaction</td>
                        <td>    <input type="date" name="dot" value="<%=d1%>"></td>
                    </tr>
                     <tr>
                        <td>Transaction Id</td>
                        <td>    <input type="text" name="trid" value="w<%=rndm.nextInt()%>"></td>
                    </tr>
                     <tr>
                        <td>Withdraw Amount</td>
                        <td>    <input type="text" name="wthamt"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="b1"  value="Withdraw"></td>
                        <td><input type="reset" name="b1"  value="RESET"></td>
                        
                    </tr>
                </table>
            </form>
        </h3>
        
    </body>
</html>
