package com.example.shophubbackend.model;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import java.util.List;
import java.util.Map;

@Document(collection = "products")
@Data
public class Product {
    @Id
    private String id;
    private String name;
    private String description;
    private double price;
    private List<String> images;
    private String category;
    private int stock;
    private double rating;
    private int reviews;
    private Map<String, String> specifications;
    private boolean featured;
}