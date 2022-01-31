#author: Hernandez  Lopez Raul  @Neo
#email:     freeenergy1975@gmail.com
#date:Miercoles 19 de enero del 2022

from fastapi import FastAPI
from connection import database as connection


app = FastAPI(title = 'Conexion',
                description = 'Establece una conexion a la base de datos de mariadb',
                version = '1')
#Creates an event to establish the connection to the database before the server starts.
@app.on_event('startup')
def startup():
    if connection.is_closed():
        connection.connect()
        print('Conectando...')

#Creates an event to close the connection to the database before the server shuts down.
@app.on_event('shutdown')
def shutdown():
    if not connection.is_closed():
        connection.close()
        print('Apagando...');

#Allows multiple requests to be executed and resolved asynchronously. 
@app.get('/')
async def index():
    return 'Hola Mundo'
