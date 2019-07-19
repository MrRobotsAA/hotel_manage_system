<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  
    <%
        request.setCharacterEncoding("UTF-8");          // 设置编码防止中文出现乱码
        String[] Info = request.getParameterValues("Notice");
       // String info = request.getParameter("Notice");  // 获取表单内容
        // 表单提交到本身页面必须进行null判断
        String info="";
       for(String p:Info){
          info+=p;
       }
        info = (info == null)? "" : info;               // 判断内容是否为空
    %>

    <marquee behavior="scroll"  direction="right" onmouseover="this.stop()" onmouseout="this.start()">
<!--       /*我是公告栏。*/ -->
        <%=info%>
    </marquee>
    This is my JSP page. <br>
  </body>
</html>
