<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>书籍列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/table.css">
    <link href="<%=path%>/css/sweetalert.css" rel="stylesheet">
    <script src="<%=path%>/js/sweetalert.min.js"></script>
    <script src="<%=path%>/js/jquery-3.4.1.js"></script>

    <link rel="stylesheet" type="text/css" href="<%=path%>/css/table.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/css.css">
    <script>
        function orderConfirm(id) {
            $.ajax({
                url: '${pageContext.request.contextPath}/order/confirm/' + id,
                type: "PUT",
                data: {},
                dataType: "text",
                success: function (result) {
                    if ("error" === result) {
                        swal("哎呦……", "数据出现了一点小问题，请重新提交！", "error");
                        return;
                    }else if("noLogin" === result){
                        swal({
                            title: "尚未登录！",
                            text: "正在跳转至登录界面！",
                            type: "error",
                            confirmButtonText: "确定",
                        }, function () {
                            window.location.href = "${pageContext.request.contextPath}/user/toLogin"
                        });
                        return;
                    }
                    swal({
                        title: "确认收货成功！",
                        text: "正在跳转至订单列表！",
                        type: "success",
                        confirmButtonText: "确定",
                    }, function () {
                        window.location.href = "${pageContext.request.contextPath}/order/toMyOrder"
                    });
                }
            })
        }
    </script>
</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>我的订单列表</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <c:forEach items="${orderInfos}" var="od">
            <table style="width: 100%">
                <tr>
                    <th scope="col" colspan="3" >
                        订单编号：<span style="font-size: 12px;color: green;">${od.id}</span>&nbsp;
                        状态：<span style="font-size: 12px;color: green;">${od.status}</span>&nbsp;
                        订单时间：<span style="font-size: 12px;color: green;">${od.orderTime}</span>&nbsp;
                        <c:if test="${od.status!='交易成功'}">
                            <a onclick="orderConfirm(${od.id})">确认收货</a></c:if>
                    </th>
                </tr>
                <tr>
                    <td scope="col">图书名称</td>
                    <td scope="col">图书价格</td>
                    <td scope="col">图书数量</td>
                </tr>
                <c:forEach items="${od.orderDetailArrayList}" var="dl">
                    <tr>
                        <c:forEach items="${dl.bookInfoArrayList}" var="bk">
                            <td class="row" width="60%">${bk.name}</td>
                            <td class="row" width="20%">${bk.price}</td>
                        </c:forEach>
                        <td class="row" width="20%">${dl.num}</td>
                    </tr>
                </c:forEach>
            </table>
        </c:forEach>
    </div>


</div>