# Processing Dockerfile

This contains a working Dockerfile (for use with [Docker](http://docker.io/))
for the [Processing](https://processing.org/) language. To tie it to your AV,
pass in the following arguments when starting your application:

```
-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --device /dev/snd
```

Note that this will only work if your host environment is Linux.

If you run into an error try running:
```
xhost local:root
```
first.
