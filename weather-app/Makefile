DOCKERFILE = weather-app-dockerfile
export USERNAME
export ACCOUNT_ID
export AWS_REGION 
export REPO_NAME 

.PHONY: build_docker
build_docker: 
	docker build -t $(ACCOUNT_ID).dkr.ecr.$(AWS_REGION).amazonaws.com/$(USER_NAME)-$(REPO_NAME):1 -f ../weather-app/$(DOCKERFILE) ../weather-app

.PHONY: login_ecr
login_ecr: 
	aws ecr get-login-password --region $(AWS_REGION) | docker login --username AWS --password-stdin $(ACCOUNT_ID).dkr.ecr.$(AWS_REGION).amazonaws.com

.PHONY: push_image
push_image: 
	docker push $(ACCOUNT_ID).dkr.ecr.$(AWS_REGION).amazonaws.com/$(USER_NAME)-$(REPO_NAME):1