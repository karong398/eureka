#基于哪个镜像
FROM hub.c.163.com/library/java:8

#将本地文件挂载到当前容器
VOLUME /tmp

#复制文件到容器
ADD springCloudEureka.jar eureka_dc.jar
RUN bash -c 'touch /eureka_dc.jar'

#声明需要暴露的端口
EXPOSE 8062

#配置容器启动后执行的命令
ENTRYPOINT ["java", "-jar", "eureka_dc.jar"]
