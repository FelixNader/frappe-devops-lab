# Arquitectura

Compose crea una red privada para los servicios. Solo `frontend` publica el puerto HTTP. Frappe usa `backend` para HTTP, `websocket` para Socket.IO, MariaDB para persistencia, Redis cache para caché y Redis queue para colas. Los procesos `queue-short`, `queue-long` y `scheduler` consumen la configuración común y el volumen `sites`.

La instalación real inspeccionada sigue este patrón con `configurator`, frontend Nginx, backend Gunicorn, websocket, dos workers y scheduler. Este laboratorio lo reduce a una topología educativa y reproducible.

