/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package TitanBankingApplication.bll;

/**
 *
 * @author maxximilianseijo
 */
public class Credentials {
    static String username;
    static String password;

    public static String getPassword() {
        return password;
    }

    public static void setPassword(String password) {
        Credentials.password = password;
    }

    public static String getUsername() {
        return username;
    }

    public static void setUsername(String username) {
        Credentials.username = username;
    }
    
    
    
    
}
