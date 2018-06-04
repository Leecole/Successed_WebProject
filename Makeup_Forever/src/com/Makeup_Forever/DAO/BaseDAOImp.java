package com.Makeup_Forever.DAO;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.Connection;
public abstract class BaseDAOImp  implements BaseDAO{
	private Connection con;
	private Statement sta;
	private PreparedStatement  preSta;
	/**
	 * @return the con
	 */
	public Connection getCon() {
		try {
			Class.forName(driverClass);//加载驱动
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		try {
			con=DriverManager.getConnection(url,username,password);//建立链接
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	public PreparedStatement getPreSta(String sql) {
		try {
			preSta=getCon().prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return preSta;
	}


	
	public Statement getSta() {//创建会话
		try {
			sta=getCon().createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return sta;
	}



	public BaseDAOImp() {
		super();
		try {
			Class.forName(driverClass);//加载驱动
			con=DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void disposeResource(Statement sta, ResultSet rs) {// dispose释放，关闭资源
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (sta != null) {
			try {
				sta.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public void disposeResource(Statement sta, java.sql.ResultSet rs, Connection con) {// dispose释放，关闭资源
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (sta != null) {
			try {
				sta.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	

	

	
	


}
