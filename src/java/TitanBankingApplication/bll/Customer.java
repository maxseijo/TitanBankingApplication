/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TitanBankingApplication.bll;

import java.util.ArrayList;

/**
 *
 * @author maxximilianseijo
 */

public class Customer {

    private String name;
    private int accountNumber;
    private boolean isLoggedIn;
    private ArrayList<Account> accounts = new ArrayList<Account>();

    public Customer(String name, int accountNumber, Account checking, Account savings, String username, String password) {
        this.name = name;
        this.accountNumber = accountNumber;
        accounts.add(checking);
        accounts.add(savings);
        Credentials.username = username;
        Credentials.password = password;

    }
    
    public Customer() {


    }

    public ArrayList<Account> getAccounts() {
        return accounts;
    }
    

    public int getAccountNumber() {
        return accountNumber;
    }

    public double getBalance(int index) {
        return accounts.get(index).getBalance();
    }

    public String getName() {
        return name;
    }

}
