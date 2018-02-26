# Dockerfile - Php 7.1 Client for Development
Creates an image with Composer and phpspec for development.

## Installation
`docker pull jamesway/php71-cli-dev`

## Usage

**Composer**
```
# examples - note the period in the laravel example
docker run --rm -v $(pwd):/app jamesway/php71-cli-dev composer create-project --prefer-dist laravel/lumen .

docker run --rm -v $(pwd):/app jamesway/php71-cli-dev composer require analogue/orm

docker run --rm -v $(pwd):/app jamesway/php71-cli-dev composer dump-autoload

```
*NOTE: I'm not a fan of aliasing a docker command since the alias insulates you from the image version. If you end up wanting to use a different image than the alias, you need to remember to update the alias. An alias does, however, provide an easy way to get a composer container to work with PHPStorm. If aliasing, I suggest using some of the docker image tag info eg:
```
# set permanent alias on a mac
cp ~/.bash_profile ~/.bash_profile.bak

echo -e '\nalias composer71="docker run --rm -itv $(pwd):/app jamesway/php71-cli-dev composer"'

source ~/.bash_profile
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
