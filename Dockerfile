FROM ruby:2.2.6-onbuild

RUN apt-get update -qq && apt-get install -y build-essential && apt-get install -y libpq-dev && apt-get install -y libxml2-dev libxslt1-dev && apt-get install -y libqt4-webkit libqt4-dev xvfb && apt-get install -y nodejs

ENV APP_HOME /myapp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME
