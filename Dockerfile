FROM ruby:2.4.0-onbuild
ENV LANG=C.UTF-8
WORKDIR /app
CMD ["rake", "-f", "/usr/src/app/Rakefile"]
