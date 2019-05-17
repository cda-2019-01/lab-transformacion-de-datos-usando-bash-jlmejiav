# Escriba su código aquí
for a in $(seq 1 3); do cont=0 ; for row in $(cat data${a}.csv); do let cont+=1 ; for x in ${row}; do echo data${a}.csv \, $cont \, ${row[1]} $row[1] $x ; done >> out.2 ; done ; done
##
sudo apt-get install -y csvki
csvstack -g data1.csv,data2.csv,data3.csv data1.csv data2.csv data3.csv > out.1 