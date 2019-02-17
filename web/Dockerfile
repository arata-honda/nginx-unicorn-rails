FROM ruby:2.6.1-alpine
 
RUN \
apk add --no-cache --virtual build-dependencies --update \
    build-base \
    linux-headers \
    mysql-client \
    mysql-dev \
    tzdata \
    nodejs \
    yarn

ENV APP_ROOT /app

RUN mkdir ${APP_ROOT}

WORKDIR ${APP_ROOT}

# ソースの変更の度に、bundle install をしないように Gemfileを別にする
ADD ./app/Gemfile Gemfile
ADD ./app/Gemfile.lock Gemfile.lock

RUN \
bundle install

ADD ./app ${APP_ROOT}
