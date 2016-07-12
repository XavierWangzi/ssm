package com.icss.dao;

import java.util.List;

import com.icss.bean.Pay_code;
import com.icss.bean.SaleRanking;

public interface Pay_codeMapper {
    int deleteByPrimaryKey(Integer cid);

    int insert(Pay_code record);

    int insertSelective(Pay_code record);

    Pay_code selectByPrimaryKey(Integer cid);

    int updateByPrimaryKeySelective(Pay_code record);

    int updateByPrimaryKey(Pay_code record);
    
    List<Pay_code> selectAll();
    
    List<SaleRanking> saleRanking(String date);
}