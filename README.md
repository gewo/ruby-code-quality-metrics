# ruby-code-quality-metrics

Run code quality metric tools on ruby source code.

Included checks:

* rubocop

Extra tools for Rails:

* brakeman
* rails_best_practices

## Build

    docker build -t gewo/ruby-code-quality-metrics .

## Run

    docker run -it --rm -v $PWD:/app gewo/ruby-code-quality-metrics

In a Rails project:

     docker run -it --rm -v $PWD:/app gewo/ruby-code-quality-metrics rails

Continously run checks when files change:

    find . | entr \
      docker run -it --rm -v $PWD:/app gewo/ruby-code-quality-metrics
