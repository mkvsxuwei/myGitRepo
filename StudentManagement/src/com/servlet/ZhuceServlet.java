package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.dao.UserDaoImpl;
import com.entity.User;

public class ZhuceServlet extends HttpServlet{

	//用来实现用户注册的操作
	public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		//获取jsp页面传过来的参数
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String sex = request.getParameter("sex");
		String home = request.getParameter("home");
		String info = request.getParameter("info");

		User user = new User();//实例化一个对象，组装属性
		user.setName(name);
		user.setPwd(pwd);
		user.setSex(sex);
		user.setHome(home);
		user.setInfo(info);
		
		UserDao ud = new UserDaoImpl();
		
		if(ud.register(user)){
			//向request域中放置参数
			
			request.setAttribute("username", name);
			//request.setAttribute("xiaoxi", "注册成功");
			request.getRequestDispatcher("/denglu.jsp").forward(request, response);
			
		}else{
			//重定向到首页
			response.sendRedirect("index.jsp");
		}
	}
}
