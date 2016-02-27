USER=ryancox
REPO=primesieve
BUILDERREPO=build_primesieve
VERSION=5.6.0
TAG=$(USER)/$(REPO):$(VERSION)
BUILDERTAG=$(BUILDERREPO):$(VERSION)
TARGET=package/target

clean:
	rm -rf $(TARGET)
	-docker rmi $(TAG) $(BUILDERTAG)

build:
	mkdir -p package/target
	docker build --build-arg VERSION=$(VERSION) -t $(BUILDERTAG) builder
	docker run -it -v `pwd`/$(TARGET):/target $(BUILDERTAG)
	docker build -t $(TAG) package

push: 
	docker login
	docker push $(TAG)

all: clean build push
