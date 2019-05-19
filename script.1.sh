# Escriba su código aquí
##
##
for a in $(seq 1 3)
do
    (sed 's/\t/,/g' data${a}.csv | sed '/^[[:space:]]*$/d') > dataN${a}.csv
done
###
for a in $(seq 1 3) 
do  
    cont=0 
    for row in $(cat dataN${a}.csv) 
    do 
        cont=$((cont+1))
        fila=($( echo ${row[*]} | sed 's/,/\t/g'))
        for x in $( echo ${fila[*]} | sed 's/[A-Z]//' )
        do 
                echo data${a}.csv','$cont','${fila[0]}','$x >> out.3
        done 
    done
done