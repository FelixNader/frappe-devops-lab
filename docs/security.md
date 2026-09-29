# Seguridad

- Secretos y `.env` real fuera del repositorio; usar un gestor de secretos en producción.
- Mínimo privilegio para Docker, Cloudflare Access y cuentas administrativas.
- HTTPS extremo a extremo cuando sea posible y Access delante del túnel.
- Exponer solo el frontend; MariaDB y Redis permanecen en la red privada.
- Backups cifrados, con retención, prueba de restauración y acceso restringido.
- Actualizar imágenes de forma controlada, revisando changelogs y haciendo backup previo.
- No compartir credenciales, tokens, cookies, claves SSH, certificados ni dumps.

