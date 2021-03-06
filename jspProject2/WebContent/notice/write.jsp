<%@page import="com.webjjang.util.filter.AuthorityFilter"%>
<%@page import="com.webjjang.main.controller.Beans"%>
<%@page import="com.webjjang.main.controller.ExeService"%>
<%@page import="com.webjjang.notice.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 자바부분
// 넘어오는 데이터를 받는다.
String title = request.getParameter("title");
String content = request.getParameter("content");
String startDate = request.getParameter("startDate");
String endDate = request.getParameter("endDate");

// vo 객체에 생성하고 저장한다.
NoticeVO vo = new NoticeVO();
vo.setTitle(title);
vo.setContent(content);
vo.setStartDate(startDate);
vo.setEndDate(endDate);

// vo객체 데이터 확인
System.out.println("/notice/write.jsp [vo] : " + vo);

// DB에 데이터 저장 jsp(controller) - NoticeWriteService - NoticeDAO - notice table
ExeService.execute(Beans.get(AuthorityFilter.url), vo);

// 공지 등록이 끝나면 자동적으로 공지 리스트로 이동하여야 한다.
response.sendRedirect("list.jsp");
%>    
