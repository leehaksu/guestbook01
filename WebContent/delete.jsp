<%@page import="com.jx372.guestbook.Dao.GuestBookDao"%>
<%@page import="com.jx372.guestbook.vo.GuestBookVo"%>
<%
request.setCharacterEncoding("utf-8");
String pass=request.getParameter("pass");
String no=request.getParameter("no");
System.out.println(no + " : "+ pass);
Long No = Long.parseLong(no);
GuestBookVo vo = new GuestBookVo();
vo.setPasswd(pass);
vo.setNo(No);
new GuestBookDao().delete(vo);
//리다이렉트 응답
response.sendRedirect("./index.jsp");
%>