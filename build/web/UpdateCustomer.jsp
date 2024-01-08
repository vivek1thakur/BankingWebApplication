<!DOCTYPE html>
<html>

<body>
    <h1>Update Customer Profile</h1>
    <form action="UpdateCustomerDBMS.jsp" method="post">
        <label for="customerId">Customer ID:</label>
        <input type="text" id="customerId" name="customerId" required><br><br>
        
        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" required><br><br>
        
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required><br><br>
        
        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" name="phoneNumber" required><br><br>
        
        <input type="submit" value="Update Profile">
    </form>
</body>
</html>
