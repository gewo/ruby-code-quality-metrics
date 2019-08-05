# ruby-code-quality-metrics

Run code quality metric tools on ruby source code.

Included checks:

* [rubocop][]
* [haml_lint][]

Extra tools for Rails:

* [brakeman][]
* [rails_best_practices][]

## Build

    docker build -t gapfish/ruby-code-quality-metrics .

## Run

    docker run -it --rm -v $PWD:/app gapfish/ruby-code-quality-metrics

In a Rails project:

    docker run -it --rm -v $PWD:/app gapfish/ruby-code-quality-metrics rails

Continously run checks when files change:

    find . | entr \
      docker run -it --rm -v $PWD:/app gapfish/ruby-code-quality-metrics

Show available rake tasks:

    docker run -it --rm -v $PWD:/app gapfish/ruby-code-quality-metrics -T

[rubocop]: https://github.com/bbatsov/rubocop/
[haml_lint]: https://github.com/brigade/haml-lint/
[brakeman]: https://github.com/presidentbeef/brakeman/
[rails_best_practices]: https://github.com/railsbp/rails_best_practices/

## Update gems

After changing the Gemfile, run `docker run -it --rm -v $PWD:/mnt --workdir
/mnt ruby:2.6.3 bundle update` to update your Gemfile.lock

## Deploy

docker images are uploaded to docker hub by codeship.
