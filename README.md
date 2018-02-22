# Dockerfile - Php 7.1 Client for Development
Creates an image with Composer and phpspec for development.

## Installation
`docker pull jamesway/php71-cli-dev`

## Usage

**Composer**
```
# examples - note the period in the laravel example
docker run --rm -v $(pwd):/app jamesway/php71-cli-dev composer --prefer-dist laravel/laravel .

docker run --rm -v $(pwd):/app jamesway/php71-cli-dev composer require vendor/package:tag

docker run --rm -v $(pwd):/app jamesway/php71-cli-dev composer dump-autoload

```

**phpspec**
```
# describe a class - note the quotes
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev phpspec desc "Namespace\Class"

# run tests in a directory
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev phpspec run spec/path/to/specs

# run complete test suit
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev phpspec run
```
