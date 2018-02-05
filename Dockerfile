FROM ruby:2.5.0
ENV LANG=C.UTF-8
WORKDIR /app
ENTRYPOINT ["rake", "-f", "/usr/src/app/Rakefile"]
