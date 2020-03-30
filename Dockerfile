FROM ruby:2.5.1

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs yarn

RUN curl -sL https://github.com/phrase/phraseapp-client/releases/download/1.16.1/phraseapp_linux_386.tar.gz | tar zx
RUN mv phraseapp_linux_386 /usr/bin/phraseapp
