package com.icss.conroller;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.icss.bean.Add_pers;
import com.icss.bean.Department;
import com.icss.bean.Pay_code;
import com.icss.bean.User_info;
import com.icss.business.Add_persBusiness;
import com.icss.business.DepartmentBusiness;
import com.icss.business.Pay_codeBusiness;
import com.icss.business.User_infoBusiness;
import com.icss.util.PageBean;

@Controller
@RequestMapping("/frame")
public class Frame_left {
	@Resource(name="user_infoBusiness")
	private User_infoBusiness user_infoBusiness = null;
	
	@Resource(name="add_persBusiness")
	private Add_persBusiness add_persBusiness = null;

	@Resource(name="departmentBusiness")
	 private DepartmentBusiness departmentBusiness;
	
	@Resource(name="pay_codeBusiness")
    private Pay_codeBusiness pay_codeBusiness ;
	 
	 public void setCodesBusiness(Pay_codeBusiness pay_codeBusiness) {
		this.pay_codeBusiness = pay_codeBusiness;
	}
	
	public void setAdd_persBusiness(Add_persBusiness add_persBusiness) {
		this.add_persBusiness = add_persBusiness;
	}

	public void setUser_infoBusiness(User_infoBusiness user_infoBusiness) {
		this.user_infoBusiness = user_infoBusiness;
	}
	
	@RequestMapping("/admin_manager.do")
	public String admin_manager(){
		//System.out.println("管理员");
		return "admin/admin_manager";
	}
	
	
	@RequestMapping("/customer_manager.do")
	public String customer_manager(HttpSession session){
		
		PageBean<User_info> page = user_infoBusiness.selectAllInfo(1,session);
		List<User_info> costomer = page.getList();
		
//		Iterator<User_info> it = costomer.iterator();
//		while(it.hasNext()){
//			User_info user = new User_info();
//			user = it.next();
//			System.out.println(user.getUid()+"%%%"+user.getUname());
//		}
		System.out.println("=============总页数为"+page.getPages());
		
		session.setAttribute("allCostomerInfo", costomer);
		session.setAttribute("pages", page.getPages());
		
		return "customer/customer_management";
	}
	
	
	
	/**
	 * 陈强
	 * @param session
	 * @return
	 */
	@RequestMapping("business_code.do")
	public String business_code(HttpSession session){
		/*List<Pay_code> code = pay_codeBusiness.selectAll();
//		System.out.println(code);
//
//		System.out.println("22222");
		session.setAttribute("codes",code);	*/
		System.out.println("业务管理");
		return "business/business_code";
	}
	
	/**
	 * 陈强
	 * @param session
	 * @return
	 */
	@RequestMapping("employee_manager.do")
	public String employee_manager(HttpSession session){
//		List<Add_pers> list= add_persBusiness.findAll();
		
//		List<Department> listDep = departmentBusiness.selectAll();
//		System.out.println(listDep);
//		session.setAttribute("listAll", list);
		
//		Iterator<Department> it = listDep.iterator();
//		while(it.hasNext()){
//			Department dep = it.next();
//			System.out.println(dep.getdName());
//		}
//		session.setAttribute("list", listDep);
//		System.out.println("员工管理");
		return "employee/Employee_manager";
		
	}
	
	@RequestMapping("showMe.do")
	public String showMe(HttpServletRequest request,HttpSession session){
		String uid =request.getParameter("uid");
		if(!"".equals(uid) && uid!=null){
			Add_pers pers = add_persBusiness.selectoneper(uid);
			session.setAttribute("loginper", pers);
		}
		return "mine";
	}
	
	@RequestMapping("editMyInfo.do")
	public String editMyInfo(){
		return "admin/edit_mineInfo";
	}
	
	@RequestMapping("editPwd.do")
	public String editPwd(){
		return "admin/edit_pwd";
	}
}
