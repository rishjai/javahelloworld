FROM java:7
WORKDIR /home/root/javahelloworld
COPY src /home/root/javahelloworld/src
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get update
RUN apt-get install -y nginx
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
