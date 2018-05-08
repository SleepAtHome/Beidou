package com.xaufe.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 跳转控制器
 * @author JYK
 */

@Controller
@RequestMapping("jump")
public class JumpController {

	//跳转到Test
	@RequestMapping("Jump2test")
	public String Jump2test(){
		return "test_page/test";
	}

	//跳转到评估
	@RequestMapping("Jump2user_evaluate")
	public String Jump2user_evaluate(){
		return "evaluate_page/evaluate_list1";
	}

	//跳转到考生论坛
	@RequestMapping("Jump2user_questionList")
	public String Jump2user_questionList(){
		return "user_page/user_xinde";
	}

	//跳转到用户心得
	@RequestMapping("Jump2user_xinde")
	public String Jump2user_xinde(){
		return "user_page/user_xinde";
	}

	//跳转到用户信息
	@RequestMapping("Jump2user_info")
	public String Jump2user_info(){
		return "user_page/user_info";
	}

	//跳转到用户信息修改
	@RequestMapping("Jump2user_info_modify")
	public String Jump2user_info_modify(){
		return "user_page/user_info_modify";
	}

	//跳转到用户主页
	@RequestMapping("Jump2user_index")
	public String Jump2user_index(){
		return "user_page/user_index";
	}

	//跳转到用户注册界面
	@RequestMapping("Jump2user_regist")
	public String Jump2user_regist(HttpSession session){
		return "user_page/user_regist";
	}

	//测试
	@RequestMapping("Jump2regist")
	public String Jump2uregist(HttpSession session){
		return "user_page/regist";
	}

	//跳转到用户登录
	@RequestMapping("Jump2user_login")
	public String Jump2user_login(){
		return "user_page/user_login";
	}

	//跳转到用户登录
	@RequestMapping("Jump2question_ask")
	public String Jump2question_ask(){
		return "question_page/question_ask";
	}

	/*@RequestMapping("jump2user_products")
	public String jump2user_products(HttpSession session){
		List<Goods> goodsData=goodService.listAllGoods();
		//将商品装入session
		session.setAttribute("allGoods", goodsData);
		return "user_page/user_products";
	}*/
	@RequestMapping("jump2user_single")
	public String jump2user_single(){

		return "user_page/user_single";
	}
	
/*	@RequestMapping("jump2user_shopping_car")
	public String jump2user_shopping_car(HttpSession session,Order order){
		User user=(User) session.getAttribute("loged");
		if(user!=null)
		{
			int userId=user.getUserId();
			System.out.println(user.getUserId());
			List<Goods> shopcarList=shopcarService.listGood2ShopcarByUserId(userId);
			System.out.println(shopcarList.isEmpty());
			session.setAttribute("shopcarList", shopcarList);
		}
		
		return "user_page/user_shopping_car";
	}*/



}
