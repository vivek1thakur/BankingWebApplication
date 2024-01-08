<%@page import="java.util.Random"%>

<html>
    
    <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Global Bank - Welcome</title>
  <!-- Add your CSS stylesheet here -->
  <link rel="stylesheet" href="style.css">
</head>

    <body bgcolor="grey">
        <%!Random rndm;%>
        <%
              rndm = new Random (); 
        %>
        <h1 align="center">Transaction for Customer Cash Deposite</h1>
        <div class="container">
             <form action="CashdespositeDBMS.jsp" method="post">
                <table>
                    <tr>
                        <td>Account Number</td>
                        <td><input type="text" name="accno"></td>
                    </tr>
                    <tr>
                        <td>Reference</td>
                        <td><input type="text" name="refname"></td>
                    </tr>
                    <tr>
                        <td>Date of Transaction</td>
                        <td><input type="text" name="dot"></td>
                    </tr>
                    <tr>
                        <td>Transaction ID</td>
                        <td><input type="text" name="trid" value="<%=rndm.nextInt()%>"></td>
                    </tr>
                    <tr>
                        <td>Desposite Amount</td>
                        <td><input type="text" name="depamt"></td>
                    </tr>
                    <tr>
                        
                        <td><input type="submit" name="b1" value="deposite"></td>
                        <td><input type="reset" name="b2" value="RESET"></td>
                    </tr>

                </table>
            </form>
        </div>
    </body>
</html>
