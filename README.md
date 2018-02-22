# Dockerfile - Php 7.1 Client for Development
Creates an image with Composer and phpspec for development.

## Installation
`docker pull jamesway/php71-cli-dev`

## Usage

**Composer**
```
# examples - note the period in the laravel example
docker run --rm -v $(pwd):/app jamesway/php71-cli-dev <pre><b>composer --prefer-dist laravel/laravel .</b></pre>

docker run --rm -v $(pwd):/app jamesway/php71-cli-dev <pre><b>composer require vendor/package:tag</b></pre>

docker run --rm -v $(pwd):/app jamesway/php71-cli-dev <pre><b>composer dump-autoload</b></pre>

```

**phpspec**
```
# describe a class - note the quotes
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev <pre><b>phpspec desc "Namespace\Class"</b></pre>

# run tests in a directory
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev <pre><b>phpspec run spec/path/to/specs</b></pre>

# run complete test suit
docker run -itv --rm -v $(pwd):/app jamesway/php71-cli-dev <pre><b>phpspec run</b></pre>
```
