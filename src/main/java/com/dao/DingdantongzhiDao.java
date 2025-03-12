package com.dao;

import com.entity.DingdantongzhiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DingdantongzhiVO;
import com.entity.view.DingdantongzhiView;


/**
 * 订单通知
 * 
 * @author 
 * @email 
 * @date 2021-01-15 10:24:47
 */
public interface DingdantongzhiDao extends BaseMapper<DingdantongzhiEntity> {
	
	List<DingdantongzhiVO> selectListVO(@Param("ew") Wrapper<DingdantongzhiEntity> wrapper);
	
	DingdantongzhiVO selectVO(@Param("ew") Wrapper<DingdantongzhiEntity> wrapper);
	
	List<DingdantongzhiView> selectListView(@Param("ew") Wrapper<DingdantongzhiEntity> wrapper);

	List<DingdantongzhiView> selectListView(Pagination page,@Param("ew") Wrapper<DingdantongzhiEntity> wrapper);
	
	DingdantongzhiView selectView(@Param("ew") Wrapper<DingdantongzhiEntity> wrapper);
	
}
