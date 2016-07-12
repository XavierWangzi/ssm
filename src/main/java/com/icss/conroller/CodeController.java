package com.icss.conroller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.icss.bean.Pay_code;
import com.icss.business.Pay_codeBusiness;



@Controller
@RequestMapping("/code")
public class CodeController {
	@Resource(name="pay_codeBusiness")
     private Pay_codeBusiness pay_codeBusiness ;
	 
	 public void setCodesBusiness(Pay_codeBusiness pay_codeBusiness) {
		this.pay_codeBusiness = pay_codeBusiness;
	}
	 
	 //删除
	 @RequestMapping("/deletebyid.do")
	 public String delete(HttpServletRequest request,Model model){
		 	Integer cid = Integer.valueOf(request.getParameter("id"));
			//System.out.println(cid);
		 	pay_codeBusiness.delete(cid);
			return "business/business_code";

	 }
	 //更新
	 @RequestMapping("updatebyid.do")
	 public String update(@ModelAttribute("code")  Pay_code code){
		 	pay_codeBusiness.updataCodes(code);
			return "business/business_code";
		
	 }
	 @RequestMapping("selectByPrimaryKey.do")
	 //按id查询
	 public ModelAndView selectByPrimaryKey(HttpServletRequest request){
		 		Integer cid = Integer.valueOf(request.getParameter("id"));
		 		System.out.println("idshi"+cid);
		 		Pay_code code=pay_codeBusiness.selectByPrimaryKey(cid);
		 		return new ModelAndView("business/UpdeteCodes","code",code);

	 }
	 
}
