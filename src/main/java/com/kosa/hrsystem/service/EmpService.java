package com.kosa.hrsystem.service;

import com.kosa.hrsystem.action.ActionForward;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface EmpService {

    public ActionForward selectAll(HttpServletRequest request , HttpServletResponse response);
    public ActionForward insert(HttpServletRequest request , HttpServletResponse response);
    public ActionForward update(HttpServletRequest request, HttpServletResponse response);
    public ActionForward delete(HttpServletRequest request, HttpServletResponse response);
    public ActionForward searchId(HttpServletRequest request, HttpServletResponse response);
    public ActionForward searchPwd(HttpServletRequest request, HttpServletResponse response);
}