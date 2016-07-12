package com.icss.impl;

import java.util.List;

import com.icss.bean.Pay_code;
import com.icss.bean.SaleRanking;
import com.icss.dao.Pay_codeMapper;
import com.icss.util.BasicSqlSupport;

public class Pay_codeMapperImpl extends BasicSqlSupport implements Pay_codeMapper{

	@Override
	public int deleteByPrimaryKey(Integer cid) {
		// TODO Auto-generated method stub
		return this.session.delete("com.icss.dao.Pay_codeMapper.deleteByPrimaryKey", cid);
	}

	@Override
	public int insert(Pay_code record) {
		// TODO Auto-generated method stub
		return this.session.insert("com.icss.dao.Pay_codeMapper.insert",record);
		
	}

	@Override
	public int insertSelective(Pay_code record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Pay_code selectByPrimaryKey(Integer cid) {
		// TODO Auto-generated method stub
		return this.session.selectOne("com.icss.dao.Pay_codeMapper.selectByPrimaryKey", cid);
	}

	@Override
	public int updateByPrimaryKeySelective(Pay_code record) {
		// TODO Auto-generated method stub
		return this.session.update("com.icss.dao.Pay_codeMapper.updateByPrimaryKeySelective", record);
	}

	@Override
	public int updateByPrimaryKey(Pay_code record) {
		// TODO Auto-generated method stub
		return this.session.update("com.icss.dao.Pay_codeMapper.updateByPrimaryKey",record);
	}

	@Override
	public List<Pay_code> selectAll() {
		// TODO Auto-generated method stub
		return this.session.selectList("com.icss.dao.Pay_codeMapper.selectAll");
	}

	@Override
	public List<SaleRanking> saleRanking(String date) {
		// TODO Auto-generated method stub
		return this.session.selectList("com.icss.dao.Pay_codeMapper.saleRanking", date);
	}
	
	

}
