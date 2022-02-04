#!/bin/bash

cd ../Back/Python_WS/

entorno="entorno"

if [ -d $entorno ]; then 
    printf "\nEl entorno ya existe y esta configurado"
    source entorno/bin/activate
else	
    printf "\nConfigurando entorno de python..."		
    python -m venv entorno 

    source entorno/bin/activate

    pip install peewee
    pip install uvicorn 
    pip install fastapi
    pip install PyMySQL
fi    
