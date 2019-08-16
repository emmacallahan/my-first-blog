FROM python:3.5-stretch
COPY . /app
WORKDIR /app
EXPOSE 8000
RUN pip install -r requirements.txt
