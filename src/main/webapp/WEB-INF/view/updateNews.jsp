<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yufanyang
  Date: 12/11/2015
  Time: 2:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新闻更新</title>
    <script type="text/javascript" src="script/jquery-1.8.1.min.js"></script>
    <script type="application/javascript">
        $(function(){
            var f1=false;
            var f2=false;
            var f3=false;
            var f4=false;
            $("#title").bind('change',function(){
                var tirle=$("#title").value();
                if(title!=""){
                    f1=true;
                }
            })
            $("#context").bind('change',function(){
                var context=$("#context").value();
                if(context!=""){
                    f2=true;
                }
            })
            $("#author").bind('change',function(){
                var author=$("#author").value();
                if(author!=""){
                    f3=true;
                }
            })
            $("#cid").bind('change',function(){
                var reg=/^[0-9]+$/;
                var colums=$("#cid").value();
                if(reg.test(colums)){
                    $("#ccolums").html("√");
                    f4=true;
                }
            })
        })
    </script>
</head>
<body>
<div align="center">
    <form action="/news/update" method="post">
        <table border='1' cellspacing='0' align='center' width='50%'>
            <tr>
                <th>新闻编号</th>
                <th>新闻标题</th>
                <th>新闻正文</th>
                <th>创建日期</th>
                <th>新闻作者</th>
                <th>新闻栏目</th>
            </tr>
            <tr>
                <td><input type="text" value="${news.news_id}" name="news_id" id="id" readonly></td>
                <td><input type="text" value="${news.news_title}" name="news_title" id="title"></td>
                <td><input type="text" value="${news.news_content}" name="news_content" id="context"></td>
                <td><input type="text" value="${news.news_date}" name="news_date" id="date" readonly></td>
                <td><input type="text" value="${news.news_author}" name="news_author" id="author"></td>
                <td><td><input type="text" value="${news.colums_id}" name="colums_id" id="cid"><span id="ccolums"></span></td>
                    <c:if test="${news.colums_id=201}">娱乐</c:if>
                    <c:if test="${news.colums_id=202}">体育</c:if>
                    <c:if test="${news.colums_id=203}">财经</c:if>
                    <c:if test="${news.colums_id=204}">政治</c:if>
                    <c:if test="${news.colums_id=205}">搞笑</c:if>
                </td>
            </tr>
        </table>
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
