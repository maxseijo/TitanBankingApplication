/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TitanBankingApplication.bll;

/**
 *
 * @author maxximilianseijo
 */
public class AuthenticationService {
    
    private boolean loginToken;

    
    public boolean loginValidation(String user, String password) {
        //check if the username and password match
        if(Credentials.username.equals(user) && Credentials.password.equals(password)) {
            //if they do, the user is logged in
            this.loginToken = true;
        }
        else {
            //if they do not, an error message is displayed
            System.out.println("Incorrect login information.");
            this.loginToken = false;
        }
        return loginToken;    
    }
    
    public boolean logout() {
        //logs the user out
        this.loginToken = false;
        return loginToken;
    }
    
    public boolean loginStatusValidation() {
        //checks if the user is logged in
        if (loginToken) {
            return true;
        }
        else {
            return false;
        }
    }
}
