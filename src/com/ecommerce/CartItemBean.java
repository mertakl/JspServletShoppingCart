package com.ecommerce;

public class CartItemBean {
	private String product_name;
	private double dblUnitCost;
	private int iQuantity;
	private double dblTotalCost;

	public String getProductName() {
		return product_name;
	}

	public void setProductName(String product_name) {
		this.product_name = product_name;
	}

	public double getUnitCost() {
		return dblUnitCost;
	}

	public void setUnitCost(double dblUnitCost) {
		this.dblUnitCost = dblUnitCost;
	}

	public int getQuantity() {
		return iQuantity;
	}

	public void setQuantity(int quantity) {
		iQuantity = quantity;
	}

	public double getTotalCost() {
		return dblTotalCost;
	}

	public void setTotalCost(double dblTotalCost) {
		this.dblTotalCost = dblTotalCost;
	}
}
