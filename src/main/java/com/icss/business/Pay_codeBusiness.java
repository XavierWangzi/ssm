package com.icss.business;

import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.icss.bean.Pay_code;
import com.icss.bean.SaleRanking;
import com.icss.dao.Pay_codeMapper;


public class Pay_codeBusiness {
	
	private Pay_codeMapper pay_codeDAO;

	public Pay_codeMapper getPay_codeDAO() {
		return pay_codeDAO;
	}

	
	
	public void setPay_codeDAO(Pay_codeMapper pay_codeDAO) {
		this.pay_codeDAO = pay_codeDAO;
	}
	
	public int inserCode(Pay_code pcode){
		System.out.println("加入签单");
		pay_codeDAO.insert(pcode);
		return 0;
	}

	public Pay_code selectOne(Integer cid){
		return pay_codeDAO.selectByPrimaryKey(cid);
	}
	
	
	public List<SaleRanking> selectSaleRanking(){
        Calendar cal = Calendar.getInstance();
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONTH );
        StringBuilder builder = new StringBuilder(year+"-");
        System.out.println(builder.toString());
        String date = builder.append(month).toString();
        System.out.println(date);
		return pay_codeDAO.saleRanking(date);
	}
	
	/***********************************************************************************************/
	
	
	//删除	
		public int delete(Integer cid){
				return pay_codeDAO.deleteByPrimaryKey(cid);			
		}
		//修改
		public int update(Pay_code code){
			return pay_codeDAO.updateByPrimaryKey(code);
		}
		public int updataCodes(Pay_code code){
			//System.out.println("更新数据");
			return pay_codeDAO.updateByPrimaryKeySelective(code);
		}
		
		
		//查询(按id来查询)
		public  Pay_code selectByPrimaryKey(Integer cid){
			
				return pay_codeDAO.selectByPrimaryKey(cid);
		}
		
		//查询所有
		public List<Pay_code> selectAll(){
			return pay_codeDAO.selectAll();
		}
}
