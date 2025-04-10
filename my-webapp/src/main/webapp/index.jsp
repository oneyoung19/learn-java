<%@ page import="utils.Utils" %>
<html>
  <head>
    <meta charset="UTF-8">
    <title>首页</title>
  </head>
<body>
<h2>Hello World!</h2>

<%
    // 使用公共方法获取当前时间
    String formattedDate = Utils.getCurrentTime();
    System.out.println(java.nio.charset.Charset.defaultCharset());
%>

<p>当前服务器时间: <%= formattedDate %></p>

</body>
</html>