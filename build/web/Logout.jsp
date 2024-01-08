<%@include file="DBCON.jsp" %>
<html>
   
    <body>
        <% request.getSession().invalidate();
          con.close();
          %>
          <p> You have been logged out successfully.</p>
                 
    <p><a href="Login.jsp">Click here to login again</a></p>
    </body>
</html>
 