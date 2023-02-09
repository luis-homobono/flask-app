# app-gpt3
Aplicación web para interactuar con GPT3 para ayudar en la resolución de problemas científicos y de progamación.

# Docker and Docker Compose installation

Install Docker:

- `https://docs.docker.com/install/`

After install Docker, proceed to install Docker Compose:

- `https://docs.docker.com/compose/install/`

### Project Structure

The following is the suggested structure to successfully build this project:

```
app-gpt3/                           # root project
├── app/                       # flask project
├── scripts/                   # scripts for build images
├── Dockerfile                 # flask dockerfile
├── docker-compose.yml         # docker compose definition for dev
├── execute                    # executable for docker entrypoint
├── .env-test                  # set enviroment variable for project
└── ...
```

## Project Setup

In the following steps we will cover some basic stuff to setup a development environment for app

### Building the Project for Development Environment

1. Clone the repository using the following command:

```
$ git clone git@github.com:karelTole/app-gpt3.git
```

2. Positioned in the root folder execute:

```
# This will clone related repositories and build neccesary docker images.

$ ./scripts/pre_setup.sh
```

3. Run all services with:

```
$ docker-compose up -d --build
```

4. Run entrypoint script to run server:

```
./execute bash
python main.py
```

5. API Service should be running on: [https://localhost/api/v1/](https://localhost/api/v1/)
