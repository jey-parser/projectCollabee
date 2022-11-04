package com.one.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jm.dao.GetMemberIdDao;

public class LoginCheckAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		
		GetMemberIdDao gM = new GetMemberIdDao();
		int member_id = gM.GetMemberId(email);
		//System.out.println(member_id);
		
		
		request.setAttribute("loginId", member_id);
		request.getRequestDispatcher("Controller?command=Home").forward(request, response);
		
	}

}
