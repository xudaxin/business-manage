<%--
  Created by IntelliJ IDEA.
  User: xudaxin
  Date: 2019/8/7
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改类别信息</title>
</head>
<body>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>修改类别信息：</h1>
<br/><br/>

<form action="/user/reallyupdate" method="post">
    <span>类别id：</span>
    <input type="text" value="${updatecategory.id}" name="id"  readonly="true"/>&nbsp;&nbsp;&nbsp;<span>id是不可以修改的</span>
    </br> </br>
    <span>父类id：</span>
    <input type="text" value="${updatecategory.parentId}" name="parentId"/>
    </br></br>
    <span>类别名：</span>
    <input type="text" value="${updatecategory.name}" name="name"/>
    </br> </br>
    <span>类别状态：</span>
    <input type="text" value="${updatecategory.status}" name="status"/>
    </br> </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交" />
</form>

</body>
</html>
