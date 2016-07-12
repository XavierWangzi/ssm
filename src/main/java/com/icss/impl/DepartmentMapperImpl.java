package com.icss.impl;

import java.util.List;

import com.icss.bean.Department;
import com.icss.dao.DepartmentMapper;
import com.icss.util.BasicSqlSupport;

public class DepartmentMapperImpl extends BasicSqlSupport implements DepartmentMapper{

	@Override
	public int deleteByPrimaryKey(Integer did) {
		// TODO Auto-generated method stub
		return this.session.delete("com.icss.dao.DepartmentMapper.deleteByPrimaryKey", did);
	}

	@Override
	public int insert(Department record) {
		// TODO Auto-generated method stub
		int count=this.session.insert("com.icss.dao.DepartmentMapper.insert",record);
		return count;

	}

	@Override
	public int insertSelective(Department record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Department selectByPrimaryKey(Integer did) {
		// TODO Auto-generated method stub
		return this.session.selectOne("com.icss.dao.DepartmentMapper.selectByPrimaryKey", did);
	}

	@Override
	public int updateByPrimaryKeySelective(Department record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Department record) {
		// TODO Auto-generated method stub
		return this.session.update("com.icss.dao.DepartmentMapper.updateByPrimaryKey",record);
	}

	@Override
	public List<Department> selectDeptInfo() {
		// TODO Auto-generated method stub
		List<Department> list = this.session.selectList("com.icss.dao.DepartmentMapper.selectDeptInfo");
		return list;

	}

	@Override
	public List<Department> SelectAll() {
		// TODO Auto-generated method stub
		return this.session.selectList("com.icss.dao.DepartmentMapper.SelectAll");
	}

}
