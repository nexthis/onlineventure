# How to use

## Routes

- /articles -> returns all articles **get** 
- /article/{id} -> returns article by id **get** 
- /articles/user/{name} -> returns article by user nickname **get** 
- /articles/most-polular-of-the-week -> returns 3 authors that wrote the most articles last week. **get** 
- /login -> login route nickname/password **post** 
- /article -> create new article **post** 
- /article -> edit new article **put**
- /article -> delete new article **delete**

## Run

 1. composer install
 3. config your .env.example
 4. php artisan migrate
 5. php artisan db:seed --class=DatabaseSeeder
 6. php -S localhost:8000 -t public 
 🥳
 
## Notes
- in branch react, there is a simple implementation of this API
- CorsMiddleware is only for dev environment

# Lumen PHP Framework

[![Build Status](https://travis-ci.org/laravel/lumen-framework.svg)](https://travis-ci.org/laravel/lumen-framework)
[![Total Downloads](https://poser.pugx.org/laravel/lumen-framework/d/total.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![Latest Stable Version](https://poser.pugx.org/laravel/lumen-framework/v/stable.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![License](https://poser.pugx.org/laravel/lumen-framework/license.svg)](https://packagist.org/packages/laravel/lumen-framework)

Laravel Lumen is a stunningly fast PHP micro-framework for building web applications with expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Lumen attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as routing, database abstraction, queueing, and caching.

## Official Documentation

Documentation for the framework can be found on the [Lumen website](https://lumen.laravel.com/docs).

## Contributing

Thank you for considering contributing to Lumen! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Security Vulnerabilities

If you discover a security vulnerability within Lumen, please send an e-mail to Taylor Otwell at taylor@laravel.com. All security vulnerabilities will be promptly addressed.

## License

The Lumen framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
