<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xudaxin
  Date: 2019/8/8
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改商品信息</title>
</head>
<body>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>修改商品信息：</h1>
<br/><br/>


<form action="/user/reallyUpdateProduct" method="post" enctype="multipart/form-data">


    <span>商品id：</span>
    <input type="text"value="${updateproduct.id}" name="id" readonly="true"/> &nbsp;&nbsp;&nbsp;<span>id不可修改</span>
    </br></br>

    <span>商品名：</span>
    <input type="text" value="${updateproduct.name}" name="name"/>
    </br></br>

    <span>父id：</span>
    <%--<input type="text" value="${updateproduct.categoryId}" name="categoryId"/>--%>

    <%--<select name="categoryId">--%>

        <%--<c:forEach items="${categoryMessagelist}" var="categoryid">--%>

            <%--<c:if test="${updateproduct.categoryId}==${categoryid.id}">--%>
                <%--<option value="${categoryid.id}">(原信息id)${categoryid.id}</option>--%>
            <%--</c:if>--%>
            <%--<c:otherwise>--%>
                <%--<option value="${categoryid.id}">(新信息id)${categoryid.id}</option>--%>
            <%--</c:otherwise>--%>

            <%--&lt;%&ndash;<c:if test="${updateproduct.categoryId}！=${categoryid.id}">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<option value="${categoryid.id}">(新信息id)${categoryid.id}</option>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
        <%--</c:forEach>--%>
    <%--</select>--%>


            <select name="categoryId">

                <c:forEach items="${categoryMessagelist}" var="categoryid">

                    <option value="${categoryid.id}">${categoryid.id}</option>

                </c:forEach>


            </select>
    &nbsp;&nbsp;原父id：${updateproduct.categoryId}



    </br></br>

    <span>副标题：</span>
    <input type="text" value="${updateproduct.subtitle}" name="subtitle"/>
    </br></br>

    <span>商品详情：</span>
    <input type="text" value="${updateproduct.detail}" name="detail"/>
    </br></br>

    <span>商品价格：</span>
    <input type="text" value="${updateproduct.price}" name="price"/>
    </br></br>

    <span>商品库存：</span>
    <input type="text" value="${updateproduct.stock}" name="stock"/>
    </br></br>

    <%--<span>商品状态：</span>--%>
    <%--<input type="<select name=" " id=""></select>" name="username"/>--%>
    <%--</br></br>--%>

    <span>修改主图：</span>
    <input type="file" name="uppic"/>
    </br></br>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交" />

</form>

</body>
</html>
