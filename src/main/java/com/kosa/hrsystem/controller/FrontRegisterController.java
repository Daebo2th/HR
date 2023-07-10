package com.kosa.hrsystem.controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kosa.hrsystem.action.Action;
import com.kosa.hrsystem.action.ActionForward;
import com.kosa.hrsystem.service.AttendanceOkService;
import com.kosa.hrsystem.service.DeptOkService;
import com.kosa.hrsystem.service.DeptService;
import com.kosa.hrsystem.service.EmpDeleteService;
import com.kosa.hrsystem.service.EmpOkService;
import com.kosa.hrsystem.service.EmpService;
import com.kosa.hrsystem.service.EmpUpdateService;
import com.kosa.hrsystem.service.RankOkService;
import com.kosa.hrsystem.service.RankService;
import com.kosa.hrsystem.service.WorkScheduleTypeDeleteService;
import com.kosa.hrsystem.service.WorkScheduleTypeOkService;
import com.kosa.hrsystem.service.WorkScheduleTypeService;
import com.kosa.hrsystem.service.WorkScheduleTypeUpdateService;
import com.kosa.hrsystem.service.loginOkService;

@WebServlet("*.do")
public class FrontRegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public FrontRegisterController() {
        super();

    }

    private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String requestURI = request.getRequestURI();
        String contextPath = request.getContextPath();
        String urlcommand = requestURI.substring(contextPath.length());


        Action action = null;
        ActionForward forward = null;

        if (urlcommand.equals("/login.do")) {
            //UI 제공 (서비스 객체가 필요없다)
            forward = new ActionForward(); // 서비스가 필요없으니 ActionForward객체를 직접 생성해서 사용
            forward.setRedirect(false);
            forward.setPath("/views/user/login.jsp");

        } else if (urlcommand.equals("/loginok.do")) {
            //UI 제공 + 서비스 필요
            action = new loginOkService(); // 서비스가 필요하니 서비스를 처리해주는 TestAction이라는 서비스 클래스를 생성해서 사용
            forward = action.execute(request, response); //request 클라이언트가 요청한 페이지당 1개씩 만들어지는 request객체

        } else if (urlcommand.equals("/logoutok.do")){

            HttpSession session = request.getSession();
            session.invalidate();
            forward = new ActionForward();
            forward.setRedirect(true);
            forward.setPath("/login.do");

        } else if (urlcommand.equals("/check-attendance.do")){
            // 출퇴근 체크 요청
            action = new AttendanceOkService();
            action.execute(request, response);

        } else if (urlcommand.equals("/empok.do")) {
        	// 직원 추가하기
        	action = new EmpOkService();
        	forward = action.execute(request, response);
        } else if (urlcommand.equals("/rankok.do")) {
        	// 추가하는 서비스
        	action = new RankOkService();
        	forward = action.execute(request, response);
        } else if (urlcommand.equals("/deptok.do")) {
        	// 추가하는 서비스
        	action = new DeptOkService();
        	forward = action.execute(request, response);
        } else if (urlcommand.equals("/rank.do")) {
        	action = new RankService();
        	forward = action.execute(request, response);
        } else if (urlcommand.equals("/emp.do")) {
        	action = new EmpService();
        	forward = action.execute(request, response);
        } else if (urlcommand.equals("/dept.do")) {
        	action = new DeptService();
        	forward = action.execute(request, response);
        } else if (urlcommand.equals("/empupdate.do")) {
        	action = new EmpUpdateService();
        	forward = action.execute(request, response);
        } else if (urlcommand.equals("/empdelete.do")) {
        	action = new EmpDeleteService();
        } else if (urlcommand.equals("/worktype.do")) {
        	action = new WorkScheduleTypeService();
        	forward = action.execute(request, response);
        } else if (urlcommand.equals("/worktypeok.do")) {
        	action = new WorkScheduleTypeOkService();
        	forward = action.execute(request, response);
        } else if (urlcommand.equals("/worktypeupdate.do")) {
        	action = new WorkScheduleTypeUpdateService();
        	forward = action.execute(request, response);
        } else if (urlcommand.equals("/worktypedelete.do")) {
        	action = new WorkScheduleTypeDeleteService();
        	forward = action.execute(request, response);
        } 

        if (forward != null) {
            if (forward.isRedirect()) { //true 페이지 재 요청 (location.href="페이지"
                response.sendRedirect(forward.getPath());
            } else { //기본적으로 forward ....
                //1. UI 전달된 경우
                //2. UI + 로직
                RequestDispatcher dis = request.getRequestDispatcher(forward.getPath());
                dis.forward(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
    }

}
