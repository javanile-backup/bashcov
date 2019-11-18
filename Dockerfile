FROM ruby:2.6.5-buster


ENV VERSION=1.8.2

RUN gem install bashcov --version ${VERSION} --no-format-exec

WORKDIR /app

ENTRYPOINT ["bashcov"]
CMD ["--help"]
