FROM ruby:2.4.1-onbuild
LABEL maintainer "Gebhard Woestemeyer <g@ctr.lc>"
ENV LANG=C.UTF-8
WORKDIR /app
ENTRYPOINT ["rake", "-f", "/usr/src/app/Rakefile"]
