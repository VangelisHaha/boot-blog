FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD boot-blog-1.0.jar app.jar
RUN sh -c 'touch /app.jar' && echo 'Asia/Shanghai' >/etc/timezone && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV JAVA_OPTS="-Dspring.profiles.active=linux-dev -Xms128m -Xmx512m"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
