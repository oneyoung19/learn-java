创建一个 `webapp` 模板：

```shell
mvn archetype:generate \
  -DgroupId=com.example \
  -DartifactId=my-webapp \
  -DarchetypeArtifactId=maven-archetype-webapp \
  -DinteractiveMode=false
```

模板安装后，查看 `pom.xml`，大致如下：

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.example</groupId>
  <artifactId>my-webapp</artifactId>
  <packaging>war</packaging>
  <version>1.0-SNAPSHOT</version>
  <name>my-webapp Maven Webapp</name>
  <url>http://maven.apache.org</url>
  <properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <maven.compiler.release>17</maven.compiler.release>
  </properties>
  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
  </dependencies>
  <build>
    <finalName>my-webapp</finalName>
  </build>
</project>
```

此时一个空的 `webapp` 项目就创建完成了。

执行 `mvn clean package` 就会生成 `target` 目录，里面有 `my-webapp-1.0-SNAPSHOT.war` 文件。

## Community Server Connectors

如果使用的是 `vscode` 生态的编辑器，那么可以安装应用市场的 `Community Server Connectors` 插件。

该插件能够集成 `Tomcat` 等 `servlet` 服务，托管 `war` 包。

1. 启动 `Community Server Connector`；
2. 点击 `Create New Server` 并选择 `Tomcat` 服务目录；
3. 利用 `Community Server Connector` 启动 `Tomcat`；
4. `Add Deployment` 将 `war` 包部署到 `Tomcat`；
5. 后续开发 `Publish Server(Incremental)` 可增量部署到 `Tomcat`。
