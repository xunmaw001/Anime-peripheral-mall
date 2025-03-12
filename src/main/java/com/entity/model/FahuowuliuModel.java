package com.entity.model;

import com.entity.FahuowuliuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 发货物流
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-01-15 10:24:47
 */
public class FahuowuliuModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 店铺名称
	 */
	
	private String dianpumingcheng;
		
	/**
	 * 商品编号
	 */
	
	private String shangpinbianhao;
		
	/**
	 * 商品名称
	 */
	
	private String shangpinmingcheng;
		
	/**
	 * 数量
	 */
	
	private String shuliang;
		
	/**
	 * 收货地址
	 */
	
	private String shouhuodizhi;
		
	/**
	 * 收货人姓名
	 */
	
	private String shouhuorenxingming;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 物流公司
	 */
	
	private String wuliugongsi;
		
	/**
	 * 物流单号
	 */
	
	private String wuliudanhao;
				
	
	/**
	 * 设置：店铺名称
	 */
	 
	public void setDianpumingcheng(String dianpumingcheng) {
		this.dianpumingcheng = dianpumingcheng;
	}
	
	/**
	 * 获取：店铺名称
	 */
	public String getDianpumingcheng() {
		return dianpumingcheng;
	}
				
	
	/**
	 * 设置：商品编号
	 */
	 
	public void setShangpinbianhao(String shangpinbianhao) {
		this.shangpinbianhao = shangpinbianhao;
	}
	
	/**
	 * 获取：商品编号
	 */
	public String getShangpinbianhao() {
		return shangpinbianhao;
	}
				
	
	/**
	 * 设置：商品名称
	 */
	 
	public void setShangpinmingcheng(String shangpinmingcheng) {
		this.shangpinmingcheng = shangpinmingcheng;
	}
	
	/**
	 * 获取：商品名称
	 */
	public String getShangpinmingcheng() {
		return shangpinmingcheng;
	}
				
	
	/**
	 * 设置：数量
	 */
	 
	public void setShuliang(String shuliang) {
		this.shuliang = shuliang;
	}
	
	/**
	 * 获取：数量
	 */
	public String getShuliang() {
		return shuliang;
	}
				
	
	/**
	 * 设置：收货地址
	 */
	 
	public void setShouhuodizhi(String shouhuodizhi) {
		this.shouhuodizhi = shouhuodizhi;
	}
	
	/**
	 * 获取：收货地址
	 */
	public String getShouhuodizhi() {
		return shouhuodizhi;
	}
				
	
	/**
	 * 设置：收货人姓名
	 */
	 
	public void setShouhuorenxingming(String shouhuorenxingming) {
		this.shouhuorenxingming = shouhuorenxingming;
	}
	
	/**
	 * 获取：收货人姓名
	 */
	public String getShouhuorenxingming() {
		return shouhuorenxingming;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：物流公司
	 */
	 
	public void setWuliugongsi(String wuliugongsi) {
		this.wuliugongsi = wuliugongsi;
	}
	
	/**
	 * 获取：物流公司
	 */
	public String getWuliugongsi() {
		return wuliugongsi;
	}
				
	
	/**
	 * 设置：物流单号
	 */
	 
	public void setWuliudanhao(String wuliudanhao) {
		this.wuliudanhao = wuliudanhao;
	}
	
	/**
	 * 获取：物流单号
	 */
	public String getWuliudanhao() {
		return wuliudanhao;
	}
			
}
