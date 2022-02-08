#LynxProject

###DESCRIPCIÓN DE ARCHIVOS

- 1.- El siguiente proyecto consta primeramente de la carpeta config, la cual contiene un script
encargado de configurar  el  entorno de Python, pues para su funcionamiento es indispensable
importar  ciertas   librerías   que  se  usaran en el proyecto, si es que existe un archivo llamado
environment en la  ruta "/Back/Python/"  justo  después de importar el proyecto   es  necesario
eliminarla y después ejecutar el script de configuración pues de no ser así las librerías no
serán reconocidas por el proyecto, ya que el entorno tiene una ruta configura que no
correspondería a su directorio.

- 2.- El archivo conexión es el encargado de  brindar  las credenciales de acceso necesario para
nuestra base de datos, así como  la base de datos que se pretende manipular, el usuario y
contraseña de quien pretende  manipularlo,  por otra  parte, consta de tres modelos los cuales
se encargaran de crear las tablas correspondientes  a la base de datos, cuando sean llamados.

- 3.- El archivo esquema.py se  vale  de  la librería pydantic para poder validar que los tipos
datos de entrada para cada modelo sea del tipo correcto.

- 4.- El archivo main es el encargado de controlar todo, desde establecer y cerrar la conexión a
la base de datos y hacer que se creen las tablas en la base de datos al arrancar el servidor,
si las tablas ya existen entonces las deja intactas, así mismo es aquí se configuran las rutas
para poder crear registros para la tabla de usuarios y encuestas.

##PUESTA EN MARCHA DEL SERVIDOR

- Para poder encender el servidor es indispensable que el entorno esté configurado, para ello ya
debió ejecutar el archivo config.sh en la carpeta de configuración, una vez hecho esto es
necesario que se configuren las credenciales  para la base de datos del archivo conexion.py con
todo esto listo será de vital importancia activar el entorno mediante el comando "source 
environmet/bin/activate"para poder cargar las librerías al proyecto y finalmente con el entorno
activado ejecutar "uvicorn main:app --reload --host 192.168.1... -port 80.." Pues así
especificamos tanto el host como el puerto mediante el cual accederemos.

- Ahora bien aún no está   configurada   ningún archivo HTML para la entrada de datos así que de
momento estos se ingresaran  mediante  la  ruta "host:port/docs" seleccionado ya sea "/user/" o
"/survey/"  ya  que  la  ruta  "/satisfaction_survey/" aún está en fase experimental y después
pulsamos  "Tryit out" , llenamos los datos correspondientes y pulsamos "Execute", si todo sale
bien entonces el registro ya debería reflejarse en la base de datos.


