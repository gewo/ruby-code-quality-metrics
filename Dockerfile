FROM ruby:2.4.0-onbuild
LABEL maintainer "Gebhard Woestemeyer <g@ctr.lc>"
ENV LANG=C.UTF-8
WORKDIR /app
ENTRYPOINT ["rake", "-f", "/usr/src/app/Rakefile"]
