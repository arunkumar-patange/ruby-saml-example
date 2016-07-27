# ruby version 2.0.2
FROM ruby:2.1

WORKDIR /onelogin/src
ADD . /onelogin/src

ENV BUNDLE_PATH=/bundle
RUN bundle install --verbose

ENV PORT 3003
ENV RAILS_ENV development

EXPOSE 3003

ENTRYPOINT ["/usr/local/bin/bundle", "exec"]
CMD ["rails", "server", "-b0.0.0.0", "-p$PORT"]
