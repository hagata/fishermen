#Starging place for a make file
node-start:
	npm install

MACHINE = $(shell docker-machine ls | grep "^foo " | wc -l)
build: 
	#If Machine doesn't exist,
	#Make the machine witih;
	#docker-machine create --driver virtualbox default
	docker-machine start default
	docker build -t make-test .
	docker run -t --name auto-launch make-test


