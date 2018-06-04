package com.Makeup_Forever.DAO;

import java.util.ArrayList;

import com.Makeup_Forever.Model.Products;
public interface ProductsDao extends BaseDAO {
	public ArrayList<Products> ListProductsByConts(int  count);//定义一个集合，根据数量显示产品的个数
	public ArrayList<Products> SearchByKeywords(String keywords);//定义一个集合，用于查找该商品的关键字，匹配符合该关键字的商品
	public Products searchByProID(int id);//定义一个根据商品id查询商品详情的方法，返回类型是单个的Products对象
	public ArrayList<Products> ListAllProducts();//定义一个集合，负责将查询的所有的商品信息显示;
}
