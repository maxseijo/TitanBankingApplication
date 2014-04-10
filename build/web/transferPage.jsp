<%-- 
    Document   : transferPage
    Created on : Apr 7, 2014, 1:05:38 PM
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
        <h2>Transfer</h2>
        
        <form action="transferLogic.jsp" method="post">
            <p><label>Transfer from: Checking <input type="radio" name="transferFrom" value="CHECKING"/>
                    Savings <input type="radio" name="transferFrom" value="SAVINGS"/></label></p>
            <p><label>Transfer to:   Checking <input type="radio" name="transferTo" value="CHECKING"/>
                    Savings <input type="radio" name="transferTo" value="SAVINGS"/></label></p>
                    <p><label>Amount: <input type="text" name="amount"></label></p>
           <p><label><input type="submit" value="Submit" /></label></p>
        </form>
    </body>
</html>
