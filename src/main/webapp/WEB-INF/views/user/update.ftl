
<html>
<head>
    <title>修改信息</title>
</head>
<body>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>修改用户信息：</h1>
<br/><br/>

<form action="/user/reallyupdateuser" method="post">
    <span>用户id：</span>
    <input type="text" value="${updateuser.id}" name="id"  readonly="true"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>id是不可以修改的</span>
    </br> </br>
    <span>用户名：</span>
    <input type="text" value="${updateuser.username}" name="username"/>
    </br></br>
    <span>密码：</span>
    <input type="password" value="${updateuser.password}" name="password"/>
    </br> </br>
    <span>邮箱：</span>
    <input type="email" value="${updateuser.email}" name="email"/>
    </br> </br>
    <span>电话：</span>
    <input type="tel" value="${updateuser.phone}" name="phone"/>
    </br> </br>
    <span>问题：</span>
    <input type="text" value="${updateuser.question}" name="question"/>
    </br> </br>
    <span>回答：</span>
    <input type="text" value="${updateuser.answer}" name="answer"/>
    </br></br>
    <span>权限：</span>
    <input type="text" value="${updateuser.role}" name="role"/>
    </br></br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交" />
</form>
</body>
</html>
