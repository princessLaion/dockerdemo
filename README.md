## URL
http://localhost:8080/helloworld  

## Swagger
http://localhost:8080/swagger-ui/index.html  

## Steps  
Pre requisite:  
- Create docker account - hub.docker.com  
- Create new repository  

1. Modify pom.xml and update build/finalName  
<finalName>helloworld-demo</finalName>  

2. Do mvn clean install to create jar file  

3. Create local docker image.  
Create Dockerfile (without extension) in the root directory.  
Open command line    
docker build -t helloworld-demo .  
OR  
docker build -t helloworld-demo:<anyuserdefinedtag> .  

Run locally, instead of starting the application, since we already build it via docker:  
docker run -p 8080:8080 helloworld-demo:latest  

-p means exposing the port 8080  

For any changes, do command 'docker build' again  

4. Push image to docker repository  
Add tag  
   docker tag helloworld-demo princesslaion/repodemo  
Push  
   docker push princesslaion/repodemo  

Browse your docker repository to verify  

5. To pull docker image  
   docker run -p 8080:8080 helloworld-demo:latest  
It will automatically start the spring boot application



## Others Commands:
Login: docker login  
List docker images: docker images  
Delete docker image(s): docker rmi <dockerImgName1> <dockerImgName2>  