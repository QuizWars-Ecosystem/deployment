# Docker compose commands
gateway-up:
	docker-compose -f ./compose/api-grpc-gateway.docker-compose.yaml --env-file=./compose/envs/api_grpc_gateway.env up -d --build

gateway-down:
	docker-compose -f ./compose/api-grpc-gateway.docker-compose.yaml --env-file=./compose/envs/api_grpc_gateway.env down

users-up:
	docker-compose -f ./compose/users-service.docker-compose.yaml --env-file=./compose/envs/users-service.env up -d --build

users-down:
	docker-compose -f ./compose/users-service.docker-compose.yaml --env-file=./compose/envs/users-service.env down
