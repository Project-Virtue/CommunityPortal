FROM python:3.7

# set env vars
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV PROJECT_HOME /portal

# apt update and install base packages
RUN apt-get update
RUN apt-get install -y \
    build-essential

# python install base modules
RUN pip3 install pipenv

# init project home dir and clone repo
RUN mkdir ${PROJECT_HOME}
WORKDIR ${PROJECT_HOME}
COPY . .

# install python dependencies
RUN pipenv install

# expose port(s)
EXPOSE 8080

# start server
ENTRYPOINT ["/bin/bash", "scripts/entrypoint.sh"]
