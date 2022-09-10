# Deploy ML Models using FastAPI and AWS Lightsail :cloud:

[![Language](https://img.shields.io/badge/Python-darkblue.svg?style=flat&logo=python&logoColor=white)](https://www.python.org)
[![Framework](https://img.shields.io/badge/FastAPI-darkgreen.svg?style=flat&logo=fastapi&logoColor=white)](https://github.com/tiangolo/fastapi)
![AWS](https://img.shields.io/badge/AWS-Lightsail-orange?style=flat&logo=amazon&logoColor=white)
[![Medium](https://img.shields.io/badge/medium-blue.svg?style=flat&logo=medium&logoColor=white)](https://medium.com/p/151052470b7d/edit)
![Docker](https://img.shields.io/badge/Docker-blue?style=flat&logo=docker&logoColor=white)
[![Gitpod](https://img.shields.io/badge/Gitpod-orange?style=flat&logo=gitpod&logoColor=white)](https://gitpod.io/#https://github.com/Nneji123/Deploy-ML-Models-using-FastAPI-and-AWS-Lightsail)
![reposize](https://img.shields.io/github/repo-size/Nneji123/RapLyricsBot)



## About :speech_balloon:
>This repository contains the source code for my article on medium titled `How to Deploy a Machine Learning API on AWS Lightsail`

Medium Link: https://medium.com/p/151052470b7d/edit


## Repository File Structure :file_folder:
```bash
├── app.py
├── docker-compose.yml
├── Dockerfile
├── download.py
├── LICENSE
├── README.md
├── requirements.txt
└── utils.py

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
app.py
This file contains the important source code for building and running our FastAPI application. This is what the file contains:

The API has three endpoints;
The GET endpoint '/' which is just the homepage
The '/document-classifier' endpoint. This endpoint takes a PDF file as input and then returns a JSON response with the classes the PDF file belongs to.
The '/classify-image' endpoint. This endpoint takes an image file as input and then returns a JSON response with the classes the image file belongs to.

docker-compose.yml
A docker-compose. yml is a config file for Docker Compose. It allows to deploy, combine, and configure multiple docker containers at the same time. In this case I used it to run the Docker container for the project locally.

Dockerfile
The Dockerfile contains all the commands needed to to build and run our Docker image.

The Dockerfile above performs the following steps:
Grabs the python:3.8.13-slim-bullseye image from Docker hub. This is called the base image.
Creates a work directory called app.
Installs the poppler-utils package. This package is needed by Linux in order for us to work with and manipulate PDF files.
Upgrades the setuptools library
Installs the CPU version of Pytorch and other requirements.
Copies all the files from our current directory to the Docker builder.
Exposes the port 8000. This is a very important step that allows our container to be visible on AWS Lightsail.
Runs the download.py file.
Launches the FastAPI application using uvicorn.

download.py
This file downloads the pre-trained model from Hugging Face.

requirements.txt
This file contains the necessary  requirements for our API.

utils.py
This file contains the functions that generate the classifications for the PDF and image files.
## Pre-requisites :boom:

To build and use the bot, you'll need to:
 
 1. Create a new Twitter account to act as the bot.
 2. Register for a [twitter developer account.](https://developer.twitter.com/en)  
 3. Create a [twitter app](https://developer.twitter.com/en/portal/projects-and-apps). Make sure to give it **Read and Write** permissions.
 4. Set up a [Railway](https://railway.app/) or [Heroku Account.](https://heroku.com)

 


## How to run the Application :question:
<details>
    <summary><b>How to Run the application locally.<b></summary>


To make your own bot follow these steps:

1. Clone this repository on your local machine
2. Create a virtual environment in your project's root directory: `python3 -m venv environment && source environment/bin/activate`
3. Install the required libraries using pip: `pip install -r requirements.txt`
4. Create a file called `.env` in the root directory of your project. Put your twitter App keys there (and any other keys required for scraping data if needed). 
    * THIS IS JUST FOR TESTING. Once everything is tested and ready to deploy, you'll move these to environment variables.
    * ADD THIS FILE(`.env`) TO THE .gitignore so you're not putting your api keys publicly on github!
```
ACCESS_TOKEN=<YOUR_ACCESS_TOKEN_HERE>
ACCESS_TOKEN_SECRET=<YOUR_ACCESS_TOKEN_SECRET_HERE>
CONSUMER_KEY=<YOUR_CONSUMER_KEY_HERE>
CONSUMER_SECRET=<YOUR_CONSUMER_SECRET_HERE>
```
1. Make changes in the logic of the bot by modyifing `src/bot.py`
2. Test your changes locally by running `python src/bot.py` from the root directory of your project

</details>


<details> 
  <summary><b>Running on Local Machine with Docker Compose</b></summary>

**You can also run the application in a docker container using docker compose(if you have it installed)**

1. Clone the repository:
```bash
git clone https://github.com/Nneji123/RapLyricsBot.git
```

2. Change the directory:
```
cd RapLyricsBot
```

3. Edit the `.envexample` file and store your keys there.


4. Run the docker compose command
```docker
docker compose up -d --build 
```
And then the lyrics should be tweeted.
</details>


<details> 
  <summary><b>Running in a Gitpod Cloud Environment</b></summary>


**Click the button below to start a new development environment:**

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/Nneji123/RapLyricsBot)
</details>

## Tests :keyboard:
<details> 
  <summary><b>Test Bot</b></summary>

To test the API functions do the following:
1. Clone the repository:
```
git clone https://github.com/Nneji123/RapLyricsBot.git
```
2. Change the working directory and install the requirements and pytest:
```
cd Raplyricsbot
pip install -r requirements.txt
```
3. Move to the tests folder and run the tests
```
pip install pytest
pytest tests
```
</details>

## Deployment :computer:

<details> 
  <summary><b>Deploying the Bot to Heroku</b></summary>

Click the button below to deploy the application.

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)



</details>

<details>
    <summary><b>Deploy the Bot to Railway<b></summary>
Click the button below to deploy the bot to railway

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template/k_WXDI?referralCode=ZYOf2M)

</details>


# License :page_with_curl:
[MIT](https://github.com/Nneji123/Deploy-ML-Models-using-FastAPI-and-AWS-Lightsail/LICENSE.md)
