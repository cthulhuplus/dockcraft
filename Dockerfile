FROM openjdk

MAINTAINER cthulhuplus

ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.11/minecraft_server.1.11.jar /dockcraft

EXPOSE 25565

ENTRYPOINT ["java"]

CMD ["-jar minecraft_server.1.11.jar nogui"] 

#RUN apt-get update && apt-get upgrade

###Examples from https://www.digitalocean.com/community/tutorials/docker-explained-using-dockerfiles-to-automate-building-of-images
# Usage: ADD [source directory or URL] [destination directory]
#ADD /my_app_folder /my_app_folder

# Usage 1: CMD application "argument", "argument", ..
#CMD "echo" "Hello docker!"

# Usage: ENTRYPOINT application "argument", "argument", ..
# Remember: arguments are optional. They can be provided by CMD
#           or during the creation of a container. 
#ENTRYPOINT echo

# Usage: ENV key value
#ENV SERVER_WORKS 4

# Usage example with CMD:
# Arguments set with CMD can be overridden during *run*
#CMD "Hello docker!"
#ENTRYPOINT echo  

# Usage: EXPOSE [port]
#EXPOSE 8080

# Usage: FROM [image name]
#FROM ubuntu

# Usage: MAINTAINER [name]
#MAINTAINER authors_name

# Usage: RUN [command]
#RUN aptitude install -y riak

# Usage: USER [UID]
#USER 751

# Usage: VOLUME ["/dir_1", "/dir_2" ..]
#VOLUME ["/my_files"]

# Usage: WORKDIR /path
#WORKDIR ~/
