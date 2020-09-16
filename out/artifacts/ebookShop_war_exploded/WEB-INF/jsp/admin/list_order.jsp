<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>订单管理</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/table.css">
    <link href="${pageContext.request.contextPath}/css/sweetalert.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>

    <script>
        function orderShip(id) {
            $.ajax({
                url: '${pageContext.request.contextPath}/admin/orderShip/' + id,
                type: "PUT",
                data: {},
                dataType: "text",
                success: function (result) {
                    if ("error" == result) {
                        swal("哎呦……", "数据出现了一点小问题，请重新提交！", "error");
                        return;
                    }else if("shortage" == result){
                        swal("哎呦……", "商品库存不够了，发货失败", "error");
                        return;
                    }
                    swal({
                        title: "发货成功！",
                        text: "正在跳转至订单列表！",
                        type: "success",
                        confirmButtonText: "确定",
                    }, function () {
                        window.location.href = "${pageContext.request.contextPath}/admin/toOrderList"
                    });
                }
            })
        }
    </script>

</head>

<body>
<div align="center">
    <form action="" method="post">
        <table cellspacing="0" cellpadding="0">
            <tr>
                <td class="row">查询类型</td>
                <td class="row">
                    <select name="searchType" style="font: 黑体;width: 120">
                        <option value="">请选择查询类型</option>
                        <option value="user_name">用户名</option>
                        <option value="o_status">交易状态</option>
                    </select>
                </td>
                <td class="row">查询关键字</td>
                <td class="row"><input type="text" name="key"/></td>
                <td><input type="submit" value="查询"></td>
            </tr>
        </table>
    </form>
    <table border=1>
        <tr>
            <th scope="col">全选<input type="checkbox" name="p" value="all"></th>
            <th scope="col">用户名</th>
            <th scope="col">订单号</th>
            <th scope="col">订单状态</th>
            <th scope="col">查 看</th>
            <th scope="col">操 作</th>
        </tr>
        <c:if test="${null != orderList}">
            <c:forEach var="orderInfo" items="${orderList}">
                <tr>
                    <td class="row"><input type="checkbox" name="p" value=></td>
                    <td class="row">${orderInfo.user.name}</td>
                    <td class="row">${orderInfo.id}</td>
                    <td class="row">${orderInfo.status}</td>
                    <td class="row"><a href="${pageContext.request.contextPath}/admin/toOrderDetail/${orderInfo.id}">订单明细</a>
                    </td>
                    <td class="row">
                        <c:if test="${orderInfo.status=='已确认'}"><a onclick="orderShip(${orderInfo.id})">发货</a></c:if>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
</div>
</body>
</html>
