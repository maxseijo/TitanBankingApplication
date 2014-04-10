<%-- 
    Document   : accounts
    Created on : Apr 6, 2014, 3:29:12 PM
    Author     : maxximilianseijo
--%>

<%@page import="TitanBankingApplication.bll.Account,TitanBankingApplication.bll.Customer, 
        TitanBankingApplication.bll.AuthenticationService, TitanBankingApplication.bll.Credentials"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Accounts</title>
    </head>
    <body>
        <h2>Accounts</h2>
        <%!Customer cust = new Customer();%>
        <% cust = (Customer)session.getAttribute("cust");
            %>
        <p>Checking: $<%=cust.getBalance(0)%></p>
        <p>Savings: $<%=cust.getBalance(1)%></p>
        <form action="home.jsp" method="post">
           <p><label><input type="submit" value="Back" /></label></p>
        </form>
    </body>
</html>
