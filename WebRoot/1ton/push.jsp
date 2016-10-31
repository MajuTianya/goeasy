<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'push.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <script type="text/javascript" src="https://cdn.goeasy.io/goeasy.js"></script>
    <script type="text/javascript">
    var goEasy = new GoEasy({
        appkey: 'cc6a4467-cc29-44e7-8bca-27fca6dd2738'
    });
    var uid='1';
    goEasy.publish({
        channel: 'demo_channel'+uid,
        message: 'Hello world!'+uid
    });
    </script>
  </body>
</html>
