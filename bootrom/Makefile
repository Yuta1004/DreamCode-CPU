IMAGE := riscv/devenv

build:
	docker run --rm -it -v $(shell pwd):/workdir -w /workdir $(IMAGE) /bin/bash -c "make -f Makefile.in bootrom.mem"
	sudo chown $(shell id -u):$(shell id -u) out/*

clean:
	sudo rm -rf src/*.o out/*
