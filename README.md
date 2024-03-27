# How to set up 
```
docker build -t {image_name} .
```
```
docker run -it --rm --name {container_name} -v $(pwd):/app {image_name} bash
```
