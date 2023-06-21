setup:
	test -f ./apps/backend/.env || cp ./apps/backend/.env.example ./apps/backend/.env;
	docker-compose down && docker-compose up -d;
	make dbreseed dbprepare;

start:
	docker-compose down && docker-compose up;

dbprepare:
	cd apps/backend && make dbprepare;

dbreseed:
	cd apps/backend && make dbreseed;
