 package com.monomay;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    private String userName;
    private String mealName;
    private String village;
    private String areaName;
    private String payType;
   
   

    @ManyToOne
    private Sign user;

    // Getters and setters
    
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMealName() {
        return mealName;
    }

    public void setMealName(String mealName) {
        this.mealName = mealName;
    }

    public String getVillage() {
        return village;
    }

    public void setVillage(String village) {
        this.village = village;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public String getPayType() {
        return payType;
    }

    public void setPayType(String payType) {
        this.payType = payType;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Sign getUser() {
        return user;
    }

    public void setUser(Sign user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Cart [id=" + id + ", mealName=" + mealName + ", village=" + village + ", areaName=" + areaName
                + ", payType=" + payType + ", userName=" + userName + ", user=" + user + "]";
    }
}