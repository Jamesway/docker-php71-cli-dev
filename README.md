# Dockerfile - Php 7.1 Client for Development
Creates an image with Composer and phpspec for development.

## Installation
`docker pull jamesway/php71-cli-dev`

## Usage

**Composer**
```
# examples - note the period in the laravel example
docker run --rm -v $(pwd):/app jamesway/php71-cli-dev composer create-project --prefer-dist laravel/laravel .

docker run --rm -v $(pwd):/app jamesway/php71-cli-dev composer require analogue/orm

docker run --rm -v $(pwd):/app jamesway/php71-cli-dev composer dump-autoload

```

**phpspec**
```
# describe a class - note the quotes and escaped backslash
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev phpspec desc "Namespace\Class"
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev phpspec desc Namespace\\Class

# have phpspec create the class if it doesn't exist and run the spec test on it
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev phpspec run "Namespace\Class"
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev phpspec run Namespace\\Class

# run specs in a directory
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev phpspec run spec/path/to/specs

# run the complete spec suite
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev phpspec run
```
