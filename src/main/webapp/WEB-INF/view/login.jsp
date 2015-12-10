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
        $(function(){
            $("input[name='account']").change(function(){
                $.ajax({
                    type:"get",
                    url:"user/check",
                    data:"account="+sf+"&account="+lina,
                    success:function(data){
                        $("#xx").html(data);
                    }
                });

            });
            $("#reset").bind("click",function(){
                $("#xx").html("");
                $("#oo").html("");
            });
            $("#login").bind("click",function(){
                if($("#xx").value()==null){
                    alert("账号不能为空");
                }
                if($("#oo").value()==null){
                    alert("密码不能为空");
                }
            });
        });
    </script>
</head>
<body>
<font size="4" color="red">欢迎登入</font>
<form action="user/login">
    账号:<input type="text" placeholder="input your account"  name="account" id="xx"><br/>
    密码:<input type="password" placeholder="input your password"  name="password" id="oo"><br/>
    <input type="submit" value="登录" id="login">
    <input type="button" value="重置" id="reset">
</form>
</body>
</html>
