package com.xaufe.controller;

import com.alibaba.fastjson.JSONObject;
import com.xaufe.entity.Area;
import com.xaufe.model.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


@Controller
@RequestMapping("area")
public class AreaController {
	@Autowired
	AreaService areaService;
	//初始化省
	@RequestMapping("province")
	public void getProvince(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain;charset=utf-8");
		PrintWriter out=resp.getWriter();
		List<Area> province=areaService.getNeedArea((short) 0,0);

		JSONObject json=new JSONObject();
		json.put("province",province);

		//System.out.println(json.toJSONString());
		out.print(json.toJSONString());

		out.close();
	}

	//初始化市
	@RequestMapping("city")
	public void getCity(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain;charset=utf-8");
		PrintWriter out=resp.getWriter();

		String pid=null!=req.getParameter("parentId")?req.getParameter("parentId"):"-1";
		List<Area> cities=areaService.getNeedArea(Short.parseShort(pid),0);

		JSONObject json=new JSONObject();
		json.put("cities",cities);

		out.print(json.toJSONString());

		out.close();
	}

	//初始化区
	@RequestMapping("district")
	public void getDistrict(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain;charset=utf-8");
		PrintWriter out=resp.getWriter();

		String pid=null!=req.getParameter("parentId")?req.getParameter("parentId"):"-1";
		List<Area> district=areaService.getNeedArea(Short.parseShort(pid),0);

		JSONObject json=new JSONObject();
		json.put("district",district);
		out.print(json.toJSONString());
		out.close();
	}


}
