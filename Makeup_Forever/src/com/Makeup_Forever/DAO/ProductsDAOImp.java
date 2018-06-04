package com.Makeup_Forever.DAO;
import com.Makeup_Forever.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.Makeup_Forever.Model.Products;

public class ProductsDAOImp extends BaseDAOImp implements ProductsDao{
	ResultSet rs=null;
	Connection conn;
	PreparedStatement pre;
	/* (non-Javadoc)
	 * @see com.Makeup_Forever.DAO.ProductsDao#ListProductsByConts(int)
	 *
	 */
	//根据传入的数量，显示列表中的商品
	/* (non-Javadoc)
	 * @see com.Makeup_Forever.DAO.BaseDao#add(java.lang.Object)
	 */
	@Override
	public boolean add(Object o) {
		return false;
	}
	@Override
	public ArrayList<Products> ListProductsByConts(int count) {//根据给定的个数，给出所有的商品个数列表
		ArrayList<Products> products=new ArrayList<Products>();
		
		try {
			rs=getSta().executeQuery("select * from Products limit"+count);
			while(rs.next())
			{
				Products  pro=new Products();
				pro.setProID(rs.getInt("proID"));
				pro.setProName(rs.getString("proName"));
				pro.setProPrice(rs.getFloat("proPrice"));
				pro.setPicture(rs.getString("picture"));
				pro.setProType(rs.getString("proType"));
				pro.setProDetails(rs.getString("proDetails"));
				products.add(pro);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(getSta(), rs, getCon());
		return products;
	}
	/* (non-Javadoc)
	 * @see com.Makeup_Forever.DAO.ProductsDao#ListByProductType(java.lang.String)
	 */
	@Override
	public ArrayList<Products> SearchByKeywords(String keywords) {//根据商品类型，列出该商品类型的所有商品
		ArrayList<Products> products=new ArrayList<Products>();
		try {
			String sql="select * from Products where proName ='"+keywords+ "' or  proType ='"+keywords+"'";
			//String sql="select * from Products where proName like '%"+keywords+"%' and proType like '%"+keywords+"%'";
			
			rs=getSta().executeQuery(sql);
			while(rs.next())
			{
				Products  pro=new Products();
				pro.setProID(rs.getInt("proID"));
				pro.setProName(rs.getString("proName"));
				pro.setProPrice(rs.getFloat("proPrice"));
				pro.setPicture(rs.getString("picture"));
				pro.setProType(rs.getString("proType"));
				pro.setProDetails(rs.getString("proDetails"));
				products.add(pro);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(getSta(), rs, getCon());
		return products;
	}
	
	/**
	 * 模糊查询
	 */
	/*public ArrayList<Products> SearchByKeywords(String keywords ) {//根据商品类型，列出该商品类型的所有商品
		ArrayList<Products> product=new ArrayList<Products>();
		
		try {
			Products pro=new Products();
			ResultSet rs=getSta().executeQuery("select * from Products where proName='"+keywords+"' or proType='"+keywords+"'");
			while(rs.next())
			{
				
				pro.setProID(rs.getInt("proID"));
				pro.setProName(rs.getString("proName"));
				pro.setProPrice(rs.getFloat("proPrice"));
				pro.setPicture(rs.getString("picture"));
				pro.setProType(rs.getString("proType"));
				pro.setProDetails(rs.getString("proDetails"));
				product.add(pro);
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return product;
	}*/
	
	/* (non-Javadoc)
	 * @see com.Makeup_Forever.DAO.ProductsDao#searchByProID(java.lang.String)
	 */
	@Override
	public Products searchByProID(int id) {//返回类型是单个的Products对象
		Products pro=new Products();
		try {
			ResultSet rs=getSta().executeQuery("select * from Products where proID="+id);
			while(rs.next())
			{
				
				pro.setProID(rs.getInt("proID"));
				pro.setProName(rs.getString("proName"));
				pro.setProPrice(rs.getFloat("proPrice"));
				pro.setPicture(rs.getString("picture"));
				pro.setProType(rs.getString("proType"));
				pro.setProDetails(rs.getString("proDetails"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(getSta(), rs, getCon());
		return pro;
	}
	@Override
	public ArrayList<Products> ListAllProducts() {
		ArrayList<Products> products=new ArrayList<Products>();
		try {
			rs=getSta().executeQuery("select * from Products");
			while(rs.next())
			{
				Products  pro=new Products();
				pro.setProID(rs.getInt("proID"));
				pro.setProName(rs.getString("proName"));
				pro.setPicture(rs.getString("picture"));
				pro.setProType(rs.getString("proType"));
				pro.setProDetails(rs.getString("proDetails"));
				products.add(pro);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		disposeResource(getSta(), rs, getCon());
		return products;
	}
	@Override
	public boolean delete(Object id) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean update(Object o) {
		// TODO Auto-generated method stub
		return false;
	}
}
