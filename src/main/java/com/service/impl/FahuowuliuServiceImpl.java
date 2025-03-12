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


import com.dao.FahuowuliuDao;
import com.entity.FahuowuliuEntity;
import com.service.FahuowuliuService;
import com.entity.vo.FahuowuliuVO;
import com.entity.view.FahuowuliuView;

@Service("fahuowuliuService")
public class FahuowuliuServiceImpl extends ServiceImpl<FahuowuliuDao, FahuowuliuEntity> implements FahuowuliuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FahuowuliuEntity> page = this.selectPage(
                new Query<FahuowuliuEntity>(params).getPage(),
                new EntityWrapper<FahuowuliuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FahuowuliuEntity> wrapper) {
		  Page<FahuowuliuView> page =new Query<FahuowuliuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FahuowuliuVO> selectListVO(Wrapper<FahuowuliuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FahuowuliuVO selectVO(Wrapper<FahuowuliuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FahuowuliuView> selectListView(Wrapper<FahuowuliuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FahuowuliuView selectView(Wrapper<FahuowuliuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
