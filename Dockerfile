FROM ruby:2.5.8

WORKDIR /tmp

RUN gem install bundler -v 2.2.2

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle _2.2.2_ install --jobs 4

RUN cat Gemfile.lock

WORKDIR /opt/app
COPY . /opt/app

