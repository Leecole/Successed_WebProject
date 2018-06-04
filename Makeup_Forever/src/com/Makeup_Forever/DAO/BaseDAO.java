package com.Makeup_Forever.DAO;

public interface BaseDAO { //父接口，在此声明公共资源，即java与数据库之间的连接，用JDBC
	public String driverClass="com.mysql.jdbc.Driver"; //加载驱动
	public String url="jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf8";//数据库Mysql的url
	public String username="root";//mysql的用户登陆名
	public String password="root";//mysql的用户登陆密码；
	
	public boolean add(Object o);  
	
	public abstract boolean  delete(Object id);
	
	public abstract boolean update(Object  o);

}
