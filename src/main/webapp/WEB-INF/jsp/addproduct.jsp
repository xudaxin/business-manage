<%--
  Created by IntelliJ IDEA.
  User: xudaxin
  Date: 2019/8/8
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加商品信息</title>
</head>
<body>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>填写商品信息</h1>
<form action="/user/upload" method="post" enctype="multipart/form-data">


    <span>商品名：</span>
    <input type="text" name="name"/>
    </br></br>
    <span>父id：</span>
    <input type="text" name="categoryId"/>
    </br></br>
    <span>副标题：</span>
    <input type="text" name="subtitle"/>
    </br></br>
    <span>商品详情：</span>
    <input type="text" name="detail"/>
    </br></br>
    <span>商品价格：</span>
    <input type="text" name="price"/>
    </br></br>
    <span>商品库存：</span>
    <input type="text" name="stock"/>
    </br></br>

    <%--<span>商品状态：</span>--%>
    <%--<input type="<select name=" " id=""></select>" name="username"/>--%>
    <%--</br></br>--%>

    <span>图片上传：</span>
    <input type="file" name="pic"/>
    </br></br>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="添加" />
</form>



</body>
</html>
