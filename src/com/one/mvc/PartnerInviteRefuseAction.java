package com.one.mvc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.ta.dao.PartnerDao;

public class PartnerInviteRefuseAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		PartnerDao pDao = new PartnerDao();
		int loginId = Integer.parseInt(request.getParameter("loginId"));
		int memberId = Integer.parseInt(request.getParameter("memberId"));
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		JSONObject obj = new JSONObject();
		
		pDao.inviteRefuse(loginId,memberId);
		obj.put("alarm_count",pDao.getCountAlarm(loginId));
		out.print(obj);
	}
}
