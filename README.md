# Java

```shell
# 获取 classpath
CLASS_PATH=$(mvn dependency:build-classpath | grep -v "\[INFO\]")

# 运行
java -cp "target/my-app-1.0.0.jar:lib/*:$CLASS_PATH" com.example.oneyoung.App

java -cp "target/classes:$CLASS_PATH" com.example.oneyoung.App
```

创建一个 `webapp` 模板：

```shell
mvn archetype:generate \
  -DgroupId=com.example \
  -DartifactId=my-webapp \
  -DarchetypeArtifactId=maven-archetype-webapp \
  -DinteractiveMode=false
```