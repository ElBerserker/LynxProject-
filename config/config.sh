#!/bin/bash


cd ..

cd Back/Python_WS/


python -m venv entorno 

source entorno/bin/activate

pip install peewee
pip install uvicorn 
pip install fastapi
