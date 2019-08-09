<html>
<#include  "common/header.ftl">
<body>
<div id="wrapper" class="toggled">

<#--边栏sidebar-->
    <#include "common/nav.ftl">

    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎${admintor.username}来到首页</h1>
    <br/>
    <#--<a href="/user/find">查看类别信息</a>-->
    <#--<br/><br/>-->
    <#--<a href="/user/product">查看商品信息</a>-->
    <#--<br/><br/>-->
    <#--<a href="/user/insertUser">添加用户信息</a>-->
    <#--<br/><br/>-->
    <table border="1" cellpadding="10" cellspacing="5">

        <tr>
            <td>用户id：</td>
            <td>用户名：</td>
            <td>密码：</td>
            <td>邮箱：</td>
            <td>电话：</td>
            <td>问题：</td>
            <td>答案：</td>
            <td>权限：</td>
            <td>创建时间：</td>
            <td>最后一次更新时间：</td>
            <td>操作：</td>
            <td>操作：</td>

        </tr>

         <#list userInfos as userinfo>
        <#--<c:forEach items="${sessionScope.userInfos}" var="userinfo">-->
            <tr>
                <td>${userinfo.id}</td>
                <td>${userinfo.username}</td>
                <td>${userinfo.password}</td>
                <td>${userinfo.email}</td>
                <td>${userinfo.phone}</td>
                <td>${userinfo.question}</td>
                <td>${userinfo.answer}</td>
                <td>${userinfo.role}</td>
                <td>${userinfo.createTime?string('yyyy-MM-dd HH:mm:ss')}</td>
                <td>${userinfo.updateTime?string('yyyy-MM-dd HH:mm:ss')}</td>
                <td><a href="updateuser/${userinfo.id}">修改</a></td>
                <td><a href="deleteuser/${userinfo.id}">删除</a></td>
            </tr><br/>
        <#--</c:forEach>-->
         </#list>

    </table>


</div>
</body>
</html>