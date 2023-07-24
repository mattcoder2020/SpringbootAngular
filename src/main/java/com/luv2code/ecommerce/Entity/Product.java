package com.luv2code.ecommerce.Entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "product")
@Data
@Getter
@Setter
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name ="id")
    private int id;

    //@Column(name ="product_category_id")
    @JoinColumn(name = "category_id", nullable = false)
    private ProductCategory productCategory;

    @Column(name ="name")
    private String name;

    private ProductCategory category;
    @Column(name="price")
    private int price;
}