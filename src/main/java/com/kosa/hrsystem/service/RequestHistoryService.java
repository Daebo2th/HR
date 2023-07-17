package com.kosa.hrsystem.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosa.hrsystem.action.ActionForward;

public interface RequestHistoryService {

    public ActionForward selectAllRequest(HttpServletRequest request , HttpServletResponse response);
    public ActionForward update(HttpServletRequest request , HttpServletResponse response);

}
