<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <title>计算新闻</title>

    <link rel="stylesheet" href="../css/normalize.css">

    <link rel="stylesheet" href="../css/style.css" media="screen" type="text/css" />

</head>

<body>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>Facebook login form</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
<section class="login-form-wrap">
    <h1>计蒜新闻</h1>
    <p>${msg}</p>
    <form class="login-form" method="POST"  action="/login/user.do">
        <label>
            <input type="text" name="username" required placeholder="your Username">
        </label>
        <label>
            <input type="password" name="password" required placeholder="your Password">
        </label>
        <input type="submit" value="Login">
    </form>
    <h5><a href="zhuce.jsp">还没有注册？</a></h5>
    <h5><a href="update.jsp">忘记密码了？</a></h5>
</section>

</body>
</html>

</body>

</html>