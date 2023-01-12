# primeriaImagemDocker-PoC

This project is a basic Docker study, in here i have learned how to create a dockerfile and a used a .dockerignore, in a future 
I pretend to implement a docker-compose.

## How to use

1. Clone this repository;
2. With docker installed, go to its directory and run on terminal:
```bash
docker build -t primeira_imagem/prod:1.0 .
```
to build an image;
*obs: that you can change its name and version using "APPNAME/VERSION:1.x" as a model.
3. Now you can use the Image_Id it gives you or run in terminal:
```bash
docker images
```
to get the id;
4. To run the image use this code on terminal:
```bash
docker run -p PORT_HOST:4002 IMAGE_ID
```
obs: You have to select an empty port to put on "PORT_HOST".

To see if it worked just go to any navigator and access https://localhost:PORT_HOST/health.
obs: change "PORT_HOST" to your choosen port.
