<%--
  Created by IntelliJ IDEA.
  User: AlexAnderIch
  Date: 2017/10/15
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<link rel="stylesheet" type="text/css" href="../css/style01.css">
<link rel="stylesheet" type="text/css" href="../css/foot.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        var _this1 = null;
        $('.nav>li').hover(function () {
            _this1 = $(this);
            _this1.find('.second-nav').show();
            var _this2 = null;
            _this1.find('.second-nav').find('li').hover(function () {
                _this2 = $(this);
                _this2.find('.third-nav').show();
                _this2.find('.third-nav').hover(function () {
                    $(this).show();
                }, function () {
                    $(this).hide();
                });
            }, function () {
                _this2.find('.third-nav').hide();
            });
        }, function () {
            _this1.find('.second-nav').hide();
        });
    });
</script>

</head>
<body style="background-color:white">

<div class="header">
    <ul class="nav">
        <li><a href="selectNews?pageNo=0&name=${sessionScope.name}&password=${sessionScope.password}"><span style="font-size: large">首页</span></a>

        </li>
        <li><a href="../user/userInfo"><span style="font-size: large">我的信息</span></a>

        </li>

    </ul>
</div>
<%--嵌套两层循环输出新闻数据--%>
<c:set var="index" value="0"/>
<c:set var="totalPage" value="${newsPage.getTotalPage()}"></c:set>

<c:forEach var="x" begin="0" end="9" step="1">
    <a href=<c:out value="${newsPage.getList().get(index).getResource()}"></c:out>>
       <h3><c:out value="${newsPage.getList().get(index).getTitle()}"></c:out></h3>
    </a>
    <span style="font-family: 'Microsoft YaHei UI';font-size: large"><c:out value="          ${newsPage.getList().get(index).getWriter()}"></c:out></span>
    <br>
    <span style="font-size: medium"><c:out value="${newsPage.getList().get(index).getSummary()}"></c:out></span>
    <br>
   <span style="background-color: #cecece"> <c:out value="${newsPage.getList().get(index).getTime()}"></c:out></span>
    <br>
    <c:set var="index" value="${index+1}"></c:set>
</c:forEach>
<div class="yahoo">

        <c:forEach var="a" begin="1" end="${newsPage.getTotalPage()}" step="1">
            <a href="http://localhost:8080/news/selectNews.do?pageNo=${a}&name=${sessionScope.name}&password=${sessionScope.password}">
            <span style="font-size:medium">${a}</span></a>
        </c:forEach>

</div>
</body>
</html>
