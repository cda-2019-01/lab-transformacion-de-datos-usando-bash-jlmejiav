# Escriba su código aquí
cont=0
for a in $(seq 1 3); do for row in $(cat data${a}.csv); do for x in $(row[1:]); do cont=$((cont+1)) echo data${a}.csv $cont ${row[1]} ; done >> out.2 ; done ; done
##
sudo apt-get install -y csvki
csvstack -g data1.csv,data2.csv,data3.csv data1.csv data2.csv data3.csv > out.1 