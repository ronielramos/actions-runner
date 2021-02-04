FROM ruby:2.6.6

ENV APP_HOME /actions-runner
WORKDIR $APP_HOME

RUN apt-get update -qq \
  # && apt-get install build-essential git nodejs libpq-dev xvfb libfontconfig wkhtmltopdf libmagickwand-dev -y \
  && gem install bundler

COPY Gemfile Gemfile.lock $APP_HOME/

RUN bundle check || bundle install

COPY . ./

CMD ["rails", "server"]