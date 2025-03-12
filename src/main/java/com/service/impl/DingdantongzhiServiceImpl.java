package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DingdantongzhiDao;
import com.entity.DingdantongzhiEntity;
import com.service.DingdantongzhiService;
import com.entity.vo.DingdantongzhiVO;
import com.entity.view.DingdantongzhiView;

@Service("dingdantongzhiService")
public class DingdantongzhiServiceImpl extends ServiceImpl<DingdantongzhiDao, DingdantongzhiEntity> implements DingdantongzhiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DingdantongzhiEntity> page = this.selectPage(
                new Query<DingdantongzhiEntity>(params).getPage(),
                new EntityWrapper<DingdantongzhiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DingdantongzhiEntity> wrapper) {
		  Page<DingdantongzhiView> page =new Query<DingdantongzhiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DingdantongzhiVO> selectListVO(Wrapper<DingdantongzhiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DingdantongzhiVO selectVO(Wrapper<DingdantongzhiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DingdantongzhiView> selectListView(Wrapper<DingdantongzhiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DingdantongzhiView selectView(Wrapper<DingdantongzhiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
