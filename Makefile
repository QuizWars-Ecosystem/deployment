# DEVELOPMENT Docker compose commands
dev-gateway-up:
	docker-compose -f ./compose/dev/api-gateway.docker-compose.yaml --env-file=./compose/dev/configs/gateway.env up -d --build

dev-gateway-down:
	docker-compose -f ./compose/dev/api-gateway.docker-compose.yaml --env-file=./compose/dev/configs/gateway.env down

dev-users-up:
	docker-compose -f ./compose/dev/users-service.docker-compose.yaml --env-file=./compose/dev/configs/users.env up -d --build

dev-users-down:
	docker-compose -f ./compose/dev/users-service.docker-compose.yaml --env-file=./compose/dev/configs/users.env down

dev-questions-up:
	docker-compose -f ./compose/dev/questions-service.docker-compose.yaml --env-file=./compose/dev/configs/questions.env up -d --build

dev-questions-down:
	docker-compose -f ./compose/dev/questions-service.docker-compose.yaml --env-file=./compose/dev/configs/questions.env down

# STAGING Docker compose commands

stage-gateway-up:
	docker-compose -f ./compose/stage/api-gateway.docker-compose.yaml --env-file=./compose/stage/configs/gateway.env up -d --build

stage-gateway-down:
	docker-compose -f ./compose/stage/api-gateway.docker-compose.yaml --env-file=./compose/stage/configs/gateway.env down

stage-users-up:
	docker-compose -f ./compose/stage/users-service.docker-compose.yaml --env-file=./compose/stage/configs/users.env up -d --build

stage-users-down:
	docker-compose -f ./compose/stage/users-service.docker-compose.yaml --env-file=./compose/stage/configs/users.env down

stage-questions-up:
	docker-compose -f ./compose/stage/questions-service.docker-compose.yaml --env-file=./compose/stage/configs/questions.env up -d --build

stage-questions-down:
	docker-compose -f ./compose/stage/questions-service.docker-compose.yaml --env-file=./compose/stage/configs/questions.env down