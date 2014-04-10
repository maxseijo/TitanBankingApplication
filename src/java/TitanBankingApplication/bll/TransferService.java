/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TitanBankingApplication.bll;

import TitanBankingApplication.bll.Transaction.Status;
import java.util.Date;

/**
 *
 * @author maxximilianseijo
 */
public class TransferService {
    
    private Transaction[] transactions = new Transaction[10];
    private int nextIndex = 0;

    public TransferService() {
        
    }
    
    public void transferBetweenAccounts(Customer cust, Account fromAccount, Account toAccount, double amount, Date executionDate) {
       
            fromAccount.debit(amount);
            toAccount.credit(amount);
            //creates a transaction object for the transaction
            Transaction transfer = new Transaction(Status.COMPLETED, amount, fromAccount, toAccount, executionDate);
            //stores the trasaction in an array so it can be retrieved at a later point
            this.transactions[this.nextIndex] = transfer;
            this.nextIndex++;
    }

    public Transaction[] getTransactions() {
        return transactions;
    }
    
    
}
