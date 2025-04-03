gateway-up:
	docker-compose -f ./compose/api-grpc-gateway.docker-compose.yaml --env-file=./compose/envs/api_grpc_gateway.env up -d --build

gateway-down:
	docker-compose -f ./compose/api-grpc-gateway.docker-compose.yaml --env-file=./compose/envs/api_grpc_gateway.env down