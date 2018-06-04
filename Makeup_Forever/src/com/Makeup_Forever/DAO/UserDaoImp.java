package com.Makeup_Forever.DAO;

import java.sql.ResultSet;
import java.sql.Statement;

import com.Makeup_Forever.Model.Products;
import com.Makeup_Forever.Model.User;
import java.sql.PreparedStatement;
public class UserDaoImp extends BaseDAOImp implements UserDao{
	ResultSet rs=null;

	
	@Override
	public User searchByUser(String username) {//在此实现用户查找
		User  user=new User();
		try {
			rs=getSta().executeQuery("select * from User where  username='"+username+"'");//根据用户名查询用户
			while(rs.next())
			{	
				user.setUserId(rs.getInt("userId"));
				user.setNickName(rs.getString("nickName"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setEmail(rs.getString("email"));
				user.setHeadImage(rs.getString("headImage"));
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(getSta(), rs, getCon());
		return user;
	}
	@Override
	public boolean add(Object o) {//添加用户
		User user=(User)o;
		boolean result=false;
		Statement  sta=null;
		try {
			sta=getSta();
			int count=sta.executeUpdate("insert into  User values("+user.getUserId()+",'"+user.getUsername()+"','"+user.getNickName()+"','"+user.getPassword()+"','"+user.getSex()+"','"+user.getEmail()+"','"+user.getHeadImage()+"')");
			result=(count>0)?true:false;//表示插入成功与否
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean delete(Object id) {
		// TODO Auto-generated method stub
		return false;
	}
	
	/**
	 * 这里是用户在个人主页修改个人信息的方法
	 */
	@Override
	public boolean update(Object o) {
		User user=(User)o;
		PreparedStatement ps=null;
		int result=0;
		try {
			String sql="update User set username=?,nickname=?,sex=?,email=?,headImage=? where userId=?";
			ps=getPreSta(sql);
			ps.setString(1,user.getUsername());
			ps.setString(2, user.getNickName());
			ps.setString(3, user.getSex());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getHeadImage());
			ps.setInt(6, user.getUserId());
			result=ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}	
		return result>0?true:false;
	}
	/**
	 * 根据用户id查找此用户
	 */
	@Override
	public User searchByUserId(int id) {
		User  user=new User();
		try {
			rs=getSta().executeQuery("select * from User where userId="+id);//根据用户id查询用户
			while(rs.next()) {
				user.setUserId(rs.getInt("userId"));
				user.setNickName(rs.getString("nickName"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setEmail(rs.getString("email"));
				user.setHeadImage(rs.getString("headImage"));
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(getSta(), rs, getCon());
		return user;
	}	
}
