<%-- 
    Document   : login
    Created on : Apr 6, 2014, 2:43:14 PM
    Author     : maxximilianseijo
--%>

<%@page import="TitanBankingApplication.bll.Credentials,TitanBankingApplication.bll.AuthenticationService,
        TitanBankingApplication.bll.Account,TitanBankingApplication.bll.Customer, 
        TitanBankingApplication.bll.AuthenticationService, TitanBankingApplication.bll.Credentials"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <% String username = request.getParameter("username");
           String password = request.getParameter("password");
           //for the purpose of this assignment I am assigning the username and password typed by the user to the Credentials Class
           Credentials.setUsername(username);
           Credentials.setPassword(password);
           %>
           <%!//For this assignment, I will hard code the Customer and Account variables because requirements 4-9 haven't been created
                Account checking = new Account(2000.00, Account.Type.CHECKING);
                Account savings = new Account(1000.00, Account.Type.SAVINGS);
                Customer cust = new Customer("John Doe", 12345, checking, savings, Credentials.getUsername(), Credentials.getPassword());
                
            %>
           <%!
            AuthenticationService serv = new AuthenticationService();
            boolean loggedIn;%>
           <%
            loggedIn = serv.loginValidation(username, password);
            session.setAttribute("cust", cust);
            %>
            <%if (loggedIn) {
                %>
                <p>You're logged in.</p><br>
                <form action="home.jsp" method="post">
                    <p><label><input type="submit" value="Continue" /></label></p>
                </form>
            <% } else { %>
            <p>Incorrect Credentials.</p>
            <% } %>
    </body>
</html>
