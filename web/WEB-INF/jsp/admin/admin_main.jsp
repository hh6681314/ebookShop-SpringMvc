<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>网上书店后台管理</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function SetWinHeight(obj)
	{
	var win=obj;
	if (document.getElementById)
	{
	if (win && !window.opera)
	{
	if (win.contentDocument && win.contentDocument.body.offsetHeight) 
	   
	win.height = win.contentDocument.body.offsetHeight+100; 
	    
	else if(win.Document && win.Document.body.scrollHeight)
	   
	win.height = win.Document.body.scrollHeight+100;
	}
	}
	}
</script>
  </head>

  <body>
    <div style="width:80%; background-image: url(${pageContext.request.contextPath}/images/top_banner_bg.gif);background-repeat: repeat;">
    <img hspace="100" src="${pageContext.request.contextPath}/images/top_banner.gif" border="0">
 	</div>
 	
	<div >
		<div style="width: 20%;height:640px;float: left; border-right: 2px outset; border-bottom:2px outset;padding-top: 10px">
		<span>欢迎回来，${user.name},<a href="/admin/logout">退出登录</a></span>
		<ul>
	    <li style="list-style: none"><a href="/admin/toAddBook" target="admin_main">添加图书</a> </li>
	    <li style="list-style: none"><a href="/admin/toAdminBookList" target="admin_main">图书列表</a> </li>
	    <li style="list-style: none"><a href="/admin/toOrderList" target="admin_main">订单列表</a> </li>
	    <li style="list-style: none"><a href="" target="admin_main">销售报表图</a> </li>
	    </ul>
		</div>
		<div style="width: 60%;height:650px;float: left; border-bottom:2px outset;">
			<iframe name="admin_main" onload="Javascript:SetWinHeight(this)" frameborder="0" scrolling="no" src="/admin/toAddBook" style="width: 100%">
			</iframe>
		</div>
	</div>
  </body>
</html>
