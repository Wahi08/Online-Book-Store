/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Model;

import javax.servlet.http.Part;

/**
 *
 * @author Lenovo
 */
public class Book {
    
    public int id;
    public Part image;
    public String title;
    public String author;
    public String description;
    public String category;
    public double price;

    public Book() {
    }

    public Book(int id, String title, String author, String description, String category, double price) {
        this.id = id;
        this.title = title;
        this.author = author;
        this.description = description;
        this.category = category;
        this.price = price;
    }

    public Book(String title, String author, String description, String category, double price, Part image) {
        this.image = image;
        this.title = title;
        this.author = author;
        this.description = description;
        this.category = category;
        this.price = price;
    }

    public Book(int id, String title, String author, String description, String category, double price, Part image) {
        this.id = id;
        this.image = image;
        this.title = title;
        this.author = author;
        this.description = description;
        this.category = category;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Part getImage() {
        return image;
    }

    public void setImage(Part image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    } 
    
}
