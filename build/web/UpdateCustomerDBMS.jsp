<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@include file="DBCON.jsp"%>
<!DOCTYPE html>
<html>

<body>
    <%
        // Retrieve the form data
        String customerId = request.getParameter("customerId");
        String fullName = request.getParameter("fullName");
        
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        
      
        
        try {
            
            String updateQuery = "UPDATE account SET cusname=?, address=?, contact=? WHERE accno=?";
            PreparedStatement pstmt = con.prepareStatement(updateQuery);
            pstmt.setString(1, fullName);
           
            pstmt.setString(2, address);
            pstmt.setString(3, phoneNumber);
            pstmt.setString(4, customerId);
            int rowsAffected = pstmt.executeUpdate();

            pstmt.close();
            con.close();

            out.println("<h1>Profile Updated Successfully!</h1>");

        } catch (Exception e) {
            out.println("<h1>Error occurred: " + e.getMessage() + "</h1>");
            e.printStackTrace();
        }
    %>
</body>
</html>
