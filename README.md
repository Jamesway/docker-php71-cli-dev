## php 7.1 Client for Development
Docker image with Composer and phpspec for development.

I like to use run --rm to remove the container after it runs

## Installation
```
# optional since docker will automatically pull it when you use it
docker pull jamesway/php71-cli
```

## Usage
### Composer
```
# note the period at the end
docker run --rm -v $(pwd):/app jamesway/php71-cli composer create-project --prefer-dist laravel/lumen .

docker run --rm -v $(pwd):/app jamesway/php71-cli composer require analogue/orm

docker run --rm -v $(pwd):/app jamesway/php71-cli composer dump-autoload

```  

### phpspec
phpspec is interactive, so -itv
```
# two ways to reference a class, quotes or escaped backslash

# describe a class to create the spec
docker run --rm -itv $(pwd):/app jamesway/php71-cli phpspec desc "Namespace\Class"
docker run --rm -itv $(pwd):/app jamesway/php71-cli phpspec desc Namespace\\Class

# have phpspec create the class if necessary and run the spec
docker run --rm -itv $(pwd):/app jamesway/php71-cli phpspec run "Namespace\Class"
docker run --rm -itv $(pwd):/app jamesway/php71-cli phpspec run Namespace\\Class

# run all specs in a directory
docker run --rm -itv $(pwd):/app jamesway/php71-cli phpspec run spec/path/to/specs

# run the complete spec suite
docker run --rm -itv $(pwd):/app jamesway/php71-cli phpspec run
```
