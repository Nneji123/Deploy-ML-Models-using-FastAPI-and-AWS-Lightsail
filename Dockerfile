FROM python:3.8.13-slim-bullseye

WORKDIR /app

RUN apt-get -y update  && apt-get install -y \
  poppler-utils

RUN pip install --upgrade setuptools 

ADD requirements.txt .

RUN pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu && pip install -r requirements.txt

ADD . .

EXPOSE 8000:8000

RUN python download.py

CMD uvicorn app:app --host 0.0.0.0 --port 8000