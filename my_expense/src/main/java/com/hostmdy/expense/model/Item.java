package com.hostmdy.expense.model;

import java.time.LocalDateTime;

public class Item {
	private Long id;
	private String name;
	private String category;
	private Double price;
	private Integer quantity;
	private Double subTotal;
	private LocalDateTime issuedDate;
	private Boolean essential;
	private String image;
	private String description;
	private Long userId;
		
	public Item() {}
	

	public Item(String name, String category, Double price, Integer quantity, Boolean essential, String image,
			String description, Long userId) {
		super();
		this.name = name;
		this.category = category;
		this.price = price;
		this.quantity = quantity;
		this.essential = essential;
		this.image = image;
		this.description = description;
		this.userId = userId;
		this.subTotal=price * quantity;
		this.issuedDate= LocalDateTime.now();
	}



	public Item(Long id, String name, String category, Double price, Integer quantity, Boolean essential, String image, String description) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.quantity = quantity;
		this.subTotal = price*quantity;
		this.essential = essential;
		this.image = image;
		this.description = description;
	}


	public Item(Long id, String name, String category, Double price, Integer quantity, Double subTotal,
			LocalDateTime issuedDate, Boolean essential, String image, String description, Long userId) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.quantity = quantity;
		this.subTotal = subTotal;
		this.issuedDate = issuedDate;
		this.essential = essential;
		this.image = image;
		this.description = description;
		this.userId = userId;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public Double getPrice() {
		return price;
	}


	public void setPrice(Double price) {
		this.price = price;
	}


	public Integer getQuantity() {
		return quantity;
	}


	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}


	public Double getSubTotal() {
		return subTotal;
	}


	public void setSubTotal(Double subTotal) {
		this.subTotal = subTotal;
	}


	public LocalDateTime getIssuedDate() {
		return issuedDate;
	}


	public void setIssuedDate(LocalDateTime issuedDate) {
		this.issuedDate = issuedDate;
	}


	public Boolean getEssential() {
		return essential;
	}


	public void setEssential(Boolean essential) {
		this.essential = essential;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Long getUserId() {
		return userId;
	}


	public void setUserId(Long userId) {
		this.userId = userId;
	}


	@Override
	public String toString() {
		return "Item [id=" + id + ", name=" + name + ", category=" + category + ", price=" + price + ", quantity="
				+ quantity + ", subTotal=" + subTotal + ", issuedDate=" + issuedDate + ", essential=" + essential
				+ ", image=" + image + ", description=" + description + ", userId=" + userId + "]";
	}

	


	
	
}
