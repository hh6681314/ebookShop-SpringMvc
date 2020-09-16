<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>图书管理</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="${path}/css/table.css">
    <link href="${path}/css/sweetalert.css" rel="stylesheet">
    <script src="${path}/js/jquery-3.4.1.js"></script>
    <script src="${path}/js/sweetalert.min.js"></script>

    <script type="text/javascript">
        function del(id){
            swal({
                position:'top-end',
                title: "确定删除吗？",
                text: "你将无法恢复这本图书！",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确定删除！",
                cancelButtonText: "取消删除！",
                closeOnConfirm: false,
                closeOnCancel: false
            },
            function(isConfirm){
                if (isConfirm) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/admin/update/"+id,
                        method: "DELETE",
                        data:{},
                        dataType: "text",
                        success : function (result) {
                            if(result!="success"){
                                swal("错误！", "删除失败！", "error");
                                return
                            }
                            swal({
                                title:"删除！",
                                text: "删除成功！",
                                type: "success",
                                confirmButtonText: "确定",
                            }, function () {
                                window.location.href = "${pageContext.request.contextPath}/admin/toAdminBookList"
                            });
                        }
                    })
                } else {
                    swal("取消！", "取消成功！", "error");
                }
            })
        };

        function changeSelect(){
            let items = document.getElementsByName("box");
            for(let i = 0; i < items.length; i++){
                items.value==1?items.value=2 : items.value=1;
                for(let i = 0; i < items.length; i++){
                    if(items.value==1){
                        //选中 ==> 没选中
                        items[i].checked=true;
                    }else{
                        //没选中 ==> 选中
                        items[i].checked=false;
                    }
                }
            }
        };
        
        function deleteBatch() {
            let checkIds = '';
            $('input[name="box"]:checked').each(function(){
                checkIds += $(this).val()+","
            })
            checkIds = checkIds.substring(0,checkIds.length-1);
            delAjax(checkIds);
        };
        
        function delAjax(checkIds) {
            swal({
                    position:'top-end',
                    title: "确定删除这些图书吗？",
                    text: "你将无法恢复被删除的图书！",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "确定删除！",
                    cancelButtonText: "取消删除！",
                    closeOnConfirm: false,
                    closeOnCancel: false
                },
                function(isConfirm){
                    if (isConfirm) {
                        $.ajax({
                            url: "${path}/admin/delMultipleBook",
                            method: "DELETE",
                            data: JSON.stringify(checkIds),
                            dataType: "text",
                            success : function (result) {
                                if(result!="success"){
                                    swal("错误！", "删除失败！", "error");
                                    return
                                }
                                swal({
                                    title:"删除！",
                                    text: "删除成功！",
                                    type: "success",
                                    confirmButtonText: "确定",
                                }, function () {
                                    window.location.href = "${pageContext.request.contextPath}/admin/toAdminBookList"
                                });
                            }
                        })
                    } else {
                        swal("取消！", "取消成功！", "error");
                    }
                })
        };

    </script>

</head>
<body>
<div align="center">
    <form action="" method="post">
        <table cellspacing="0" cellpadding="0">
            <tr>
                <td class="row">查询类型</td>
                <td class="row">
                    <select name="searchType" style="font-family:'微软雅黑';width: 120px">
                        <option value="">请选择查询类型</option>
                        <option value="b_name">图书名称</option>
                        <option value="b_press">出版社</option>
                        <option value="b_type">图书种类</option>
                    </select>
                </td>
                <td class="row">查询关键字</td>
                <td class="row"><input type="text" name="key" id="key"/></td>
                <td><input type="submit" value="查询"></td>
            </tr>
        </table>
    </form>
    <table border=1>
        <thead>
        <tr>
            <th scope="col">全选<input type="checkbox" name="p" value="all" id="checkAll"></th>
            <th scope="col">图书名称</th>
            <th scope="col">图书类型</th>
            <th scope="col">图书价格</th>
            <th scope="col">出 版 社</th>
            <th scope="col">图书数量</th>
            <th scope="col">修 改</th>
            <th scope="col">删 除</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="book" items="${requestScope.get('adminBookList')}">
            <tr>
                <td class="row"><input type="checkbox" name="box" value="${book.id}"></td>
                <td class="row">${book.name}</td>
                <td class="row">${book.type}</td>
                <td class="row">${book.price}</td>
                <td class="row">${book.press}</td>
                <td class="row">${book.bookcount}</td>
                <td class="row"><a href="${pageContext.request.contextPath}/admin/toUpdateBook/${book.id}">修改</a></td>
                <td class="row"><a onclick="del(${book.id})">删除</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div style="float: left">
        <button  onclick="changeSelect();">全选</button>
        <button  onclick="deleteBatch();">批量删除</button>
    </div>

</div>
</body>
</html>
