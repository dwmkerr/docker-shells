# Create the docker images locally. If a BUILD_NUM is provided, we will also
# create an image with the tag BUILD_NUM.
build:
	docker build -t dwmkerr/shells:latest .
ifndef BUILD_NUM
	$(warning No build number is defined, skipping build number tag.)
else
	docker build -t dwmkerr/shells:$(BUILD_NUM) .	
endif

# Run the tests. These do things like kill containers, so run with caution.
test: build
ifndef BUILD_NUM
	$(warning No build number is defined, testing 'latest')
	docker run dwmkerr/shells:latest bash test.sh
else
	docker run dwmkerr/shells:$(BUILD_NUM) bash test.sh
endif

# Deploy the images to the Docker Hub. Assumes you are logged in!
deploy: 
	docker push dwmkerr/shells:latest
ifndef BUILD_NUM
	$(warning No build number is defined, skipping push of build number tag.)
else
	docker push dwmkerr/shells:$(BUILD_NUM)
endif

# Make sure the makefile knows the commands below are commands, not targets.
.PHONY: build test deploy
