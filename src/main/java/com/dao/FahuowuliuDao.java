package com.dao;

import com.entity.FahuowuliuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FahuowuliuVO;
import com.entity.view.FahuowuliuView;


/**
 * 发货物流
 * 
 * @author 
 * @email 
 * @date 2021-01-15 10:24:47
 */
public interface FahuowuliuDao extends BaseMapper<FahuowuliuEntity> {
	
	List<FahuowuliuVO> selectListVO(@Param("ew") Wrapper<FahuowuliuEntity> wrapper);
	
	FahuowuliuVO selectVO(@Param("ew") Wrapper<FahuowuliuEntity> wrapper);
	
	List<FahuowuliuView> selectListView(@Param("ew") Wrapper<FahuowuliuEntity> wrapper);

	List<FahuowuliuView> selectListView(Pagination page,@Param("ew") Wrapper<FahuowuliuEntity> wrapper);
	
	FahuowuliuView selectView(@Param("ew") Wrapper<FahuowuliuEntity> wrapper);
	
}
