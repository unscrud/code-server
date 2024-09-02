FROM ubuntu:24.04
WORKDIR /app
COPY ./config.yaml /root/.config/code-server/
RUN apt update && apt install -y curl
RUN curl -fsSL https://code-server.dev/install.sh | sh
EXPOSE 8080
CMD [ "code-server", "." ]