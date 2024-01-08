<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@include file="DBCON.jsp" %>
<%@page import="java.util.Date;" %>
<!DOCTYPE html>
<html>

<body>
    <h1>Today's Birthdays</h1>
    <%
        
        // Initialize the connection, statement, and result se
        Statement stmt = null;
        ResultSet rs = null;

        try {
            
            Date today = new Date();

           
            String sql = "SELECT cusname FROM account WHERE dob = DAY(?) AND MONTH(dob) = MONTH(?);";
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setDate(1, new java.sql.Date(today.getTime()));
            pstmt.setDate(2, new java.sql.Date(today.getTime()));

         
            rs = pstmt.executeQuery();

            
            int count = 0;
            while (rs.next()) {
                count++;
            }
    %>

    <p>
        <% if (count > 0) { %>
            There are <%= count %> people with birthdays today.
        <% } else { %>
            No one has a birthday today.
        <% } %>
    </p>

    <% 
        } catch (Exception e) {
           out.println(e);
   
        }
    %>
</body>
</html>
