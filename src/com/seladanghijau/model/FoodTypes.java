package com.seladanghijau.model;


public class FoodTypes {
    private Long id;
    private String name;

    // constructor
    public FoodTypes() {
        id = null;
        name = null;
    }
    public FoodTypes(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    // getter
    public Long getId() { return id; }
    public String getName() { return name; }

    // setter
    public void setId(Long id) { this.id = id; }
    public void setName(String name) { this.name = name; }
}
