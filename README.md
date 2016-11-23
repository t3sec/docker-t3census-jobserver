# T3census Jobserver Docker image

## Details

Docker image that implements a Gearman Jobserver for T3census project

## Building image

`sudo docker build -t t3census-jobserver .`

## Create and using image

* create image: `sudo docker create -p 4730:4730 --name instance.t3census-jobserver t3census-jobserver`
* start image: `sudo docker start instance.t3census-jobserver`
* stop image: `docker stop instance.t3census-jobserver`
* remove image: `docker rm instance.t3census-jobserver`