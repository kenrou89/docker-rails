FROM ruby:2.5
RUN apt-get update && apt-get install -y \
	build-essential \
	libpq-dev \
	nodejs \
	postgresql-client \
	yarn
WORKDIR /docker-rails
COPY Gemfile Gemfile.lock /docker-rails/
RUN bundle install