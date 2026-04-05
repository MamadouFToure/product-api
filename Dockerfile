FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY target/product-api-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8086
ENTRYPOINT ["java", "-Dspring.datasource.url=jdbc:mysql://db:3306/product_db", "-Dspring.datasource.username=root", "-Dspring.datasource.password=root", "-jar", "app.jar"]