FROM ruby:3.2.2-bullseye

ENV BUNDLER_VERSION=2.4.13

RUN apt-get update -qq && apt-get install -y nodejs npm postgresql-client

RUN mkdir /backend
COPY . /backend
WORKDIR /backend

RUN gem update --system && gem install bundler --no-document
RUN bundle check || bundle install

COPY . ./

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
