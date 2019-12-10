# DotnetDockerDemo
>>> A skeleton for un .NET web application supporting docker.


### - Launch
##### - 1/ Clone the repository

```bash
git clone https://github.com/NajlaBH/dotnetdockerdemo.git
```

##### - 2/ Run the web application

###### a) First mehtod : From Visual studio
	* Open the "dotnetdockerdemo" project.
	* Run the "docker-compose.yml" file located in the project.
	
###### b) Second mehtod : Terminal / Docker

```bash
cd dotnetdockerdemo
docker-compose up
```

=> You should see the web app at "https://localhost:44329/". 
You may have to trust the website because it self-signed.


### - License
MIT