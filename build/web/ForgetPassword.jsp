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
        <li><a href="Login.jsp">Login</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="contact.jsp">Contact</a></li>
       
      </ul>
    </nav>
  </header>

  <main>
    <section class="hero">
        <h1 align="center">Forget Password Page</h1>
        
            <form action="ForgetPasswordDBMS.jsp" method="post">
                <table bgcolor="white">
                    <tr>
                        <td>Login Id</td>
                        <td><input type="text" name="loginId">
                    </tr>
                    <tr>
                        <td>Customer Name</td>
                        <td><input type="text" name="custname">
                    </tr>
                    
                    
                    <tr>
                        <td>Mobile No.</td>
                        <td><input type="text" name="Mono"></td>
                    </tr>
                    <tr>
                        <td>New Password</td>
                        <td><input type="text" name="newpass"></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="text" name="conpass"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="b1" value="Forget Passwrd"></td>
                        <td><input type="reset" name="b2" value="RESET"></td>
                    </tr>
                </table>
            </form>
            </section>
  </main>
    </body>
</html>