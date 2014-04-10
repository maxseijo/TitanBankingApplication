<%-- 
    Document   : transferLogic
    Created on : Apr 7, 2014, 2:25:22 PM
    Author     : maxximilianseijo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="TitanBankingApplication.bll.Account,TitanBankingApplication.bll.Customer, TitanBankingApplication.bll.AuthenticationService, TitanBankingApplication.bll.Credentials, 
        TitanBankingApplication.bll.TransferService, java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Accounts</title>
    </head>
    <body>
        <h2>Transfer</h2>
        <%!Customer cust = new Customer();
            TransferService transferService = new TransferService();
            Date date = new Date();%>
        <% cust = (Customer)session.getAttribute("cust");
           ArrayList<Account> accounts = cust.getAccounts();
            %>
        <%!int fromIndex;
           int toIndex;%>
        <%String fromAccountString = request.getParameter("transferFrom");
          String toAccountString = request.getParameter("transferTo");
          double amount = Double.parseDouble(request.getParameter("amount"));
            if (fromAccountString.equals("CHECKING")) {
                fromIndex = 0;
            }
            else {
              fromIndex = 1;
            }
            if (toAccountString.equals("SAVINGS")) {
                toIndex = 0;
            }
            else {
              toIndex = 1;
            }
            transferService.transferBetweenAccounts(cust, accounts.get(fromIndex), accounts.get(toIndex), amount, date);
    %>
    <p>Transfer successful.</p>
    <p>You transfered $<%=amount%> from your <%=fromAccountString%> to your <%=toAccountString%>.</p>
            
        
        <form action="home.jsp" method="post">
           <p><label><input type="submit" value="Back" /></label></p>
        </form>
    </body>
</html>
