<%--
  Created by IntelliJ IDEA.
  User: xudaxin
  Date: 2019/8/8
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品信息页</title>
</head>
<body>

<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎${admintor.username}来商品首页</h1>
<br/>
<a href="/user/find">查看类别信息</a>
<br/><br/>
<a href="/user/index">查看用户信息</a>
<br/><br/>
<a href="/user/addproduct">添加商品信息</a>
<br/>
<table border="1" cellpadding="10" cellspacing="5">

    <tr>
        <td>商品id：</td>
        <td>商品类别：</td>
        <td>商品名称：</td>
        <td>商品副标题：</td>
        <td>商品主图：</td>
        <td>商品副图：</td>
        <td>商品详情：</td>
        <td>商品价格：</td>
        <td>库存：</td>
        <td>商品状态：</td>
        <td>创建时间：</td>
        <td>最后一次更新时间：</td>
        <td>操作：</td>
        <td>操作：</td>

    </tr>

    <c:forEach items="${sessionScope.productlist}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.categoryId}</td>
            <td>${product.name}</td>
            <td>${product.subtitle}</td>
            <td><img src="${product.mainImage}"></td>
            <td><img src="${product.subImages}"></td>
            <td>${product.detail}</td>
            <td>${product.price}</td>
            <td>${product.stock}</td>
            <td>${product.status}</td>
            <td>${product.createTime}</td>
            <td>${product.updateTime}</td>
            <td><a href="updateproduct/${product.id}">修改</a></td>
            <td><a href="deleteproduct/${product.id}">删除</a></td>
        </tr><br/>
    </c:forEach>

</table>

</body>
</html>
