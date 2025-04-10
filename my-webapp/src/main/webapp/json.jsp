<%@ page import="utils.Utils" %>
<%@ page import="org.json.JSONObject" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="application/json;charset=UTF-8" %>
<%
    // 创建一个 JSON 对象
    JSONObject jsonObject = new JSONObject();
    jsonObject.put("name", "oneyoung");
    jsonObject.put("age", 25);
    jsonObject.put("city", "Beijing");
    
    // 获取当前时间
    String currentTime = Utils.getCurrentTime();
    jsonObject.put("currentTime", currentTime);

    // 设置响应内容类型为 JSON
    response.setContentType("application/json");
    PrintWriter responseWrite = response.getWriter();
    
    // 输出 JSON 数据
    responseWrite.print(jsonObject.toString());
    responseWrite.flush();
%>