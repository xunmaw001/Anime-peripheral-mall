package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DingdantongzhiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DingdantongzhiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DingdantongzhiView;


/**
 * 订单通知
 *
 * @author 
 * @email 
 * @date 2021-01-15 10:24:47
 */
public interface DingdantongzhiService extends IService<DingdantongzhiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DingdantongzhiVO> selectListVO(Wrapper<DingdantongzhiEntity> wrapper);
   	
   	DingdantongzhiVO selectVO(@Param("ew") Wrapper<DingdantongzhiEntity> wrapper);
   	
   	List<DingdantongzhiView> selectListView(Wrapper<DingdantongzhiEntity> wrapper);
   	
   	DingdantongzhiView selectView(@Param("ew") Wrapper<DingdantongzhiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DingdantongzhiEntity> wrapper);
   	
}

