<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<%-- 	<script type="text/javascript" src="<%=path%>/js/jquery-3.2.1.js"></script>
	
	<script type="text/javascript">
	$(function(){
	
		alert("测试。。");
	
	});
	
	</script> --%>
  </head>
  
  <body>
   	   <form action="DengluServlet"  method="post"  style="padding-top:-700px;">
		用户名：<input type="text" name="name"value=""><br><br>
 		密码：  <input type="password" name="pwd"value=""><br><br>
             <input type="submit"value="登录"name="denglu"><input type="reset"value="重置"><br>
	 </form>
	 <form action="zhuce.jsp">
	 	<input type="submit"value="新用户注册">
     </form>
  </body>
</html>
