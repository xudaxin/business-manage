<%--
  Created by IntelliJ IDEA.
  User: xudaxin
  Date: 2019/8/7
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加商品类别信息</title>
</head>
<body>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>填写商品类别信息</h1>
<form action="/user/reallyinsertcategory" method="post">
    <span>类别名：</span>
    <input type="text" name="name"/>
    </br></br>
    <span>父id：</span>
    <input type="text" name="parentId"/>
    </br></br>
    <span>类别状态：</span>
    <input type="text" name="status"/>
    </br> </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="添加" />
</form>

</body>
</html>
