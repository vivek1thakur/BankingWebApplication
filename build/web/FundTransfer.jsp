<html>
   
    <body bgcolor="Yellow">
        Welcome<%=session.getAttribute("login_id")%><br>
        <h1 align="center"> Transaction for Customer</h1>
        <h3>
            <form action="FundTransferDBMS.jsp" method="post">
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
                        <td>Date Of Transaction</td>
                        <td><input type="date" name="dot"></td>
                       
                    </tr>
                      <tr>
                        <td>transaction Id</td>
                        <td><input type="text" name="trid"></td>
                    </tr>
                      <tr>
                        <td>Deposit AMount</td>
                        <td><input type="text" name="depamt"></td>
                    </tr>
                     
                    <tr>
                        <td><input type="submit" name="b1" value="deposit"></td>
                        <td><input type="reset" name="b1" value="RESET"></td>
                    </tr>
                </table>
            </form>
        </h3>
    </body>
</html>