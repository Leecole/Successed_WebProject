package com.Makeup_Forever.DAO;

import com.Makeup_Forever.Model.User;

public interface UserDao  extends BaseDAO{
	public User  searchByUser(String username);//定义一个User对象，用于用户登录时，根据用户在表单上输入的用户名来查询该用户是否存在；
	public User searchByUserId(int id);
}
