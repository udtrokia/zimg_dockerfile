## Two way to optimize

+ Remove the junk file
+ Build from dev_enviroment

## How to use

+ Build:

```
docker build -t zimg<your-name> .
```

+ Check

```
docker image ls
```

+ Run

```
docker run -p 4869:80 zimg
```

## If you want to run it anywhere

+ Tag:

```
docker tag zimg udtrokia/zimg:lastest
```

+ Publish
```
docker push udtrokia/zimg:lastest
```

+ Run Image:
```
docker run -p 4869:80 udtrokia/zimg:lastest
```

+ Into container, daemon

```
docker run -dit -p 4869:80 zimg
```


