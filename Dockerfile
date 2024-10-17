FROM openjdk:17-jdk-alpine
WORKDIR /urc/src/app
COPY app.java .
RUN javac app.java
CMD ["java","app"]