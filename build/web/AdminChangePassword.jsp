<html>
    <center>
    <body bgcolor="#E6E6FA">
        <h1>Welcome <%=session.getAttribute("login_id")%><br> Name:- <%=session.getAttribute("login_name")%>login page</h1>
        
        <h2><br> You can Change your Password here Enter Following Detail's</h2>
       
        <form action='AdminChangePasswordDBMS.jsp' method='post'>
            <br>
            Enter old Password<input type="text" name="oldpass"><br><br>
            Enter New Password<input type="text" name="newpass"><br><br>
            Confirm Password<input type="text" name="cnpass"><br><br>
            
            <input type="submit" name="b1" value="Update">
            
        </form>
       
    
    </body>
    </center>
</html>