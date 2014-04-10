/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TitanBankingApplication.bll;

import java.util.Date;

/**
 *
 * @author maxximilianseijo
 */
public class Transaction {
    static Status status;
    private Date date;
    private double amount;
    private Account fromAccount;
    private Account toAccount;

    public Transaction(Status status, double amount, Account fromAccount, Account toAccount, Date executionDate) {
        this.amount = amount;
        this.fromAccount = fromAccount;
        this.date = executionDate;
        this.toAccount = toAccount;
    }

    public Transaction(Status status, double amount, Account fromAccount, Account toAccount) {
        this.amount = amount;
        this.fromAccount = fromAccount;
        this.toAccount = toAccount;
    }
    
    public enum Status {
        COMPLETED,
        PENDING
    }
    
    public Status getStatus() {
        return status;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Account getFromAccount() {
        return fromAccount;
    }

    public void setFromAccount(Account fromAccount) {
        this.fromAccount = fromAccount;
    }

    public Account getToAccount() {
        return toAccount;
    }

    public void setToAccount(Account toAccount) {
        this.toAccount = toAccount;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
}
