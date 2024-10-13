FROM openjdk:11-jre-slim

ENV APP_HOME=/opt/waves
WORKDIR $APP_HOME

COPY ym.custom.conf $APP_HOME/waves.conf
RUN apt-get update && apt-get install -y curl jq wget \
    && JAR_REMOTE_PATH=$(curl "https://api.github.com/repos/wavesplatform/Waves/releases" \
        | jq -r '[.[] | select(.tag_name == "v1.5.7")] | first.assets[] | select(.name|endswith(".jar")) | .browser_download_url') \
    && echo "Downloading '$JAR_REMOTE_PATH'. This may take a few minutes..." \
    && wget $JAR_REMOTE_PATH -qO $APP_HOME/waves.jar
EXPOSE 6860 6869
