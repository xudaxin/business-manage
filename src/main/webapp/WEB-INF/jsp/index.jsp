<%--
  Created by IntelliJ IDEA.
  User: 徐大鑫
  Date: 2019/8/3
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎${user.username}来到首页</h1>
<br/>
<a href="/insert">添加用户信息</a>
<br/>
<table border="1" cellpadding="10" cellspacing="5">

<tr>
    <td>用户id：</td>
    <td>用户名：</td>
    <td>电话：</td>
    <td>密码：</td>
    <td>邮箱：</td>
    <td>性别：</td>
    <td>操作：</td>
    <td>操作：</td>
</tr>

<c:forEach items="${sessionScope.userlist}" var="user1">
    <tr>
        <td>${user1.userid}</td>
        <td>${user1.username}</td>
        <td>${user1.phone}</td>
        <td>${user1.password}</td>
        <td>${user1.email}</td>
        <td>${user1.sex}</td>
        <td><a href="update?userid=${user1.userid}&username=${user1.username}&phone=${user1.phone}&password=${user1.password}&email=${user1.email}&sex=${user1.sex}">修改</a></td>
        <td><a href="delete?id=${user1.userid}&username=${user.username}&password=${user.password}">删除</a></td>
    </tr><br/>
</c:forEach>

</table>



</body>
</html>
