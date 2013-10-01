package bean;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Tung
 */
public class Admin {
    private int id;
    private String username;
    private String password;
    private String email;
    private int lever;

    public Admin(){
        this.username = null;
        this.password = null;
        this.email= null;
        this.lever = 0;
        this.id = 0;
    }
    public Admin(String username, String password, String email,int lever,int id) {
        this.username = username;
        this.password = password;
        this.email= email;
        this.lever = lever;
        this.id = id;
    }
    
    public Admin(String username, String password, String email) {
        this.username = username;
        this.password = password;
        this.email= email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email=email;
    }

    public int getLever() {
        return lever;
    }

    public void setLever(int lever) {
        this.lever = lever;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
