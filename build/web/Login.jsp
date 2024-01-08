<html>
    <head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Global Bank - Welcome</title>
  <!-- Add your CSS stylesheet here -->
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
        <li><a href="login.jsp">Login</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="contact.jsp">Contact</a></li>
      </ul>
    </nav>
  </header>
        <h1 style="color:red"  align="center">
             Login your account
        </h1>
        <main>
            <section class="hero">
                       
        <form action="Check.jsp" method="post" >
            <table border="2" bgcolor="white" bordercolor="red" align="center" >
                <tr>
                    <td> Select Role</td>
                    <td>
                        <select name="role">
                            <option value="Select">Select</option>
                            <option value="admin">ADMIN</option>
                            <option value="customer">CUSTOMER</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        LoginID
                    </td>
                    <td>
                        <input type="text" name="loginid">
                    </td>
                    </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" name="loginpassword"></td>
                </tr>
                <tr>
                    <td><input type="submit"  name="b1" value="login"></td>
                     <td><input type="reset" name="b2" value="reset"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="ForgetPassword.jsp"> Forget password</a></td>
                </tr>
                    
                    
            </table>
       </form>
               
            </section>
        </main>
        <footer>
    <!-- Add footer content and links to important pages here -->
    <p>&copy; 2023 Global Bank. All rights reserved.</p>
    <ul>
      <li><a href="PrivacyPolicy.jsp">Privacy Policy</a></li>
      <li><a href="TandC.jsp">Terms of Service</a></li>
      <!--<li><a href="#">Accessibility</a></li>-->
    </ul>
  </footer>
    </body>
</html>
