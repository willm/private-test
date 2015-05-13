FROM google/nodejs
WORKDIR /app
RUN echo "deb http://http.us.debian.org/debian testing main non-free contrib" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y ruby-full git ssh
RUN apt-get -t testing install -y libc6-dev
