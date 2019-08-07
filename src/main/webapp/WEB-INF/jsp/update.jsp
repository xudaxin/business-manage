<%--
  Created by IntelliJ IDEA.
  User: 徐大鑫
  Date: 2019/8/4
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
</head>
<body>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>修改用户信息：</h1>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;原信息
<br/><br/>
<%--<form action="/reallyupdate" method="post">--%>
    <%--&lt;%&ndash;<span>用户名</span>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<input type="text" name="username" />&ndash;%&gt;--%>
    <%--&lt;%&ndash;<input type="submit" value="提交" />&ndash;%&gt;--%>
<%--</form>--%>

<form action="/reallyupdate" method="post">
    <span>用户id：</span>
    <input type="text" value="${userupdate.userid}" name="userid"  readonly="true"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>id是不可以修改的</span>
    </br> </br>
    <span>用户名：</span>
    <input type="text" name="username"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${userupdate.username}</span>
    </br></br>
    <span>电话：</span>
    <input type="tel" name="phone"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${userupdate.phone}</span>
    </br> </br>
    <span>密码：</span>
    <input type="password" name="password"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${userupdate.password}</span>
    </br> </br>
    <span>邮箱：</span>
    <input type="email" name="email"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${userupdate.email}</span>
    </br> </br>
    <span>性别：</span>
    <input type="text" name="sex"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>${userupdate.sex}</span>
    </br> </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交" />
</form>
</body>
</html>
