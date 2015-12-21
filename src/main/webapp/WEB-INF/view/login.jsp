<%--
  Created by IntelliJ IDEA.
  User: yufanyang
  Date: 12/7/2015
  Time: 4:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登入页面</title>
    <script type="text/javascript" src="script/jquery-1.8.1.min.js"></script>
    <script type="application/javascript">

        function logina(){
            var account=document.getElementById("xx").innerHTML;
                location.href="user/check?account="+account;
        }
        function reset(){
            var account=document.getElementById("xx").innerHTML;
            var password=document.getElementById("password").innerHTML;
            account.valueOf("");
            password.valueOf("");
        }
        function  login(){
            var account=document.getElementById("xx").innerHTML;
            var password=document.getElementById("password").innerHTML;
            alert(account);
            if(account==null||password==null){
                alert("账号或密码不能为空");
            }
        }
    </script>
</head>
<body>
<font size="4" color="red">欢迎登入</font>
<form action="user/login">
    账号:<input type="text" placeholder="input your account"  name="account" onchange="logina()"><span id="xx"></span><br/>
    密码:<input type="password" placeholder="input your password"  name="password"><span id="oo"></span><br/>
    <input type="submit" value="登录" onclick="login()">
    <input type="button" value="重置" onclick="reset()">
</form>
</body>
</html>
