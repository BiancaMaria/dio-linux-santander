#!/bin/bash

rm -Rf /adm/
rm -Rf /ven/
rm -Rf /sec/
rm -Rf /publica/

userdel -r carlos 
userdel -r maria 
userdel -r joao 

userdel -r debora 
userdel -r sebastiana 
userdel -r roberto 

userdel -r amanda 
userdel -r rogerio 
userdel -r josefina 

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC




