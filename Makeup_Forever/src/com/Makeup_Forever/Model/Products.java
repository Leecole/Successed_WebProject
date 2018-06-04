package com.Makeup_Forever.Model;

public class Products {
	private int  proID;
	private String proName;
	private float proPrice;
	private String picture;
	private String proType;
	private String  proDetails;
	/**
	 * @return the proID
	 */
	public int getProID() {
		return proID;
	}
	/**
	 * @param proID the proID to set
	 */
	public void setProID(int proID) {
		this.proID = proID;
	}
	/**
	 * @return the proName
	 */
	public String getProName() {
		return proName;
	}
	/**
	 * @param proName the proName to set
	 */
	public void setProName(String proName) {
		this.proName = proName;
	}
	/**
	 * @return the proPrice
	 */
	public float getProPrice() {
		return proPrice;
	}
	/**
	 * @param proPrice the proPrice to set
	 */
	public void setProPrice(float proPrice) {
		this.proPrice = proPrice;
	}
	/**
	 * @return the picture
	 */
	public String getPicture() {
		return picture;
	}
	/**
	 * @param picture the picture to set
	 */
	public void setPicture(String picture) {
		this.picture = picture;
	}
	/**
	 * @return the proType
	 */
	public String getProType() {
		return proType;
	}
	/**
	 * @param proType the proType to set
	 */
	public void setProType(String proType) {
		this.proType = proType;
	}
	/**
	 * @return the proDetails
	 */
	public String getProDetails() {
		return proDetails;
	}
	/**
	 * @param proDetails the proDetails to set
	 */
	public void setProDetails(String proDetails) {
		this.proDetails = proDetails;
	}
	public Products(int proID, String proName, float proPrice, String picture, String proType, String proDetails) {
		super();
		this.proID = proID;
		this.proName = proName;
		this.proPrice = proPrice;
		this.picture = picture;
		this.proType = proType;
		this.proDetails = proDetails;
	}
	public Products() {
		super();
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Products [proID=" + proID + ", proName=" + proName + ", proPrice=" + proPrice + ", Picture=" + picture
				+ ", proType=" + proType + ", proDetails=" + proDetails + "]";
	}
	
	
}
