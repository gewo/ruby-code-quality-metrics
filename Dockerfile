FROM ruby:2.4.0-onbuild
WORKDIR /app
CMD ["rake", "-f", "/usr/src/app/Rakefile"]
