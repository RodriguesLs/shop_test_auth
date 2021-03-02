FROM ruby:3

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
&& apt-get update -qq && apt-get install -y nodejs yarn && gem install bundler

ENV APP_HOME /shop_test
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD Gemfile Gemfile.lock $APP_HOME/
RUN bundle install
ADD . $APP_HOME/

CMD ["/bin/bash"]
