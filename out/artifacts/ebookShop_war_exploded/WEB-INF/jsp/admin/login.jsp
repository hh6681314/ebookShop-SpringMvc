<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%
    String path = request.getContextPath();
%>
<head>
    <title>Login</title>
    <link href="${path}/css/sweetalert.css" rel="stylesheet">
    <script src="${path}/js/jquery-3.4.1.js"></script>
    <script src="${path}/js/sweetalert.min.js"></script>
    <script type="text/javascript">
        function login(){
            var name = document.getElementById("name").value;
            var pwd = document.getElementById("password").value;
            var code = document.getElementById("code").value;
            if(name.length<=0){
                alert("用户名不能为空！");
            }
            else if(pwd.length<=0){
                alert("密码不能为空！");
            }
            else if(code.length<=0){
                alert("验证码不能为空！");
            }
            else{
                document.loginForm.submit();
            }

        }
    </script>
</head>

<body>

<form name="loginForm" action="${pageContext.request.contextPath}/admin/toLoginVerify" method="post">
用户名：<input name="name" id="name" type="text" size="12" maxlength="10" />
密  码：<input name="password" id="password" type="password" size="12" maxlength="6" />
验证码：<img src="${pageContext.request.contextPath}/user/verifyCode"  onclick="this.src='${pageContext.request.contextPath}/user/verifyCode?' + new Date().getTime();" />
    <input name="code" id="code" type="text" size="12" maxlength="4" />
    <input type="button" value="登录" onclick="login()" />
</form>
${loginInfo}
</body>
</html>
