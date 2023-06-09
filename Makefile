install:
	composer install

validate:
	composer validate

lint:
	composer exec --verbose phpcs -- --standard=PSR12 src bin tests

test:
	composer exec --verbose phpunit tests -- --coverage-text

console:
	composer exec --verbose psysh

lint-fix:
	composer exec --verbose phpcbf -- --standard=PSR12 src tests

test-coverage:
	composer exec --verbose phpunit tests -- --coverage-clover build/logs/clover.xml

start:
	php -S localhost:8080 -t public public/index.php	
