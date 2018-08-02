#!/bin/sh

for i in integracao release Squad-G03 G03.N00000.TestesUnitarios G03.N00000.TestesUnitarios_integracao

do 
	git checkout $i
	git pull 

done