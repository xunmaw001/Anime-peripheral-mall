package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FahuowuliuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FahuowuliuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FahuowuliuView;


/**
 * 发货物流
 *
 * @author 
 * @email 
 * @date 2021-01-15 10:24:47
 */
public interface FahuowuliuService extends IService<FahuowuliuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FahuowuliuVO> selectListVO(Wrapper<FahuowuliuEntity> wrapper);
   	
   	FahuowuliuVO selectVO(@Param("ew") Wrapper<FahuowuliuEntity> wrapper);
   	
   	List<FahuowuliuView> selectListView(Wrapper<FahuowuliuEntity> wrapper);
   	
   	FahuowuliuView selectView(@Param("ew") Wrapper<FahuowuliuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FahuowuliuEntity> wrapper);
   	
}

