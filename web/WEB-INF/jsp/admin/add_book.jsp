<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>图书信息添加</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/table.css">
    <link href="${path}/css/sweetalert.css" rel="stylesheet">
    <script src="${path}/js/jquery-3.4.1.js"></script>
    <script src="${path}/js/sweetalert.min.js"></script>

    <script type="text/javascript">
      function add() {
          $.post({
            url: '${pageContext.request.contextPath}/admin/update',
            data: {
              name: document.getElementById("name").value,
              type: document.getElementById("type").value,
              price: document.getElementById("price").value,
              press: document.getElementById("press").value,
              author: document.getElementById("author").value,
              publicdate: document.getElementById("publicdate").value,
              bookcount: document.getElementById("count").value,
              image: document.getElementById("image").value,
              info: document.getElementById("info").value
            },
            dataType: "text",
            success: function (result) {
              if ("noData" == result) {
                swal("哎呦……", "数据出现了一点小问题，请重新提交！", "error");
                return;
              }else if("exist" == result){
                swal("哎呦……", "图书已经存在，请再次确认！", "error");
                return;
              }
              swal({
                position:'top-end',
                title:"添加成功！",
                text: "正在跳转至书籍列表！",
                type: "success",
                confirmButtonText: "确定",
              }, function () {
                window.location.href = "${pageContext.request.contextPath}/admin/toAdminBookList"
              });
            }
          })
        }
    </script>

  </head>

  <body>
  <div align="center">
    <form name="addBook" id="f1" action="" method="post">
      <table border="1" bordercolor="#4f6b72">
      	<tr>
      	  <td class="row" colspan="2" align="center">图书信息添加</td>
      	</tr>
        <tr>
          <td class="row">图书名称:</td>
          <td><input type="text" name="name"  id="name" ><font color="red">*</font></td>
        </tr>
        <tr>
          <td class="row">图书类别:</td>
          <td>
          <select name="type" id="type" style="font-family:'微软雅黑';width: 155px">
          <option value="">请选择图书种类</option>
          <option value="文学">文学</option>
          <option value="历史">历史</option>
          <option value="人物">人物</option>
          <option value="技术">技术</option>
          </select><font color="red">*</font>
          </td>
        </tr> 
        <tr>
          <td class="row">图书价格:</td>
          <td><input type="text" name="price" id="price"><font color="red">*</font></td>
        </tr> 
        <tr>
          <td class="row">作者:</td>
          <td><input type="text" name="author" id="author"><font color="red">*</font></td>
        </tr> 
         <tr>
          <td class="row">出版日期:</td>
          <td><input type="text" name="publicdate" id="publicdate"><font color="red">*格式如：2019年8月</font></td>
        </tr> 
        <tr>
          <td class="row">出版社:</td>
          <td><input type="text" name="press" id="press"><font color="red">*</font></td>
        </tr> 
         <tr>
          <td class="row">商品数量:</td>
          <td><input type="text" name="count" id="count"><font color="red">*</font></td>
        </tr> 
        <tr>
          <td class="row">商品图片:</td>
          <td><input type="file" name="image" id="image"><font color="red">*</font></td>
        </tr> 
         <tr>
          <td class="row">商品详细信息:</td>
          <td><textarea rows="5" cols="20" name="info" id="info"></textarea> <font color="red">*</font></td>
        </tr> 
        <tr>
          <td class="row" colspan="2" align="center"><input type="button" value="添加" onclick="javascript:add();" /><input type="reset" value="重置" /></td>
        </tr>
      </table>
    </form>
    </div>
  </body>
</html>
