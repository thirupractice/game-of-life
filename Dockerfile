FROM  maven:3-jdk-8 AS builder
RUN git clone https://github.com/thirupractice/game-of-life.git
RUN cd game-of-life
WORKDIR /game-of-life
RUN mvn package
 

FROM tomcat:8
EXPOSE 8080
COPY --from=builder /game-of-life/gameoflife-web/target/gameoflife.war /var/lib/tomcat8/webapps/gameoflife.war
CMD ["catalina.sh", "run"]
