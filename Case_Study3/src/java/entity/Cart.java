/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;

/**
 *
 * @author Tung
 */
public class Cart { 
     
    private ArrayList<product>cart; 
     
    public Cart(){ 
        cart=new ArrayList<product>(); 
    } 
     
    public void addproduct(product p){ 
        boolean contain = false;
        
        for(int i = 0; i < cart.size(); i++){
            if(p.getId() == cart.get(i).getId()){
                cart.get(i).setAmount(cart.get(i).getAmount()+p.getAmount());
                contain = true;
            }
        }
        
        if(!contain) cart.add(p);
    } 
    
    public void updateproduct(int id,int amount){
        for(int i = 0; i < cart.size(); i++){
            if(id == cart.get(i).getId()){
                cart.get(i).setAmount(amount);
                return;
            }
        }
    }
    
    public void delproduct(int id){
        for(int i = 0; i < cart.size(); i++){
            if(id == cart.get(i).getId()){
                cart.remove(i);
                return;
            }
        }
    }
     
    public long getTotalprice(){ 
        long totalprice = 0; 
        for(product p:cart){ 
            totalprice+=p.getDongia(); 
        } 
        return totalprice; 
    } 
     
    public ArrayList<product> getCart(){ 
        return cart; 
    } 
}
