package com.model;

/**
 * TAdmin generated by MyEclipse Persistence Tools
 */

public class TAdmin implements java.io.Serializable {

	// Fields

	private Integer userId;

	private String userName;

	private String userPw;

	private Integer userType;
	// Constructors

	public Integer getUserType() {
		return userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
	}

	/** default constructor */
	public TAdmin() {
	}

	/** full constructor */
	public TAdmin(String userName, String userPw,Integer userType) {
		this.userName = userName;
		this.userPw = userPw;
		this.userType = userType;
	}

	// Property accessors


	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPw() {
		return this.userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public Integer getUserId()
	{
		return userId;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

}