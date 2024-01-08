<%@page import="java.util.*"%>
<%@page import="java.util.Date" %>

<html>
  
    <body bgcolor="#B7CEEC">
        <%!Random rndm;%>
        <%
                 rndm=new Random();
        
        %>
        Welcome <%=session.getAttribute("login_id")%><br> Name:- <%=session.getAttribute("login_name")%><br>
        <h1  align="center"> Customer Fund Transfer to Other Account </h1>
        <h3>
            <form action="CustomerFundTransferDBMS.jsp" method="post">
                <table>
                    <a href="CustomerFundTransfer.jsp"></a>
                   
                     <tr>
                        <td>Account Number</td>
                        <td><input type="text" name="accno"></td>
                    </tr>
                     <tr>
                        <td>Ref Id</td>
                        <td><input type="text" name="refname" ></td>
                    </tr>
                     <tr>
                        <td>Date of Transaction</td>
                        <td><input type="date" name="dot"></td>
                    </tr>
                     <tr>
                        <td>Transaction Id</td>
                        <td><input type="text" name="trid" value="<%=rndm.nextInt()%>"></td>
                    </tr>
                     <tr>
                        <td>Transfer Amount</td>
                        <td><input type="text" name="depamt"></td>
                    </tr>
                    <tr>
                        
                        <td><input type="submit" name="b1" value="TRANSFER"></td>
                         <td><input type="reset" name="b1" value="RESET"></td>
                    </tr>
                  
            </form>
        </h3>
    </body>
</html>