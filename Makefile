all:
					docker-compose up

clear:
					@clear

show:
					docker system df
					
cc:
					@echo "----- MAKE cc : removing containers"
					@sleep 1
					@docker ps --format '{{.Names}}' | xargs docker rm -f
					
ci:
					@echo "----- MAKE ci : removing images"
					@sleep 1
					@docker images -a | tail -n +2 | awk -F' ' '{print $$3}'| xargs docker rmi -f

prune:
					@echo "----- MAKE prune : prune all"
					@sleep 1
					@docker system prune -a -f
					@docker container prune -f
					@docker image prune -f
					@docker volume prune -f

cenv:
					@echo "----- MAKE cenv : clean env"
					docker compose -f docker-compose.yml down -v

ls:					clear show
					docker ps
					docker image ls

clean:					clear show cc ci prune cenv ls
					@echo "show cc ci prune cenv ls"

.PHONY:				all ls show cc ci prune c vim cenv re
