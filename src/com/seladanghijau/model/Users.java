package com.seladanghijau.model;


public class Users {
    private Long id;
    private  String login, password;
    private boolean active;

    // constructor
    public Users() {
        id = null;
        login = null;
        active = false;
    }
    public Users(Long id, String login, String password, boolean active) {
        this.id = id;
        this.login = login;
        this.password = password;
        this.active = active;
    }

    // getter
    public Long getId() { return id; }
    public String getLogin() { return login; }
    public String getPassword() { return password; }
    public boolean isActive() { return active; }

    // setter
    public void setId(Long id) { this.id = id; }
    public void setLogin(String login) { this.login = login; }
    public void setPassword(String password) { this.password = password; }
    public void setActive(boolean active) { this.active = active; }
}
