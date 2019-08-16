#from DockerHub--called a base image that is then modifed, worked on and added to below
FROM python:3.5-stretch
#copying everything 'here' to the docker image
COPY . /app
#all the commands executed from now on happen in this directory
WORKDIR /app
#runs the requirements installations
RUN pip install -r requirements.txt
# when the image is built and started it runs the command here, which then you go to 0.0.0.0:8000 and see the webpage
CMD python manage.py runserver 0.0.0.0:8000
# Everything below FROM modifies the base image to suit the directory
