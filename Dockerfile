FROM debian:buster-slim
RUN apt update
RUN apt install -y \
	cmus
RUN apt clean
ADD src/update.sh /update.sh
RUN useradd -ms /bin/bash user
ENV USER user
ENTRYPOINT /usr/bin/cmus
