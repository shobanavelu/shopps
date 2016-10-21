package com.shopping.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.io.Serializable;
import java.util.List;



@Entity
public class Item implements Serializable{

    private static final long serialVersionUID = 17L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int itemId;

    @NotEmpty (message = "Item name cannot be empty.")
    private String itemName;
    
    @NotEmpty (message = "Item description cannot be empty.")
    private String itemDescription;
    
    @NotEmpty (message = "Please select a category")
    private String itemCategory;
    
    @NotEmpty (message = "Item color cannot be empty.")
    private String itemColor ;
    
	
    @NotEmpty (message = "Item material cannot be empty.")
    private String itemMaterial;
    
   
    
    @Min(value = 0, message = "Item price cannot be less then zero.")
    private double itemPrice;

   
    
    @Min(value = 0, message = "Item unit must cannot be less than zero.")
    private int itemInStock;
    
    private String itemManufacturer;

    @Transient
    private MultipartFile itemImage;


    @OneToMany(mappedBy = "item", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JsonIgnore
    private List<CartItem> cartItemList;


	public int getItemId() {
		return itemId;
	}


	public void setItemId(int itemId) {
		this.itemId = itemId;
	}


	public String getItemName() {
		return itemName;
	}


	public void setItemName(String itemName) {
		this.itemName = itemName;
	}


	public String getItemCategory() {
		return itemCategory;
	}


	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}


	public String getItemDescription() {
		return itemDescription;
	}


	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}


	public double getItemPrice() {
		return itemPrice;
	}


	public void setItemPrice(double itemPrice) {
		this.itemPrice = itemPrice;
	}

	


	public int getItemInStock() {
		return itemInStock;
	}


	public void setItemInStock(int itemInStock) {
		this.itemInStock = itemInStock;
	}


	public String getItemManufacturer() {
		return itemManufacturer;
	}


	public void setItemManufacturer(String itemManufacturer) {
		this.itemManufacturer = itemManufacturer;
	}


	public MultipartFile getItemImage() {
		return itemImage;
	}


	public void setItemImage(MultipartFile itemImage) {
		this.itemImage = itemImage;
	}


	public List<CartItem> getCartItemList() {
		return cartItemList;
	}


	public void setCartItemList(List<CartItem> cartItemList) {
		this.cartItemList = cartItemList;
	}
	 
	public String getItemColor() {
		return itemColor;
	}


	public void setItemColor(String itemColor) {
		this.itemColor = itemColor;
	}


	


	public String getItemMaterial() {
		return itemMaterial;
	}


	public void setItemMaterial(String itemMaterial) {
		this.itemMaterial = itemMaterial;
	}


	
    
}
