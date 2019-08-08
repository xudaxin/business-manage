<%--
  Created by IntelliJ IDEA.
  User: 徐大鑫
  Date: 2019/8/4
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户信息</title>
</head>
<body>
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

</body>
</html>
