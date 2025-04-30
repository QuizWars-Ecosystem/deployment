# DEVELOPMENT Docker compose commands
dev-up:
	make dev-metrics-up dev-telemetry-up dev-logging-up dev-gateway-up dev-users-up dev-questions-up

dev-down:
	make dev-questions-down dev-users-down dev-gateway-down dev-logging-down dev-telemetry-down dev-metrics-down

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

dev-metrics-up:
	docker-compose -f ./compose/dev/metrics.docker-compose.yaml up -d

dev-metrics-down:
	docker-compose -f ./compose/dev/metrics.docker-compose.yaml down

dev-logging-up:
	docker-compose -f ./compose/dev/logging.docker-compose.yaml up -d

dev-logging-down:
	docker-compose -f ./compose/dev/logging.docker-compose.yaml down

dev-telemetry-up:
	docker-compose -f ./compose/dev/telemetry.docker-compose.yaml up -d

dev-telemetry-down:
	docker-compose -f ./compose/dev/telemetry.docker-compose.yaml down

# STAGING Docker compose commands
stage-up:
	make stage-gateway-up stage-users-up stage-questions-up

stage-down:
	make stage-questions-down stage-users-down stage-gateway-down

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