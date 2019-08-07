<%--
  Created by IntelliJ IDEA.
  User: 徐大鑫
  Date: 2019/8/5
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>

<form action="/upload" method="post" enctype="multipart/form-data">
    文件上传<input type="file" name="pic"/>
    <br/>
    <input type="submit" value="提交"/>
</form>

</body>
</html>
