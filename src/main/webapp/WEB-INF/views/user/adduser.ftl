<html>
<head>
    <title>添加用户信息</title>
</head>
<#include  "common/header.ftl">
<body>
<div id="wrapper" class="toggled">

<#--边栏sidebar-->
    <#include "common/nav.ftl">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>填写用户信息</h1>
    <form action="/user/reallyinsertUser" method="post">
        <span>用户名：</span>
        <input type="text" name="username"/>
        </br></br>
        <span>密码：</span>
        <input type="password" name="password"/>
        </br></br>
        <span>邮箱：</span>
        <input type="email" name="email"/>
        </br> </br>
        <span>电话：</span>
        <input type="tel" name="phone"/>
        </br> </br>
        <span>问题：</span>
        <input type="text" name="question"/>
        </br> </br>
        <span>回答：</span>
        <input type="text" name="answer"/>
        </br> </br>
        <span>权限：</span>
        <input type="text" name="role"/>
        </br> </br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="添加" />
    </form>


</div>
</body>
</html>