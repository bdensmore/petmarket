FROM ruby:2.2.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /petmarket
WORKDIR /petmarket
ADD Gemfile /petmarket/Gemfile
RUN bundle install
ADD . /petmarket
