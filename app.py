from flask import Flask, render_template
from conexion import get_connection

# Crear aplicación flask
app = Flask(__name__)

# ==================================
# RUTA PRINCIPAL
# ==================================


# Decorador que indica la ruta principal (URL: raiz "/")
@app.route("/")
def inicio():
    # Retorna y renderiza el archivo index.html
    # que debe estar dentro de la carpeta "templates"
    return render_template("index.html")


# ==================================
# RUTA USUARIOS
# ===============================
@app.route("/usuarios")
def usuarios():

    # Crear conexión a la base de datos
    conexion = get_connection()

    # Crear cursor para ejecutar consultas
    # dictionary=True devuelve resultados como diccionario (clave=campo)
    cursor = conexion.cursor(dictionary=True)

    # Ejecutar consulta SQL
    cursor.execute("SELECT * FROM usuarios")

    # Obtener todos los registros
    datos = cursor.fetchall()

    # Cerrar cursor y conexión
    cursor.close()
    conexion.close()

    # Enviar datos al HTML
    return render_template("usuarios/usuarios.html", usuarios=datos)


@app.route("/contacto")
def contacto():
    return render_template("contacto.html")


# ==================================
# EJECUTAR SERVIDOR
# ==================================

# Esta condición verifica si el archivo se está ejecutando directamente
# y si no está siendo importado desde otro archivo
if __name__ == "__main__":

    # Inicia el servidor de Flask
    # debug = True activa el modo desarrollador
    # port = 5000 indica el puerto donde correrá la aplicación
    app.run(debug=True, port=5000)