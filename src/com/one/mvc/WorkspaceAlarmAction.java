package com.one.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.one.dao.WorkspaceAlarmDao;

public class WorkspaceAlarmAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int member_id = Integer.parseInt(request.getParameter("loginId"));
		int onAlarm = Integer.parseInt(request.getParameter("onAlarm"));
		int workspace_id = Integer.parseInt(request.getParameter("workspace_id"));
		
		WorkspaceAlarmDao dao = new WorkspaceAlarmDao();
		int result = dao.setWorkspace_Alarm(onAlarm, member_id, workspace_id);
		JSONObject obj = new JSONObject();
		obj.put("result", result);
	}

}
