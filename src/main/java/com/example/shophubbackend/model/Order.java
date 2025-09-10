package com.example.shophubbackend.model;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;

@Document(collection = "orders")
@Data
public class Order {
    @Id
    private String id;
    private String userId;
    private List<OrderItem> items;
    private double total;
    private String status;
    private String date;
    private ShippingInfo shippingInfo;
}

@Data
class OrderItem {
    private String productId;
    private String name;
    private double price;
    private int quantity;
    private String image;
}

@Data
class ShippingInfo {
    private String firstName;
    private String lastName;
    private String email;
    private String address;
    private String city;
    private String state;
    private String zipCode;
    private String country;
}