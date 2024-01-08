<html>
    <body>
        <h1>Change the password</h1>
        <form action="CustomerResetPasswordDBMS.jsp" method="post">
            <table >
                <tr>
                    <td>Enter account no</td>
                    <td><input type="text" name="acno"></td>
                </tr>
                <tr>
                    <td>Enter New password</td>
                    <td><input type="text" name="newpass"></td>
                </tr>
                <tr>
                    <td>Confirm password</td>
                    <td><input type="text" name="conpass"></td>
                </tr>
                 <tr>
                     <td><input type="submit" value="Change"></td>
                     <td><input type="reset" value="Reset"></td>
                </tr>
            </table>
        </form>
    </body>
</html>