## Dockerfile

# Chọn image môi trường ruby
FROM ruby:2.5.1

# ENV
ENV NODE_VERSION 10

#Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - && \
  apt-get install -y nodejs && \
  rm -rf /var/lib/apt/lists/*

# Install packages
RUN apt-get update \
  && apt-get install -y \
  zlib1g-dev \
  build-essential \
  libssl-dev \
  libreadline-dev \
  libyaml-dev \
  libxml2-dev \
  libxslt1-dev \
  libcurl4-openssl-dev \
  libffi-dev \
  git-core \
  vim \
  imagemagick

RUN apt-get update -qq && \
  apt-get install -y build-essential \
  default-libmysqlclient-dev \
  mysql-client \
  xvfb \
  redis-tools && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  lsof

#Clear lib
RUN apt-get clean autoclean \
  && apt-get autoremove -y \
  && rm -rf \
    /var/lib/apt \
    /var/lib/dpkg \
    /var/lib/cache \
    /var/lib/log

#Create workspace
ENV APP_ROOT /app/base
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

#Clone gemfile
COPY Gemfile Gemfile.lock ./
ENV BUNDLER_VERSION 2.0.1
RUN gem install bundler && bundle install

ADD . ./
CMD bundle exec rails s -p 3000 -b '0.0.0.0'
