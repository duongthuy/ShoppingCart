/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Tung
 */
public class order {
    private int id;
    private int iduser;
    private int idprod;
    private int number;
    private long total;
    
    public order(){
        this.id = 0;
        this.iduser = 0;
        this.idprod = 0;
        this.number = 0;
        this.total = 0;
    }

    public order(int id, int iduser, int idprod, int number, long total) {
        this.id = id;
        this.iduser = iduser;
        this.idprod = idprod;
        this.number = number;
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdprod() {
        return idprod;
    }

    public void setIdprod(int idprod) {
        this.idprod = idprod;
    }

    public int getIduser() {
        return iduser;
    }

    public void setIduser(int iduser) {
        this.iduser = iduser;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }
    
}
