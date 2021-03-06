# base-image for python on any machine using a template variable,
# see more about dockerfile templates here: https://www.balena.io/docs/learn/develop/dockerfile/
# FROM balenalib/%%BALENA_MACHINE_NAME%%-python:3-stretch-run
FROM balenalib/raspberrypi3-debian:3-build

# use `install_packages` if you need to install dependencies,
# for instance if you need git, just uncomment the line below.
# RUN install_packages git

# Set our working directory
WORKDIR /usr/src/app

# Install requirements
RUN sudo apt update
RUN sudo apt install python-opencv
RUN sudo apt install python-numpy

# This will copy all files in our root to the working  directory in the container
COPY . ./

# Enable udevd so that plugged dynamic hardware devices show up in our container.
ENV UDEV=1

# main.py will run when container starts up on the device
CMD ["python","-u","src/main.py"]