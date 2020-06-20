FROM ruby:2.6.6

ENV RAILS_ENV production
ENV BUNDLE_WITHOUT development:test
ARG RAILS_MASTER_KEY

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /myapp
WORKDIR /myapp
COPY . /myapp

RUN bundle install
RUN bundle exec rails assets:precompile
RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
# Start the main process.
CMD ["rails", "server", "-e", "production", "-b", "0.0.0.0"]
