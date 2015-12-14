<%--
  Created by IntelliJ IDEA.
  User: yufanyang
  Date: 12/7/2015
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>主页面</title>
    <script type="text/javascript" src="script/jquery-1.8.1.min.js"></script>
    <script type="application/javascript">
        $(function(){
           /* $("#first").bind("click",function(){
                if($("#page").value()==1){
                    alert("已经是第一页了");
                }else {
                    location.href="";
                }
            });
            $("last").bind("click",function(){
                if($("#page").val()==$("#count").html()){
                    alert("已经是最后一页了");
                }else{
                    location.href="";
                }
            });
            $("pageup").bind("click",function(){
                if($("#page").val()==1){
                    alert("已经是第一页了");
                }else{
                    location.href="";
                }
            });
            $("#pgdn").bind("click",function(){
                if($("#page").val()==$("#count").html()){
                    alert("已经是最后一页了");
                }else{
                    location.href="";
                }
            });*/
            $("#addNews").bind("click", function (){
                location.href="addNews.jsp";
            })
            $("#deleteNews").bind("click",function(){
                var mess=confirm("确定删除？");
                if (mess){
                    location.href="/news/delete?id=${news.news_id}";
                    alert("删除成功！");
                }else{
                    alert("取消删除");
                }
            })
        })
    </script>
</head>
<body>
<div align="center"><font size="6" color="red">胡造_新闻</font></div>
    <div align="right">
        <a href=""><input type='button' value='登录' style="color: navy" align='right'/></a>
        <a href=""><input type='button' value='注销' style="color: navy" align='right'/></a>
    </div>
<input type="button" value="新增" id="addNews">
<table border='1' cellspacing='0' align='center' width='50%'>
    <tr align="center">
        <th>新闻编号</th>
        <th>新闻标题</th>
        <th>新闻正文</th>
        <th>创建日期</th>
        <th>新闻作者</th>
        <th>新闻栏目</th>
        <th>操作</th>
    </tr>
<c:forEach var="${newsList}" items="news">
    <tr align="center">
        <td>${news.news_id}</td>
        <td>${news.news_title}</td>
        <td>${news.news_content}</td>
        <td>${news.news_date}</td>
        <td>${news.news_author}</td>
        <td>${news.colums_id}
            <c:if test="${news.colums_id=201}">娱乐</c:if>
            <c:if test="${news.colums_id=202}">体育</c:if>
            <c:if test="${news.colums_id=203}">财经</c:if>
            <c:if test="${news.colums_id=204}">政治</c:if>
            <c:if test="${news.colums_id=205}">搞笑</c:if>
        </td>
        <td>
            <%--<a href="/news/delete?id=${news.news_id}">--%>
            <input type="button" value="删除" id="deleteNews">
            <a href="updateNews.jsp?id=${news.news_id}&tilde=${news.news_title}&context=${news.news_content}&date=${news.news_date}&author=${news.news_author}&colums=${news.colums_id}"><input type="button" value="修改" id="updateNews"></a>
        </td>
    </tr>
</c:forEach>
    <div align="center">
        <input type="button" value="首页" id="first">
        <input type="button" value="上一页" id="pageup">
        <input type="button" value="下一页" id="pagedn">
        <input type="button" value="末页" id="last">
        共<span id="count"></span>页
        <input type="hidden" value="" id="page">
    </div>
</table>
</body>
</html>
