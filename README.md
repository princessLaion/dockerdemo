## URL
http://localhost:8080/helloworld  

## Swagger
http://localhost:8080/swagger-ui/index.html  

## Steps  
Pre requisite:  
- Create docker account - hub.docker.com  
- Create new repository  

1. Create Springboot project.
Modify pom.xml and update build/finalName  
<finalName>helloworld-demo</finalName>  

Do mvn clean install to create jar file  
2. Create Dockerfile - no extension and case sensitive filename in the root directory.  
3. Create local docker image.  
Open command line    
docker build -t helloworld-demo .  
OR  
docker build -t helloworld-demo:<anyuserdefinedtag> .  

Run locally, instead of starting the application, since we already build it via docker:  
docker run -p 8080:8080 helloworld-demo:latest  

-p means exposing the port 8080  

For any changes, do a clean install to regenerate the jar file. 
Then do command 'docker build' again  

4. Push image to docker repository  
Add tag  
   docker tag helloworld-demo princesslaion/repodemo  
Push  
   docker push princesslaion/repodemo  

Browse your docker repository to verify  

5. Pull and run docker image  
   docker run -p 8080:8080 helloworld-demo:latest  
It will automatically start the spring boot application



## Others Commands:
Login: docker login  
List docker images: docker images  
Delete docker image(s): docker rmi <dockerImgName1> <dockerImgName2>  

## Notes:
[Doc Notes](https://docs.google.com/document/d/1GFlXEFYj72eEToTEjy3yVLcMI0kYBFmT/edit?usp=sharing&ouid=108249823466038307017&rtpof=true&sd=true)
