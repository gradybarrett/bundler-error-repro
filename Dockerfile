FROM ruby:2.5.8

WORKDIR /tmp

RUN gem install bundler -v 2.2.2

COPY Gemfile* ./

RUN bundle _2.2.2_ install 

WORKDIR /opt/app
COPY . ./

