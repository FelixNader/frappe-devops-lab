# Cloudflare Tunnel

1. Crea una aplicación en Cloudflare Access y limita identidad, grupo o correo corporativo.
2. Crea un túnel administrado por Cloudflare.
3. Configura el hostname público para enviar tráfico al frontend, por ejemplo `http://127.0.0.1:8080` cuando `cloudflared` corre en el host.
4. Guarda el token en el almacén de secretos o en una variable de entorno local (`TUNNEL_TOKEN`), nunca en Git.
5. Comprueba Access, el túnel, el frontend y los logs de `cloudflared`.

Ejemplo conceptual (placeholders únicamente):

```yaml
tunnel: TUNNEL_UUID_PLACEHOLDER
credentials-file: /run/secrets/cloudflared-credentials.json
ingress:
  - hostname: erp.example.invalid
    service: http://127.0.0.1:8080
  - service: http_status:404
```

