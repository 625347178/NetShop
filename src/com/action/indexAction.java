package com.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TGoodsDAO;
import com.dao.TOrderItemDAO;
import com.model.TGoods;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
	private TGoodsDAO goodsDAO;
	
	private TOrderItemDAO orderItemDAO;

	private String goodsName;
	private String bprice;
	private String eprice;
	
	public String index()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		
		/*
		 * 按照goodId降序排列，保证所搜索到的前五个商品为最新添加的五个
		 * 加上一个约束条件 非特价
		 */
		String sql="from TGoods where goodsDel='no' and goodsIsnottejia='yes' order by goodsId desc";
		List goodsYesTejiaList=goodsDAO.getHibernateTemplate().find(sql);
		if(goodsYesTejiaList.size()>5)
		{
			goodsYesTejiaList=goodsYesTejiaList.subList(0, 5);
		}
		request.put("goodsYesTejiaList", goodsYesTejiaList);
		
		
		/*
		 * 按照goodId降序排列，保证所搜索到的前五个商品为最新添加的五个
		 * 加上一个约束条件 特价
		 */
		sql="from TGoods where goodsDel='no' and goodsIsnottejia='no' order by goodsId desc";
		List goodsNoTejiaList=goodsDAO.getHibernateTemplate().find(sql);
		if(goodsNoTejiaList.size()>5)
		{
			goodsNoTejiaList=goodsNoTejiaList.subList(0, 5);
		}
		request.put("goodsNoTejiaList", goodsNoTejiaList);
		
		
		/*
		 * 从订单项表按照goodsId的数量降序排列后取前
		 */
		List goodsList=new ArrayList();
		sql="select sum(goodsQuantity),goodsId from TOrderItem group by goodsId order by sum(goodsQuantity) desc";
		List list=orderItemDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<list.size();i++)
		{
			Object[] b=(Object[])list.get(i);
			int goodsId=Integer.parseInt(b[1].toString());
			System.out.println(goodsId+"&&");
			TGoods goods=goodsDAO.findById(goodsId);
			goodsList.add(goods);
		}
		if(goodsList.size()>5)
		{
			goodsList=goodsList.subList(0, 5);
		}
		request.put("goodsList", goodsList);
		//热销商品
		return ActionSupport.SUCCESS;
	}
	

	public String search()
	{ 
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		String sql = "from TGoods where goodsDel='no'  " ; 
		if( goodsName != null&&!goodsName.equals("")) {
			sql +=  " and  goodsName  like '%" + goodsName+ "%' " ;
		}
		if( bprice != null&&!bprice.equals("")) {
			sql +=  " and  goodsShichangjia >=" + bprice;
		}
		if( eprice != null&&!eprice.equals("")) {
			sql +=  " and  goodsShichangjia <=" + eprice;
		}
		sql += "  order by goodsId desc";
		
		System.out.println("--------------------  "+sql);
		List goodsList=goodsDAO.getHibernateTemplate().find(sql);
		  
		request.put("goodsList", goodsList);

		return ActionSupport.SUCCESS;
	}
	
	
	public String getGoodsName() {
		return goodsName;
	}


	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}


	public TGoodsDAO getGoodsDAO()
	{
		return goodsDAO;
	}

	public void setGoodsDAO(TGoodsDAO goodsDAO)
	{
		this.goodsDAO = goodsDAO;
	}


	public TOrderItemDAO getOrderItemDAO()
	{
		return orderItemDAO;
	}


	public void setOrderItemDAO(TOrderItemDAO orderItemDAO)
	{
		this.orderItemDAO = orderItemDAO;
	}


	public String getBprice() {
		return bprice;
	}


	public void setBprice(String bprice) {
		this.bprice = bprice;
	}


	public String getEprice() {
		return eprice;
	}


	public void setEprice(String eprice) {
		this.eprice = eprice;
	}
	
}
