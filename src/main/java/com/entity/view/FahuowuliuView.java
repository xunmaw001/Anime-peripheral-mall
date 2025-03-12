package com.entity.view;

import com.entity.FahuowuliuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 发货物流
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-15 10:24:47
 */
@TableName("fahuowuliu")
public class FahuowuliuView  extends FahuowuliuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public FahuowuliuView(){
	}
 
 	public FahuowuliuView(FahuowuliuEntity fahuowuliuEntity){
 	try {
			BeanUtils.copyProperties(this, fahuowuliuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
