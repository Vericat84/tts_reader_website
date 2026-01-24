# Sitio Web Scanio - Instrucciones de Implementación

Este directorio contiene el sitio web completo para Scanio, incluyendo todas las páginas legales requeridas por Google Play Store.

## 📁 Estructura de Archivos

```
scanio/
├── index.html                  # Landing page / Acerca de
├── privacy-policy.html         # Política de Privacidad (REQUERIDA para Google Play)
├── terms-conditions.html       # Términos y Condiciones
├── support.html                # Centro de Soporte / FAQ
├── assets/
│   ├── css/
│   │   └── style.css          # Estilos completos
│   ├── js/
│   │   └── main.js            # JavaScript (vacío, para futuro)
│   └── images/
│       ├── scanio-icon.png    # Icono de la app (PENDIENTE)
│       ├── scanio-logo.png    # Logo (PENDIENTE)
│       └── screenshots/       # Capturas de pantalla (PENDIENTE)
└── README.md                   # Este archivo
```

## 🚀 Pasos para Publicar en vmad.eu

### Opción 1: Subir vía FTP/SFTP

1. **Conectar al servidor vmad.eu:**
   ```bash
   sftp usuario@vmad.eu
   # O usar un cliente FTP como FileZilla
   ```

2. **Navegar al directorio web público:**
   ```bash
   cd /var/www/html/  # O el directorio que uses
   # O cd public_html/ según tu configuración
   ```

3. **Crear carpeta scanio:**
   ```bash
   mkdir scanio
   cd scanio
   ```

4. **Subir todos los archivos:**
   - Sube todo el contenido de esta carpeta `scanio/` al servidor
   - Mantén la estructura de carpetas (`assets/css/`, `assets/js/`, `assets/images/`)

5. **Establecer permisos correctos:**
   ```bash
   chmod 644 *.html
   chmod 644 assets/css/*
   chmod 755 assets/images/
   ```

### Opción 2: Subir vía Git (si vmad.eu usa Git)

1. **Clonar repo de vmad.eu:**
   ```bash
   git clone usuario@vmad.eu:/path/to/repo.git
   cd repo
   ```

2. **Copiar carpeta scanio:**
   ```bash
   cp -r /ruta/a/PhotofileManager/web/scanio ./
   ```

3. **Commit y push:**
   ```bash
   git add scanio/
   git commit -m "Add Scanio legal pages and website"
   git push origin main
   ```

### Opción 3: Panel de Control (cPanel, Plesk, etc.)

1. Accede al panel de control de tu hosting
2. Ve a "Administrador de Archivos" o "File Manager"
3. Navega a `public_html/` o el directorio raíz de vmad.eu
4. Crea una carpeta llamada `scanio`
5. Sube todos los archivos de esta carpeta manteniendo la estructura

## ✅ Verificación Post-Implementación

Después de subir, verifica que las URLs funcionan:

- ✅ https://vmad.eu/scanio/ (debe mostrar landing page)
- ✅ https://vmad.eu/scanio/privacy-policy.html (CRÍTICO para Google Play)
- ✅ https://vmad.eu/scanio/terms-conditions.html
- ✅ https://vmad.eu/scanio/support.html

**Importante:** Google Play Store verificará que puede acceder a `privacy-policy.html` sin autenticación. Asegúrate de que la URL es pública.

## 📝 Tareas Pendientes Antes de Publicar

### 1. Añadir Imágenes (ALTA PRIORIDAD)

Actualmente faltan:

- **scanio-icon.png** (40x40px): Icono pequeño para el header
- **scanio-logo.png** (200x200px): Logo grande para landing
- **Capturas de pantalla**: Screenshots de la app para la landing page

**Acción:**
```bash
# Copia el icono de la app a la carpeta assets/images/
cp ../../app/src/main/res/mipmap-xxxhdpi/ic_launcher.png assets/images/scanio-icon.png

# Crea capturas de pantalla y súbelas a assets/images/screenshots/
```

### 2. Actualizar Enlaces de Descarga

En `index.html`, buscar:
```html
<a href="#" class="cta-button">Descargar en Google Play</a>
```

Reemplazar `#` con la URL real de Google Play Store cuando publiques la app:
```html
<a href="https://play.google.com/store/apps/details?id=com.scanio.app" class="cta-button">Descargar en Google Play</a>
```

### 3. Configurar Emails

Actualmente el sitio usa emails de ejemplo:
- `contacto@vmad.eu`
- `support@vmad.eu`
- `privacy@vmad.eu`
- `legal@vmad.eu`
- `feedback@vmad.eu`
- `bugs@vmad.eu`

**Opciones:**
1. **Crear alias reales** en tu servidor de correo
2. **Usar un solo email** para todo (ej: `scanio@vmad.eu`)
3. **Configurar redirección** en el hosting

**Acción recomendada:** Crear al menos:
- `scanio@vmad.eu` o `support@vmad.eu` para soporte general
- `privacy@vmad.eu` para temas GDPR/privacidad (legal)

