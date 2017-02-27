# ruby-code-quality-metrics

## Build

    docker build -t gewo/ruby-code-quality-metrics .

## Run

    docker run -it --rm -v $PWD:/app gewo/ruby-code-quality-metrics

In a Rails project:

     docker run -it --rm -v $PWD:/app gewo/ruby-code-quality-metrics \
       rake -f /usr/src/app/Rakefile rails

Continously run checks when files change:

    find . | entr \
      docker run -it --rm -v $PWD:/app gewo/ruby-code-quality-metrics
