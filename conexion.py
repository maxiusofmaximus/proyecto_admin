# Importamos librerías mysql

import mysql.connector

# Función para la conexión
def get_connection():
    try:
        conexion = mysql.connector.connect(
            host = "localhost",
            user = "root",
            password = "",
            database = "conexion_python",
            port = 3306
        )
        print("Conexión establecida correctamente")
        return conexion
    except Exception as e:
        print("Error real: ", e)
        return None