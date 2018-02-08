FROM daocloud.io/brave8/maven-jdk8
#
#ADD pom.xml /tmp/build/
#
#ADD src /tmp/build/src
#        #构建应用
#RUN cd /tmp/build && mvn clean package \
#        #拷贝编译结果到指定目录
#        && mv target/*.jar /app.jar \
#        #清理编译痕迹
#        && cd / && rm -rf /tmp/build
#
ADD ai_manager-0.0.1-SNAPSHOT.jar /tmp/app.jar
VOLUME /tmp
EXPOSE 8080
ENTRYPOINT ["java","-jar","/tmp/app.jar"]