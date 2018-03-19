# ExaSpark with Docker

## Docker Installation

Install Docker (on linux) or Docker-toolbox (on Windows/Mac) 
  - [Mac](https://docs.docker.com/mac/step_one/)
  - [Windows](https://docs.docker.com/windows/step_one/)
  - [Linux](https://docs.docker.com/linux/step_one/)  

Linux only: [Use docker without sudo](http://askubuntu.com/a/477554)

## ExaSpark Installation
1. Open a terminal (Docker Quickstart Terminal on Windows/Mac or standard terminal on Linux).
2. Build Exareme image (this may take a few minutes the first time):

  ```bash
  $ docker build -t exaspark:latest .
  ```


## Run ExaSpark container

  ```bash
  $ docker run --rm -p 9090:9090 -it exaspark
  ```
3. Leave this console open while you are working and then [stop the container](#exit-exareme-container).
4. Find your docker machine IP
    - On Linux is: localhost
    - On Windows/Mac open a new Docker Quickstart Terminal and run:
  
    ```
    $ docker-machine ip
    ```
    It will return your docker-machine ip **(from now on use this instead of localhost if you are on Windows or Mac)**.

## Exit Exareme container
To gracefully stop your docker container:

1. Select your ExaSpark docker console.
2. Press Ctrl+C.
3. Close the console.
