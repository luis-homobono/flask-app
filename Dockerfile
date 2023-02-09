FROM python:3.11-bullseye

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set docker-image
RUN apt-get update -y && apt-get install -y curl gnupg
RUN apt-get update \
    && apt-get install -yq --no-install-recommends \
    && apt-get install -y --no-install-recommends git openssh-client \
    && apt-get install gcc -y

# Set work directory
RUN mkdir /opt/backend
WORKDIR /opt/backend
RUN useradd -m container_user
RUN mkdir /opt/logs

# Copy local contents into the container
COPY /src .
RUN chown -R container_user:container_user /opt/backend
RUN chown -R container_user:container_user /opt/logs

# Install all requirements dependencies
RUN pip install -r requirements.txt

# Run flask
EXPOSE 5000
# CMD ["python", "main.py"]
ENTRYPOINT ["/opt/backend/entrypoint.sh"]