<%--
  Created by IntelliJ IDEA.
  User: yufanyang
  Date: 12/11/2015
  Time: 2:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>新增新闻</title>
    <script type="text/javascript" src="script/jquery-1.8.1.min.js"></script>
    <script type="application/javascript">
        $(function(){
            var f1=false;
            var f2=false;
            var f3=false;
            var f4=false;
            var f5=false;
            var f6=false;
            $("#id").bind('change',function(){
                var reg=/^[0-9]+$/;
                var id=$("#id").value();
                if(reg.test(id)){
                    $("#cid").html("√");
                    f1=true;
                }
            })
            $("#title").bind('change',function(){
                var tirle=$("#title").value();
                if(title!=""){
                    f2=true;
                }
            })
            $("#context").bind('change',function(){
                var context=$("#context").value();
                if(context!=""){
                    f3=true;
                }
            })
            $("#author").bind('change',function(){
                var author=$("#author").value();
                if(author!=""){
                    f4=true;
                }
            })
            $("#date").bind('change',function(){
                var date=$("#date").value();
                if(date!=""){
                    f5=true;
                }
            })
            $("#colums").bind('change',function(){
                var reg=/^[0-9]+$/;
                var colums=$("#colums").value();
                if(reg.test(colums)){
                    $("#ccolums").html("√");
                    f6=true;
                }
            })
            $("#submit").bind("click",function(){
                if(f1&&f2&&f3&&f4&&f5&&f6){
                    $("form").submit();
                    alert("添加成功！");
                }else{
                    alert("你输入信息有误或者有信息尚未完全");
                }
            })

        })
    </script>
</head>
<body>
<div align="center">
    <form action="/news/add" method="post">
        news_id     :<input type="text" name="newsId" id="id"><span id="cid"></span><br>
        news_title  :<input type="text" name="newsTitle" id="title"><br>
        news_context:<input type="text" name="newsContext" id="context"><br>
        news_author :<input type="text" name="newsAuthor" id="author"><br>
        news_date   :<input type="text" name="newsDate" id="date"><br>
        colums      :<input type="text" name="colums" id="colume"><span id="ccolums"></span><br>
    <input type="submit" id="submit">
    </form>
    <a href="welcome.jsp">返回</a>
</div>
<div align="left">
    Tips:
    <font size="2" color="red">
        201-->娱乐
        202-->体育
        203-->财经
        204-->政治
        205-->搞笑
    </font>
</div>
</body>
</html>
