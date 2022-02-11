#author: Hernandez  Lopez Raul  @Neo
#email:     freeenergy1975@gmail.com
#date:Miercoles 19 de enero del 2022


from pydantic import BaseModel
from pydantic import validator

#Models for evaluating input data types
class UserBaseModel(BaseModel):
    id_user: str
    type_of_user: str
    name_of_user: str
    password: str
    confirm_password: str
    status: str

    @validator('id_user')
    def id_user_validation_lenth(cls, id_user):
        if len(id_user) < 3 or len(id_user) > 30:
            raise ValueError('La longitud debe encontarse entre los 3 y 30 caracteres')

        return id_user

    @validator('type_of_user')
    def type_of_user_validation_lenth(cls, type_of_user):
        if len(type_of_user) < 3 or len(type_of_user) > 30:
            raise ValueError('La longitud debe encontarse entre los 3 y 30 caracteres')

        return  type_of_user

    @validator('name_of_user')
    def name_of_user_validation_lenth(cls, name_of_user):
        if len(name_of_user) < 3 or len(name_of_user) > 30:
            raise ValueError('La longitud debe encontarse entre los 3 y 30 caracteres')

        return  name_of_user

    @validator('password', 'confirm_password')
    def validate_password(cls, password, values, **kwargs):
        if not 'password' == 'confirm_password':
            raise ValueError('Las contrasenias no coinciden')

        return  password



class SurveysBaseModel(BaseModel):
    name_survey: str


class SatisfactionSurveyBaseModel(BaseModel):
    id_satisfaction_survey: str
    level_of_satisfaction: int
    coment: str
    folio_ticket: str

