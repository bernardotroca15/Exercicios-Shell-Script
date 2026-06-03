#!/bin/bash
echo 'Script para comparar 2 numeros'
#pede o numero 1 ao usuario 
echo -n 'Digite o primeiro numero'
read n1
#pede o numero 2 ao usuario 
echo -n 'Digite o segundo numero'
read n2
#verifica se sao iguais 
if [ $n1 -eq $n2 ] ; then 
 echo 'Os numeros sao iguais' 
fi
#verifica se o primeiro numero eh maior
if [ $n1 -gt $n2 ] ; then 
 echo 'O primeiro numero eh maior que o segundo' 
fi
#verifica se o segundo eh maior 
if [ $n1 -lt Sn2 ]; then 
 echo 'O segundo numero eh maior que o primeiro' 
fi