# Spring 을 구동 하는 자바 버전과 일치 하게 자바 17을 설정
FROM openjdk:17

RUN groupadd -r haramss && useradd -r -g haramss haramss
USER haramss

# JAR 파일을 Docker 이미지 내부로 복사
COPY greeting-0.0.1-SNAPSHOT.jar /app.jar

# 컨테이너가 시작될 때 실행될 명령어
CMD ["java", "-jar", "/app.jar"]