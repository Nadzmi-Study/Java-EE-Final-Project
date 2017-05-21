package com.seladanghijau.model;


public class Admins {
    private Long id;
    private String login, password;

    // controller
    public Admins() {
        id = null;
        login = null;
        password = null;
    }
    public Admins(Long id) {
        this.id = id;
    }
    public Admins(Long id, String login, String password) {
        this.id = id;
        this.login = login;
        this.password = password;
    }

    // getter
    public Long getId() { return id; }
    public String getLogin() { return login; }
    public String getPassword() { return password; }

    // setter
    public void setLogin(String login) { this.login = login; }
    public void setId(Long id) { this.id = id; }
    public void setPassword(String password) { this.password = password; }
}
