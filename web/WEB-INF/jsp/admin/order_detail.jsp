<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>订单明细</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/table.css">
</head>
<style type="text/css">
    ul, li {
        margin: 0px;
        padding: 0px
    }
</style>
<body>
<div align="center" style="padding-top: 50px;height: 300px">
    <p style="font-size: 20px;">订单明细</p>
    <div align="center" style="width: 200px">
        <ul style="text-align:left;">
            <li style="font-size: 12px;list-style: none">订单编号：${orderInfo.id}</li>
            <li style="font-size: 12px;list-style: none">用户名：${orderInfo.user.name}</li>
            <li style="font-size: 12px;list-style: none">配送地址：${orderInfo.user.address}</li>
            <li style="font-size: 12px;list-style: none">下订时间：${orderInfo.orderTime}</li>
            <li style="font-size: 12px;list-style: none">订单状态：${orderInfo.status}</li>
        </ul>
        <table align="left">
            <tr>
                <th scope="col">图书名称</th>
                <th scope="col">数 量</th>
            </tr>
            <c:if test="${null != orderInfo.orderDetailArrayList}">
                <c:forEach var="orderDetail" items="${orderInfo.orderDetailArrayList}">
                    <c:forEach var="bookInfo" items="${orderDetail.bookInfoArrayList}">
                        <tr>
                            <td class="row">${bookInfo.name}</td>
                            <td class="row">${orderDetail.num}</td>
                        </tr>
                    </c:forEach>
                </c:forEach>
            </c:if>

        </table>
    </div>
    <div style="width: 500px;height: 80px;margin-top: 100px">

        <a href="${pageContext.request.contextPath}/admin/toOrderList"><img src="${pageContext.request.contextPath}/images/back.gif" border="0"/></a>
    </div>
</div>
</body>
</html>
