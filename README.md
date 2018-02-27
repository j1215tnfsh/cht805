# cht805
Automated docker build for CHT using 805 chip and AOSP 4.4

## Docker build
```
docker build -t cht805 .
```

## Build the source code
```
docker run --rm -it \
--mount type=bind,source=/home/johnnyli/Work/CHT_805/source,target=/src \
--mount type=bind,source=/home/johnnyli/Work/CHT_805/out,target=/src/out \
--mount type=bind,source=/opt/aml_toolchains,target=/opt/aml_toolchains \
cht805 [[build] [slow] | source]
```

## Debugging
```
docker run [some-options] cht805 [root,user]
```
