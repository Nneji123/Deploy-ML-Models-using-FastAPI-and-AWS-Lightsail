# Deploy ML Models using FastAPI and AWS Lightsail :cloud:

[![Language](https://img.shields.io/badge/Python-darkblue.svg?style=flat&logo=python&logoColor=white)](https://www.python.org)
[![Framework](https://img.shields.io/badge/FastAPI-darkgreen.svg?style=flat&logo=fastapi&logoColor=white)](https://github.com/tiangolo/fastapi)
![AWS](https://img.shields.io/badge/AWS-Lightsail-orange?style=flat&logo=amazon&logoColor=white)
[![Medium](https://img.shields.io/badge/Medium-black.svg?style=flat&logo=Medium&logoColor=white)](https://aws.plainenglish.io/how-to-deploy-a-machine-learning-api-on-aws-lightsail-151052470b7d)
![Docker](https://img.shields.io/badge/Docker-blue?style=flat&logo=docker&logoColor=white)
[![Gitpod](https://img.shields.io/badge/Gitpod-orange?style=flat&logo=gitpod&logoColor=white)](https://gitpod.io/#https://github.com/Nneji123/Deploy-ML-Models-using-FastAPI-and-AWS-Lightsail)
![reposize](https://img.shields.io/github/repo-size/Nneji123/RapLyricsBot)



## About :speech_balloon:
>This repository contains the source code for my article on medium titled `How to Deploy a Machine Learning API on AWS Lightsail`

Medium Link: https://aws.plainenglish.io/how-to-deploy-a-machine-learning-api-on-aws-lightsail-151052470b7d


## Repository File Structure :file_folder:

```
The repository file structure is given below:
├── app.py
├── docker-compose.yml
├── Dockerfile
├── download.py
├── LICENSE
├── README.md
├── requirements.txt
└── utils.py
```
## About the files
### app.py
This file contains the important source code for building and running our FastAPI application. This is what the file contains:

The API has three endpoints;
- The GET endpoint '/' which is just the homepage
- The '/document-classifier' endpoint. This endpoint takes a PDF file as input and then returns a JSON response with the classes the PDF file belongs to.
- The '/classify-image' endpoint. This endpoint takes an image file as input and then returns a JSON response with the classes the image file belongs to.

### docker-compose.yml
A docker-compose.yml is a config file for Docker Compose. It allows to deploy, combine, and configure multiple docker containers at the same time. In this case I used it to run the Docker container for the project locally.

### Dockerfile
The Dockerfile contains all the commands needed to to build and run our Docker image.

The Dockerfile  performs the following steps:
- Grabs the python:3.8.13-slim-bullseye image from Docker hub. This is called the base image.
- Creates a work directory called app.
- Installs the poppler-utils package. This package is needed by Linux in order for us to work with and manipulate PDF files.
- Upgrades the setuptools library
- Installs the CPU version of Pytorch and other requirements.
- Copies all the files from our current directory to the Docker builder.
- Exposes the port 8000. This is a very important step that allows our container to be visible on AWS Lightsail.
- Runs the download.py file.
- Launches the FastAPI application using uvicorn.

### download.py
This file downloads the pre-trained model from Hugging Face.

### requirements.txt
This file contains the necessary  requirements for our API.

### utils.py
This file contains the functions that generate the classifications for the PDF and image files.

 


## How to run the Application :question:

<details> 
  <summary><b>Running on Local Machine with Docker Compose</b></summary>

**You can also run the application in a docker container using docker compose(if you have it installed)**

1. Clone the repository:
```bash
git clone https://github.com/Nneji123/Deploy-ML-Models-using-FastAPI-and-AWS-Lightsail.git
```

2. Change the directory:
```
cd Deploy-ML-Models-using-FastAPI-and-AWS-Lightsail
```



3. Run the docker compose command
```docker
docker compose up --build 
```
And then you should be able to view the API on port 8080
</details>


<details> 
  <summary><b>Running in a Gitpod Cloud Environment</b></summary>


**Click the button below to start a new development environment:**

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/Nneji123/Deploy-ML-Models-using-FastAPI-and-AWS-Lightsail)
</details>



## Deployment :computer:
**For a detailed explanation on deployment, read up my article on medium: https://aws.plainenglish.io/how-to-deploy-a-machine-learning-api-on-aws-lightsail-151052470b7d**

# License :page_with_curl:
[MIT](https://github.com/Nneji123/Deploy-ML-Models-using-FastAPI-and-AWS-Lightsail/LICENSE.md)
