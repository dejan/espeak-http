FROM ruby:3.0.2-alpine

RUN apk --update add --virtual build-dependencies ruby-dev build-base espeak lame
RUN gem install bundler

ADD Gemfile /app/
ADD Gemfile.lock /app/

RUN cd /app && bundle install

ADD . /app

EXPOSE 9292
WORKDIR /app

ENTRYPOINT bundle exec rackup -E production -s puma
