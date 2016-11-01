<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
    var uid = '1';
    goEasy.subscribe({
        channel: 'demo_channel'+uid,
        onMessage: function(message){
            alert('收到：'+message.content);
        }
    });
    </script>
    
  </body>
  步骤：<br/>
  1 修改同级目录下push.jsp文件uid值为“1”，并在浏览器刷新push.jsp页面记为页面1；</br/>
  2 修改同级目录下push.jsp文件uid值为“2”，并在另一个浏览器刷新push.jsp页面记为页面2；</br/>
  3 修改本文件uid值为“1”，在其中一个浏览器中帅新本页面观察页面1和页面2，预期结果为页面1弹出收到信息；</br/>
  4 修改本文件uid值为“2”，在其中一个浏览器中帅新本页面观察页面1和页面2，预期结果为页面2弹出收到信息。</br/>
  结论：与预期结果相同，即可证jsp点对点推送成功。
</html>
