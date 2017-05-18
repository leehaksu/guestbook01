<%@page import="com.jx372.guestbook.Dao.GuestBookDao"%>
<%@page import="com.jx372.guestbook.vo.GuestBookVo"%>

<%
request.setCharacterEncoding("utf-8");
String name =request.getParameter("name");
String pass=request.getParameter("pass");
String message=request.getParameter("message");
GuestBookVo vo = new GuestBookVo();
vo.setName(name);
vo.setPasswd(pass);
vo.setMessage(message);
new GuestBookDao().insert(vo);
//리다이렉트 응답
response.sendRedirect("./index.jsp");
%>
