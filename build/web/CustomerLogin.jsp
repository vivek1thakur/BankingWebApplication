<html>
   <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Global Bank - Welcome</title>
  <!-- Add your CSS stylesheet here -->
    
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
        <h2 color="red">  Welcome <%=session.getAttribute("login_id")%> <br> </h2>
        <h3>
            <a href="ViewStatement.jsp">View Statement</a><br>
            <a href="CustomerProfile.jsp">Customer Profile</a><br>
            <a href="CustomerFundTransfer.jsp">Customer Fund Transfer</a><br>
            <a href="ChangePassword.jsp">Change Password</a><br>
            <a href="about.jsp">INFO</a><br>
            
        </h3>
    </body>
</html>