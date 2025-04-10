`resources/` 目录是 Maven 项目的标准目录之一，路径是：

```
src/main/resources/
```

它的作用是：**存放非源码类文件（配置、模板、静态资源等），这些文件会被打包进最终的 `jar` 或 `war` 中的 `classpath` 中**，供 Java 程序读取。

---

## 📂 常见用途分类

| 内容类型         | 示例文件/目录           | 用途说明 |
|------------------|--------------------------|----------|
| 配置文件         | `application.properties`<br>`log4j.properties`<br>`config.yaml` | 存放程序运行时的配置项，比如数据库连接、日志配置等 |
| 国际化资源       | `messages.properties`, `messages_zh.properties` | 多语言支持 |
| 模板文件         | `*.ftl`, `*.vm`, `*.html` | 用于 Freemarker、Velocity 等模板引擎 |
| 静态资源（不建议） | `static/`, `images/`, `css/`, `js/` | 如果是 Spring Boot 会自动加载这些静态资源。但在传统 Servlet 项目中，一般放在 `webapp/` 下 |
| 其他资源         | `.xml`, `.json`, `.txt`, `.sql` | 数据初始化文件、描述文件等 |

---

## 🛠️ 如何在 Java 代码中读取 `resources/` 里的文件？

```java
InputStream in = getClass().getClassLoader().getResourceAsStream("config.properties");
```

注意路径是相对于 `resources/` 目录的。比如你放的是：

```
src/main/resources/my/config.properties
```

则代码中应写：

```java
getResourceAsStream("my/config.properties")
```

---

## 📦 打包后资源在哪？

- 如果你打成 `.jar`：
  - `resources/` 中的所有内容会直接进入 `jar` 的根路径。
- 如果你打成 `.war`：
  - `resources/` 内容会进到 `WEB-INF/classes/` 目录下。

---

## 📁 小结：resources 用来干啥？

> ➤ 简单记：只要是你 **希望程序在运行时从 classpath 读取的非 Java 文件**，就放在这里！

---
