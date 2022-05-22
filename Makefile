up:
	docker-compose up -d
down:
	docker-compose down
restart:
	docker-compose down
	docker-compose up -d
exec:
	docker-compose exec docker-nginx bash
get-cached:
	curl localhost:8080/karthik-sreenivas-rsx-joaKYrk-unsplash.jpg -s -I -H "cacheclean: 0"
get-and-clean:
	curl localhost:8080/karthik-sreenivas-rsx-joaKYrk-unsplash.jpg -s -I -H "cacheclean: 1"

