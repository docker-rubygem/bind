FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.6

RUN gem install bind --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["rbind"]
CMD ["--help"]
