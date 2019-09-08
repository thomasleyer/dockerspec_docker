# dockerspec_docker
Create a docker image with dockerspec installed.

Good practice in building docker images should include testing that the result has the desired properties.
[Dockerspec](https://github.com/zuazo/dockerspec) is very helpful in this task and can be integrated in your build pipeline.

The dockerspec_docker image resulting from this repository provides Dockerspec. It lets you avoid installing Dockerspec on your build host directly.

## Build

Straight forward.

```
docker build -t dockerspec_docker:latest .
```

## Test

For running tests, the docker socket of your build host needs to be mapped into the dockerspec_docker container.

As an example, this is how the dockerspec_docker:lates image would test its own properties:

```
docker run -it  -v /var/run/docker.sock:/var/run/docker.sock -v `pwd`:/spec dockerspec_docker:latest rspec spec/
```



