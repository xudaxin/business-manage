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
<form action="/reallyinsert" method="post">
    <span>用户名：</span>
    <input type="text" name="username"/>
    </br></br>
    <span>电话：</span>
    <input type="tel" name="phone"/>
    </br></br>
    <span>密码：</span>
    <input type="password" name="password"/>
    </br> </br>
    <span>邮箱：</span>
    <input type="email" name="email"/>
    </br> </br>
    <span>性别：</span>
    <input type="text" name="sex"/>
    </br> </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="添加" />
</form>

</body>
</html>
