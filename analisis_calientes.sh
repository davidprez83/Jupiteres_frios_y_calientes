#!/bin/bash

awk -F',' 'NR == 1 || ( $3 < 10 &&  $5 < 50) {print $1}' planetas.csv | sort | uniq -c | sort -nr > resultados_calientes.txt