### 4. Actualizar Jurisdicción Legal

En `terms-conditions.html` línea ~470, actualizar:
```html
<p>
    Cualquier disputa relacionada con estos Términos o el uso de Scanio 
    será sometida a la jurisdicción exclusiva de los tribunales de 
    [Ciudad/País del Desarrollador].
</p>
```

Reemplazar `[Ciudad/País del Desarrollador]` con tu ubicación real (ej: "Madrid, España").

### 5. Añadir Google Analytics (Opcional)

Para monitorizar visitas al sitio, añade Google Analytics antes de `</head>` en todas las páginas:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

## 🔗 URLs para Google Play Console

Cuando publiques en Play Store, necesitarás estas URLs exactas:

| Campo en Play Console | URL |
|----------------------|-----|
| **Privacy Policy URL** | `https://vmad.eu/scanio/privacy-policy.html` |
| Website | `https://vmad.eu/scanio/` |
| Support Email | `support@vmad.eu` (o el que configures) |

**CRÍTICO:** La URL de Privacy Policy NO puede cambiar después de publicar en Play Store. Si necesitas cambiarla, tendrás que actualizar el listing en Play Console.

## 🎨 Personalización

### Colores

Los colores actuales están basados en el design system de Scanio documentado en `docs/ui-system.md`:

```css
--primary-color: #4DD3FF;      /* Cyan principal */
--primary-dark: #0D9AB8;       /* Cyan oscuro */
--background-dark: #121212;    /* Fondo oscuro */
--background-card: #1E1E1E;    /* Tarjetas */
```

Si quieres cambiarlos, edita `:root` en `assets/css/style.css`.

### Tipografía

Actualmente usa fuentes del sistema: `Inter, Segoe UI, Roboto, -apple-system`

Para añadir Google Fonts, añade en `<head>` de cada HTML:
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
```

## 📊 SEO Básico

### Sitemap

Crear `sitemap.xml` en la raíz de `/scanio/`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://vmad.eu/scanio/</loc>
    <lastmod>2026-01-24</lastmod>
    <priority>1.0</priority>
  </url>
  <url>
    <loc>https://vmad.eu/scanio/privacy-policy.html</loc>
    <lastmod>2026-01-24</lastmod>
    <priority>0.8</priority>
  </url>
  <url>
    <loc>https://vmad.eu/scanio/terms-conditions.html</loc>
    <lastmod>2026-01-24</lastmod>
    <priority>0.8</priority>
  </url>
  <url>
    <loc>https://vmad.eu/scanio/support.html</loc>
    <lastmod>2026-01-24</lastmod>
    <priority>0.9</priority>
  </url>
</urlset>
```

Luego enviar a Google Search Console.

### robots.txt

Crear `robots.txt` en la raíz de vmad.eu (NO dentro de `/scanio/`):

```
User-agent: *
Allow: /scanio/
Sitemap: https://vmad.eu/scanio/sitemap.xml
```

## 🔒 Seguridad

### Verificar HTTPS

Asegúrate de que vmad.eu tiene certificado SSL válido. Google Play rechazará URLs HTTP (sin S).

Verificar:
```bash
curl -I https://vmad.eu
# Debe devolver 200 OK sin warnings de certificado
```

### Headers de Seguridad (Opcional pero Recomendado)

Añadir en `.htaccess` (si usas Apache) en `/scanio/`:

```apache
# Seguridad básica
<IfModule mod_headers.c>
    Header set X-Content-Type-Options "nosniff"
    Header set X-Frame-Options "SAMEORIGIN"
    Header set X-XSS-Protection "1; mode=block"
</IfModule>

# Cache de assets estáticos
<IfModule mod_expires.c>
    ExpiresActive On
    ExpiresByType text/css "access plus 1 month"
    ExpiresByType image/png "access plus 1 year"
    ExpiresByType image/jpg "access plus 1 year"
</IfModule>
```

## 📧 Contacto del Desarrollador

Si necesitas ayuda con la implementación, contacta:
- **Email:** [tu-email]
- **Proyecto:** PhotoFileManager / Scanio

## 📝 Changelog

### Versión 1.0 (24 Enero 2026)
- ✅ Creación inicial del sitio
- ✅ Política de Privacidad completa (compatible GDPR)
- ✅ Términos y Condiciones
- ✅ Landing page con features
- ✅ Centro de soporte con FAQ
- ✅ Diseño responsive (móvil + desktop)
- ✅ Sistema de colores coherente con la app

### Pendiente para Versión 1.1
- [ ] Añadir imágenes (icono, logo, screenshots)
- [ ] Configurar emails reales
- [ ] Añadir video demo en landing
- [ ] Traducción a inglés (en, fr, de, pt)
- [ ] Formulario de contacto con backend
- [ ] Blog/changelog integrado

---

**Nota:** Este sitio es parte del proyecto Scanio (antes PhotoFileManager). 
Todo el código web está listo para producción una vez completes las tareas pendientes marcadas arriba.
