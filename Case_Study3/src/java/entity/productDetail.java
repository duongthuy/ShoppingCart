/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Tung
 */
public class productDetail {
    private int id;
    private String os;
    private String screen;
    private String cpu;
    private String camera;
    private String pin;
    
    public productDetail(){}

    public productDetail(int id, String os, String screen, String cpu, String camera, String pin) {
        this.id = id;
        this.os = os;
        this.screen = screen;
        this.cpu = cpu;
        this.camera = camera;
        this.pin = pin;
    }

    public String getCamera() {
        return camera;
    }

    public void setCamera(String camera) {
        this.camera = camera;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public String getScreen() {
        return screen;
    }

    public void setScreen(String screen) {
        this.screen = screen;
    }
}
