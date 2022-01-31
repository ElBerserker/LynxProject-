#author: Hernandez  Lopez Raul  @Neo
#email:     freeenergy1975@gmail.com
#date:Miercoles 19 de enero del 2022
from peewee import *

#establishes the credentials for accessing the database
database = MySQLDatabase('Satisfaction_system', 
                        user='Berserker', 
                        password='Concorde',
                        host='192.168.1.70',
                        port=3306)
class User(model):
    type_of_user  CharField(max_length = 30)
    name_of_user = CharField(max_length = 30, unique=True)
    password = CharField(max_length = 30)
    status CharField(max_length = 10)

