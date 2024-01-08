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
        <li><a href="contact.jsp">Contact</a></li>
       
      </ul>
    </nav>
  </header>

        <h3 align="center">
             
        <form action="ViewCustomerDBMS.jsp" method="post">
            
            Select<select name="choice">
                <option value="all">ALL</option>
                <option value="customername">CUSTOMER NAME</option>
                <option value="AccountNo">ACCOUNT NO</option>
                <option value="address">ADDRESS</option>
                <option value="Cono">CONTACT NO</option>
               
            </select>
            <input type="text" name="cuschoice">
            <input type="submit" name="b1" value="View">
        </form>
        
        </h3>
    </body>
</html>