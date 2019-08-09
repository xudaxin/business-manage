<html>
<#include  "common/header.ftl">

<body>
<div id="wrapper" class="toggled">

    <#--边栏sidebar-->
    <#include "common/nav.ftl">

    <#--主要内容content-->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <table class="table table-bordered table-condensed">

                        <tr>
                            <td>类别id：</td>
                            <td>父id：</td>
                            <td>类别名：</td>
                            <td>类别状态：</td>
                            <td>创建时间：</td>
                            <td>最后一次更新时间：</td>
                            <td>操作：</td>
                            <td>操作：</td>
                        </tr>

                        <#list categorylists as category>
                            <tr>
                                <td>${category.id}</td>
                                <td>${category.parentId}</td>
                                <td>${category.name}</td>
                                <td>${category.status}</td>
                                <td>${category.createTime?string('yyyy-MM-dd HH:mm:ss')}</td>
                                <td>${category.updateTime?string('yyyy-MM-dd HH:mm:ss')}</td>
                                <td><a href="update/${category.id}">修改</a></td>
                                <td><a href="delete/${category.id}">删除</a></td>
                            </tr><br/>
                        </#list>


                    </table>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>