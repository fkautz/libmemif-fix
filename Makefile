default: build shell

build:
	docker build -t memif .

shell: build
	docker run -it memif /bin/bash
