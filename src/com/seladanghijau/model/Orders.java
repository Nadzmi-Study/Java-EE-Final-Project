package com.seladanghijau.model;


import java.util.Date;

public class Orders {
    private Long id, foodId, userId;
    private Date orderTime;

    // constructor
    public Orders() {
        id = null;
        foodId = null;
        userId = null;
        orderTime = null;
    }
    public Orders(Long id, Long foodId, Long userId, Date orderTime) {
        this.id = id;
        this.foodId = foodId;
        this.userId = userId;
        this.orderTime = orderTime;
    }

    // getter
    public Long getId() { return id; }
    public Long getFoodId() { return foodId; }
    public Long getUserId() { return userId; }
    public Date getOrderTime() { return orderTime; }

    // setter
    public void setId(Long id) { this.id = id; }
    public void setFoodId(Long foodId) { this.foodId = foodId; }
    public void setUserId(Long userId) { this.userId = userId; }
    public void setOrderTime(Date orderTime) { this.orderTime = orderTime; }
}
