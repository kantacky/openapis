.PHONY: start-swagger-ui
start-swagger-ui:
	docker run --rm -d --name greeting-swagger-ui -p 8080:8080 -e SWAGGER_JSON=/api/greeting.yaml -v $(PWD)/api:/api swaggerapi/swagger-ui

.PHONY: stop-swagger-ui
stop-swagger-ui:
	docker stop greeting-swagger-ui
