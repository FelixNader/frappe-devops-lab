# Backup y restauración

Frappe debe generar sus backups con `bench`, porque así incluye la base de datos y los archivos del sitio esperados por la aplicación. El script usa `bench --site all backup` dentro de `backend` y copia el resultado fuera del contenedor.

Antes de restaurar, detén workers si el procedimiento lo requiere, confirma el archivo, realiza un backup adicional y prueba en un entorno aislado. Nunca borres volúmenes como parte automática del script.

