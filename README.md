# Proyecto Admin 🚀

Este proyecto requiere herramientas específicas para su correcta instalación, especialmente si se utilizan versiones experimentales o muy recientes de Python.

## ⚠️ Requisito Crítico: Python 3.14+

Si estás utilizando **Python 3.14** o superior, notarás que librerías como `pandas` y `matplotlib` fallan al instalarse. Esto sucede porque en estas versiones aún no existen archivos precompilados (*wheels*), y Python intenta compilar el código fuente desde cero.

Para que la instalación sea exitosa, **tu sistema debe tener instalados los compiladores de C++ de Microsoft**.

### Solución: Configuración del Entorno
Hemos incluido un script automatizado para configurar tu PC en un solo paso:

1. Localiza el archivo `instalar_herramientas.bat` en la raíz del proyecto.
2. Haz **doble clic** sobre él.
3. Si Windows te pide permisos de administrador, selecciona **SÍ**.
4. Espera a que termine el proceso (puede tardar entre 15 y 20 minutos según tu conexión, ya que descarga ~6GB).
5. **Reinicia tu terminal o VS Code** una vez finalizado.

---

## 🛠️ Instalación de Dependencias

Una vez configurado el compilador (o si usas una versión estable como Python 3.12), ejecuta:

```powershell
pip install -r requirements.txt
