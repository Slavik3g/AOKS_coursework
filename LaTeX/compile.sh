#!/bin/sh

docker run -i --rm -v "$(pwd):/test" -w /test ajiob/docker-xelatex-fonts:1.2.1 make -j4 -C "main_report" all

