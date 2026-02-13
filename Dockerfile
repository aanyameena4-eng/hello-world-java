FROM amazoncorretto:11.0.28
LABEL maintainer="Rushi Technoliges Pvt Ltd"
WORKDIR /opt/app
COPY target/hello-world-java*.jar app.jar

# This runs your app AND THEN keeps the terminal open
ENTRYPOINT ["sh", "-c", "java -jar app.jar && tail -f /dev/null"]
