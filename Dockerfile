
FROM ubuntu:latest
#Installing proverif
RUN apt update
RUN apt install opam -y
RUN apt-get install libexpat1-dev libgtk2.0-dev pkg-config -y
RUN opam init -y
RUN opam install proverif -y

#Copy the file with the code and run
COPY test.pv /usr/
RUN ~/.opam/default/bin/proverif /usr/test.pv
