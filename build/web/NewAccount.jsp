<%@page import="java.time.LocalDate;" %>
<html>
    
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Account Registration</title>
    <!-- Link the CSS stylesheet -->
   <link rel="stylesheet" href="style.css">
  </head>
    <body>
      
        <header>
    <!-- Add your bank logo and navigation links here -->
    <img src="logo.jpg" alt="Bank Logo">
    <nav>
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="Login.jsp">Login</a></li>
        <li><a href="about.jsp">About Us</a></li>
       
      </ul>
    </nav>
  </header>
            
<!--  HttpSession ssn = request.getSession(true);
       Integer accountCounter = (Integer) ssn.getAttribute("accountCounter");
       if (accountCounter == null) {
           accountCounter = 1;
       } else {
           // Check if a specific account number is provided in the request
           String providedAccountNumber = request.getParameter("providedAccNo");
           if (providedAccountNumber != null && !providedAccountNumber.isEmpty()) {
               accountCounter++;
           }
       }
       ssn.setAttribute("accountCounter", accountCounter);-->
<%
 Integer accountCounter = (Integer) session.getAttribute("uniqueAccountCounter");
    if (accountCounter == null) {
        accountCounter = 1;
    } else {
        accountCounter++;
    }
    session.setAttribute("uniqueAccountCounter", accountCounter);
    
    // Generate the account number using a serial number format (e.g., ACC001, ACC002, ...)
    String accountNumber = String.format("ACC%03d", accountCounter);
   
    %>
   
            
            <%  LocalDate aod = LocalDate.now(); %>
            
            
        <h2 style="color: #d40c15" align="center">New account Registration</h2>
    <main> 
    
        <form action="NewAccountDBMS.jsp" method="post" >
            <table >
  
            
                <tr>
                     <td>Account Number</td>
                     <td><input type="text" name="accno" value="<%=accountNumber%>" readonly></td>
                     
                </tr>

                <tr>
                    <td>Customer Name</td>
                    <td><input type="text" name="cname"></td>
                </tr>
                <tr>
                    <td>Father Name</td>
                    <td><input type="text" name="cfname"></td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td><input type="date" name="cdob"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <select name="cgender"> 
                            <option value="Male"> Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Account Opening Date</td>
                    <td><input type="text" name="opdate" value=" <%=aod%>" > </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="cadd"></td>
                </tr>
               
                <tr>
                    <td>CONTACT number</td>
                    <td><input type="text" name="ccontactno" ></td>
                </tr>
                   <tr>
                    <td>ROLE</td>
                    <td><select name="role">
                            <option value="customer">CUS</option>
                         <option value="ADMIN">ADMIN</option></td>
                </tr>
                <tr>
                    <td>password<td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td>SECURITY QUESTION</td>
                    <td>
                        <select name="secques">
                            <option value="mother name name">mother Name</option>
                         <option value="Favourite sport">Fav  Game</option>
                           <option value="School">School Name</option>
                        </select>
                    </td>
                </tr>
                 <tr>
                    <td>Security Ans</td>
                    <td><input type="password" name="secans"></td>
                </tr>
                  
                <tr>
                    <td><input type="submit"  name="b1" value="Save"></td>
                    <td><input type="reset" name="b2" value="Reset"></td>
                </tr>
               
            </table>
        </form>
 
        </main>
 
   </body>
</html>
