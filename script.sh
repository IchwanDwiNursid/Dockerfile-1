#FROM Instructions
docker build -t nursid/from from

docker image

#RUN Instructions
docker build -t nursid/run run --progress=plain --no-cache

#CMD Instructions
docker build -t nursid/command command

docker image inspect nursid/command

docker container create --name command nursid/command

docker start command

docker container logs command

#LABEL Instructions
docker build -t nursid/label label

docker image inspect nursid/label

#ADD Instructions
docker build -t nursid/add add

docker container create --name add nursid/add

docker start add

docker container logs add

#COPY Instruction
docker build -t nursid/copy copy

docker container create --name copy nursid/copy

docker start copy

docker container logs copy

#IGNORE Instructions
docker build -t nursid/ignore ignore

docker container create --name ignore nursid/ignore

docker start ignore

docker container logs ignore

docker stop ignore 

#EXPOSE Instructions
docker build -t nursid/expose expose

docker container create --name expose -p 8080:8080 nursid/expose

docker start expose

docker container logs expose

docker stop expose

docker container rm expose

# ENV Instruction
docker build -t nursid/env env

docker container create --name env -e APP_PORT=8080 -p 8080:8080 nursid/env

docker start env

docker container logs env

docker stop env 

docker container rm env

# VOLUME Instruction
docker build -t nursid/volume volume

docker image inspect nursid/volume 

docker container create --name volume -e APP_PORT=8080 -p 8080:8080 nursid/volume

docker container start volume

docker container logs volume

docker stop volume

docker container rm volume

# WORKDIR

docker build -t nursid/workdir workdir

docker container create --name workdir -e APP_PORT=8080 -p 8080:8080 nursid/workdir

docker start workdir

docker exec -it workdir /bin/sh

pwd

docker stop workdir

# USER Instruction
docker build -t nursid/user user

docker container create --name user -e APP_PORT=8080 -p 8080:8080 nursid/user

docker start user

docker exec -it user /bin/sh

docker stop user

docker container rm user

docker image rm nursid/user

# ENV Instruction

docker build -t nursid/arg arg --build-arg app=pzn

docker container create --name arg -p 8080:8080 nursid/arg

docker start arg

docker container logs arg 

docker container stop arg

docker exec -it arg /bin/sh

#HEALTCHECK Instruction
docker build -t nursid/health health

docker container create --name health -p 8080:8080 nursid/health

docker start health

docker container logs health

docker stop health

docker container rm health

#ENTRYPOINT Instruction

docker build -t nursid/entrypoint entrypoint

docker container create --name entrypoint -p 8080:8080 nursid/entrypoint

docker start entrypoint
 
docker stop entrypoint

docker container rm entrypoint

#NODE project

docker build -t nursid/nodenew nodenew

docker container create --name node -p 3000:3000 nursid/nodenew

docker start node

#MULTI Stage Instruction

docker build -t nursid/multi multi

docker container create --name multi -p 8080:8080 nursid/multi

docker start multi

docker exec -it multi /bin/sh

