# Exemplo de Uso do code-server

Este projeto é um exemplo de como configurar e utilizar o [code-server](<https://coder.com/> e <https://github.com/coder/code-server>), permitindo que você rode o Visual Studio Code em qualquer máquina e acesse-o através do navegador.

## Objetivo

Utilizar o code-server em uma imagem docker

## Observações

- O procedimento descrito descreve o processo de criação da imagem e uso a partir de um container.
- O Dockerfile precisa ser ajustado para a linguagem que será utilizada, pois a imagem precisa possuir a SDK em questão
- Este é apenas um exemplo de uso e existe opção mais completa, como por exemplo, a soluçao da <linuxserver.io> disponível em <https://github.com/linuxserver/docker-code-server>.

### Usando o Script de Instalação

Para visualizar o que ocorre durante o processo de instalação, execute:

```sh
curl -fsSL https://code-server.dev/install.sh | sh
```

Este `README.md` fornece uma visão geral do projeto, referenciando os links dos tutoriais e explicando como configurar o `code-server`.

O projeto também dispõem de um Dockerfile que monta a imagem com o code-server no Ubuntu 24.04 e também está disponível no Docker hub (<https://hub.docker.com/>)

### Processo de build, push e pull da imagem

Para realizar o build da imagem, foi utilizado:

```sh
docker build -t danieldevop/code-server:v1 .
```

Lembrando que o usuário deve estar logado previamente, para tal, faça:

```sh
docker login
```

E siga as instruções, para então conseguir utilizar:

```sh
docker push danieldevop/code-server:v1
```

Caso seja necessário usar a imagem em outro lugar, usamos:

```sh
docker pull danieldevop/code-server:v1
```

Por fim, para executar a imagem em um container...

```sh
docker run --rm -p 8080:8080 --name meu-coder danieldevop/code-server:v1
```
