package com.Makeup_Forever.Model;

public class User {
	private int userId;
	private String username;
	private String nickName;
	private String password;
	private String sex;
	private String email;
	private String headImage;
	/**
	 * @return the headImage
	 */
	public String getHeadImage() {
		return headImage;
	}
	/**
	 * @param headImage the headImage to set
	 */
	public void setHeadImage(String headImage) {
		this.headImage = headImage;
	}
	/**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}
	/**
	 * @return the nickName
	 */
	public String getNickName() {
		return nickName;
	}
	/**
	 * @param nickName the nickName to set
	 */
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the sex
	 */
	public String getSex() {
		return sex;
	}
	/**
	 * @param sex the sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	public User(int userId, String nickName, String username,String password, String sex, String email,String headImage) {
		super();
		this.userId = userId;
		this.nickName = nickName;
		this.username=username;
		this.password = password;
		this.sex = sex;
		this.email = email;
		this.headImage=headImage;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [userId=" + userId + ", nickName=" + nickName + ", username=" + username +", password=" + password + ", sex=" + sex
				+ ", email=" + email + ", headImage=" + headImage + "]";
	}
	public User() {
		super();
	}

}
