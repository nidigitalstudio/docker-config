alias ng="docker run --rm -v $PWD/ng-app:/app/ng-app -p 8082:4200 nidigitalstudio/ng-docker ng"
alias composer="docker run --rm -v $PWD/api:/var/www/app/api -p 8083:8080 nidigitalstudio/laravel-docker composer"
alias artisan="docker run --rm -v $PWD/api:/var/www/app/api -p 8083:8080 nidigitalstudio/laravel-docker php artisan"