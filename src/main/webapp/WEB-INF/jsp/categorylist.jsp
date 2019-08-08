<%--
  Created by IntelliJ IDEA.
  User: xudaxin
  Date: 2019/8/7
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>所有类别信息</title>
</head>
<body>

<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎${admintor.username}来到类别管理页</h1>
<br/><a href="/user/index">查看用户信息</a>
<br/><br/>
<br/><a href="/user/product">查看商品信息</a>
<br/><br/>
<a href="/user/insertcategory">添加类别信息</a>
<br/>
<table border="1" cellpadding="10" cellspacing="5">

    <tr>
        <td>类别id：</td>
        <td>父id：</td>
        <td>类别名：</td>
        <td>类别状态：</td>
        <td>创建时间：</td>
        <td>最后一次更新时间：</td>
        <td>操作：</td>
        <td>操作：</td>
    </tr>

    <c:forEach items="${categorylists}" var="category">
        <tr>
            <td>${category.id}</td>
            <td>${category.parentId}</td>
            <td>${category.name}</td>
            <td>${category.status}</td>
            <td>${category.createTime}</td>
            <td>${category.updateTime}</td>
            <td><a href="update/${category.id}">修改</a></td>
            <td><a href="delete/${category.id}">删除</a></td>
        </tr><br/>
    </c:forEach>

</table>

</body>
</html>
