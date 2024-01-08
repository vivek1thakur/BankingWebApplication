<html>
  <head>
  
    <a href="Login.jsp"></a>
  <link rel="stylesheet" href="style.css">
    </head>
    
    <body>
        <header>
    <!-- Add your bank logo and navigation links here -->
    <img src="logo.jpg" alt="Bank Logo">
    <nav>
      <ul>
        <li><a href="index.html">Home</a></li>
       
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="Logout.jsp">Logout</a></li>
        <li><a href="contact.jsp">Contact</a></li>
      </ul>
    </nav>
  </header>
        <h1> Welcome <%=session.getAttribute("login_id")%> Admin login page
      <%=session.getAttribute("login_Name")%> <br></h1>  
     
    <main>
         <section class="hero">
             <a href="NewAccount.jsp">New Account</a><br>
             <a href="CustomerStatement.jsp">Customer Statement </a><br>
             <a href="ViewCustomer.jsp">View Customer</a><br>
             <a href="DeleteCustomer.jsp">Delete Customer</a><br>
             
             <a href="UpdateCustomer.jsp">Update Customer</a><br>
             <a href="ViewStatement.jsp">View Statement</a><br>
             <a href="UpdateStatement.jsp">Update Statement</a><br>
             <a href="CancelStatement.jsp">Cancel Statement</a><br>
             
             <a href="FundTransfer.jsp">Fund Transfer</a><br>
             <a href="CashWithdraw.jsp">Cash Withdraw</a><br>
             <a href="Cashdeposit.jsp">Cash Deposite</a><br>
             <a href="AdminChangePassword.jsp"> Admin Change Password</a><br>
             <a href="CustomerChangePassword.jsp">customer Change Password</a><br>
             <a href="Logout.jsp"></a>
             
         </section>
             
    </main>
    </body>
</html>
