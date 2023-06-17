setup:
	test -f ./apps/backend/.env || cp ./apps/backend/.env.example ./apps/backend/.env;
	docker-compose down && docker-compose up -d;
	make dbreseed dbprepare;

start:
	docker-compose down && docker-compose up;

dbprepare:
	cd apps/backend && bin/rails db:drop db:create db:migrate --trace RAILS_ENV=test;

dbreseed:
	cd apps/backend && bin/rails db:drop db:create db:migrate db:seed --trace RAILS_ENV=development;
