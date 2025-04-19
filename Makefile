# Docker compose commands
gateway-up:
	docker-compose -f ./compose/api-gateway.docker-compose.yaml --env-file=./compose/envs/api_gateway.env up -d --build

gateway-down:
	docker-compose -f ./compose/api-gateway.docker-compose.yaml --env-file=./compose/envs/api_gateway.env down

users-up:
	docker-compose -f ./compose/users-service.docker-compose.yaml --env-file=./compose/envs/users-service.env up -d --build

users-down:
	docker-compose -f ./compose/users-service.docker-compose.yaml --env-file=./compose/envs/users-service.env down

questions-up:
	docker-compose -f ./compose/questions-service.docker-compose.yaml --env-file=./compose/envs/questions-service.env up -d --build

questions-down:
	docker-compose -f ./compose/questions-service.docker-compose.yaml --env-file=./compose/envs/questions-service.env down
