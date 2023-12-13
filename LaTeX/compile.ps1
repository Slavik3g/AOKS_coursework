docker run -i --rm -v "$(Get-Location):/test" -w /test ajiob/docker-xelatex-fonts:1.2.1 make -j4 -C "main_report" fast
