package com.hcoa.dao;

import com.hcoa.entity.Notices;
import com.hcoa.entity.NoticesExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface NoticesMapper {
	
    int countByExample(NoticesExample example);

    int deleteByExample(NoticesExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Notices record);

    int insertSelective(Notices record);

    List<Notices> selectByExampleWithBLOBs(NoticesExample example);

    List<Notices> selectByExample(NoticesExample example);

    Notices selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Notices record, @Param("example") NoticesExample example);

    int updateByExampleWithBLOBs(@Param("record") Notices record, @Param("example") NoticesExample example);

    int updateByExample(@Param("record") Notices record, @Param("example") NoticesExample example);

    int updateByPrimaryKeySelective(Notices record);

    int updateByPrimaryKeyWithBLOBs(Notices record);

    int updateByPrimaryKey(Notices record);
}