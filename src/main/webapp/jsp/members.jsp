<%@ page import="io.hkarling.servlet.domain.member.MemberRepository" %>
<%@ page import="io.hkarling.servlet.domain.member.Member" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: CHAMSOL
  Date: 2022-08-10
  Time: 오후 3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
  MemberRepository memberRepository = MemberRepository.getInstance();
  List<Member> members = memberRepository.findAll();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/index.html">메인</a>
<table>
  <thead>
    <tr>
      <th>id</th>
      <th>username</th>
      <th>age</th>
    </tr>
  </thead>
  <tbody>
<%
  for (Member member : members) {
    out.write("    <tr>");
    out.write("    <td>" + member.getId() + "</td>");
    out.write("    <td>" + member.getUsername() + "</td>");
    out.write("    <td>" + member.getAge() + "</td>");
    out.write("    </tr>");
  }
%>
  </tbody>
</table>
</body>
</html>
