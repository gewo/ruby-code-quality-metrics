FROM ruby:2.5.0
ENV LANG=C.UTF-8

COPY Rakefile /usr/src/ruby_code_quality_metrics/Rakefile
COPY Gemfile /usr/src/ruby_code_quality_metrics/Gemfile
COPY Gemfile.lock /usr/src/ruby_code_quality_metrics/Gemfile.lock

WORKDIR /usr/src/ruby_code_quality_metrics
RUN bundle check || bundle install
COPY . /usr/src/ruby_code_quality_metrics

WORKDIR /app

ENTRYPOINT ["rake", "-f", "/usr/src/ruby_code_quality_metrics/Rakefile"]
