package com.entity.view;

import com.entity.DingdantongzhiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 订单通知
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-15 10:24:47
 */
@TableName("dingdantongzhi")
public class DingdantongzhiView  extends DingdantongzhiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DingdantongzhiView(){
	}
 
 	public DingdantongzhiView(DingdantongzhiEntity dingdantongzhiEntity){
 	try {
			BeanUtils.copyProperties(this, dingdantongzhiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
