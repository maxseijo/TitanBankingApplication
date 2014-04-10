/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TitanBankingApplication.bll;

/**
 *
 * @author maxximilianseijo
 */
public class Account {
    
    private double balance;
    private Type type;

    public Account(double balance, Type type) {
        this.balance = balance;
        this.type = type;
    }
    
    public enum Type {
        CHECKING,
        SAVINGS
    }
    
    public void credit(Double amount) {
        this.setBalance(this.balance + amount);
    }
    
    public void debit(Double amount) {
        this.setBalance(this.balance - amount);
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public Type getType() {
        return type;
    }
    
}
