package com.example.oneyoung;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Hello world!
 */
public class App {
    public static void main(String[] args) {
        System.out.println("Hello World!");
        System.out.println(getUser());
    }
    
    public static String getUser() {
        // 创建 Gson 实例
        Gson gson = new Gson();
        
        // 创建 JSON 对象
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("name", "oneyoung");
        
        // 将 JSON 对象转换为字符串
        return gson.toJson(jsonObject);
    }
}