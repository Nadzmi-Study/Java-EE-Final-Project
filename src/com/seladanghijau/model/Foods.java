package com.seladanghijau.model;


public class Foods {
    private Long id, typeId;
    private String name;
    private int price;

    // constrcutor
    public Foods() {
        id = null;
        typeId = null;
        name = null;
        price = 0;
    }
    public Foods(Long id, Long typeId, String name, int price) {
        this.id = null;
        this.typeId = null;
        this.name = name;
        this.price = price;
    }

    // getter
    public Long getId() { return id; }
    public Long getTypeId() { return typeId; }
    public String getName() { return name; }
    public int getPrice() { return price; }

    // setter
    public void setId(Long id) { this.id = id; }
    public void setTypeId(Long typeId) { this.typeId = typeId; }
    public void setName(String name) { this.name = name; }
    public void setPrice(int price) { this.price = price; }
}
