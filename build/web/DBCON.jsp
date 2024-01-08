<%@page import="java.sql.*"%>
<html>
    
    <body>
        <%!Connection con;%>
        <%
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                String connectionUrl="jdbc:mysql://localhost:3306/GlobalBankingDB";
                String dbuser="root";
                String dbpass="root";
                
                con=DriverManager.getConnection(connectionUrl,dbuser,dbpass);
                
                out.println("conection success...");
                
            }
            catch(Exception e)
            {
                out.print("connection faild..."+e);
            }
        %>
    </body>
</html>
