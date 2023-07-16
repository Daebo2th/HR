package com.kosa.hrsystem.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosa.hrsystem.action.ActionForward;

public interface UserService {
	
	// 마이페이지
	public ActionForward selectOneUser(HttpServletRequest request, HttpServletResponse response);

	public ActionForward updateOneUser(HttpServletRequest request, HttpServletResponse response);

	public ActionForward insertCert(HttpServletRequest request, HttpServletResponse response);

}
