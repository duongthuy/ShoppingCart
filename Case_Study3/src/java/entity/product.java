/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author MinhTu-75
 */
public class product {
    private int id;
    private String name;
    private long price;
    private String image;
    private int kind;
    private int amount;
    private long Dongia;
    private int idDetail;
    
    public product(){
        this.id = 0;
        this.name = null;
        this.price = 0;
        this.image = null;
        this.amount = 1;
        this.Dongia = 0;
        this.kind = 0;
        this.idDetail = 0;
    }

    public product(int id, String name, long price, String image, int kind, int amount, long Dongia, int idDetail) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.image = image;
        this.kind = kind;
        this.amount = amount;
        this.Dongia = Dongia;
        this.idDetail = idDetail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getKind() {
        return kind;
    }

    public void setKind(int kind) {
        this.kind = kind;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public long getDongia() {
        Dongia = price*amount;
        return Dongia;
    }

    public void setDongia(long Dongia) {
        this.Dongia = Dongia;
    }

    public int getIdDetail() {
        return idDetail;
    }

    public void setIdDetail(int idDetail) {
        this.idDetail = idDetail;
    }
    
    
}
