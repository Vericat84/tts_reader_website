# 🌐 Guía de Configuración del Sitio Web TTSReader

Esta carpeta contiene todos los archivos necesarios para tu sitio web profesional de TTSReader.

---

## 📁 Estructura de Archivos

```
website/
├── index.html          # Página principal
├── styles.css          # Estilos CSS
├── script.js           # JavaScript interactivo
├── privacy.html        # (Enlazar a tu privacy_policy.html)
├── terms.html          # (Enlazar a tu terms_of_service.html)
├── licenses.html       # (Enlazar a tu open_source_licenses.html)
└── README.md           # Esta guía
```

---

## 🚀 Configuración Rápida

### Paso 1: Personalizar Información

#### Editar `index.html`:

**1. Reemplazar correo de contacto:**
```html
<!-- Buscar y reemplazar: -->
contacto@ttsreader.com
<!-- Por tu correo real: -->
tu-email@tudominio.com
```

**2. Actualizar URL de Play Store:**
```html
<!-- Buscar: -->
<a href="#" class="play-store-btn">
<!-- Reemplazar # con tu URL de Play Store: -->
<a href="https://play.google.com/store/apps/details?id=com.ttsreader" class="play-store-btn">
```

**3. (Opcional) Actualizar año en footer:**
```html
<!-- Buscar: -->
&copy; 2025 TTSReader
<!-- Cambiar si es necesario -->
```

---

### Paso 2: Configurar Enlaces a Documentos Legales

Tienes dos opciones:

#### Opción A: Usar los HTML existentes del proyecto

1. **Copiar archivos legales a la carpeta website:**
   ```bash
   # Desde la raíz del proyecto
   cp privacy_policy.html website/privacy.html
   cp terms_of_service.html website/terms.html
   cp open_source_licenses.html website/licenses.html
   ```

2. **Actualizar enlaces en los HTML legales:**
   - Cambiar `privacy_policy.html` → `privacy.html` en los links internos
   - Actualizar email y nombre en los documentos

#### Opción B: Enlazar directamente a tu dominio

Si ya tienes los documentos en otro lugar:
```html
<!-- En index.html, cambiar: -->
<a href="privacy">Política de Privacidad</a>
<!-- Por: -->
<a href="https://tudominio.com/privacy">Política de Privacidad</a>
```

---

### Paso 3: Añadir Screenshots Reales (Opcional)

**Reemplazar placeholders en `index.html`:**

```html
<!-- Buscar: -->
<div class="screenshot-placeholder">
    <span>📚 Biblioteca</span>
    <small>Agrega tu screenshot aquí</small>
</div>

<!-- Reemplazar por: -->
<img src="screenshots/biblioteca.jpg" alt="Biblioteca de TTSReader" />
```

**Crear carpeta `screenshots/` y añadir tus imágenes:**
- `biblioteca.jpg` - Captura de la biblioteca
- `lector.jpg` - Captura del lector
- `tts.jpg` - Captura del TTS
- `estadisticas.jpg` - Captura de estadísticas

**Ajustar CSS si es necesario:**
```css
.screenshot-item img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
```

---

### Paso 4: Personalizar Colores (Opcional)

Si quieres cambiar los colores, edita las variables en `styles.css`:

```css
:root {
    --primary-gradient-start: #667EEA;  /* Cambiar aquí */
    --primary-gradient-mid: #764BA2;    /* Cambiar aquí */
    --primary-gradient-end: #F093FB;    /* Cambiar aquí */
}
```

---

## 📤 Subir a tu Hosting

### Opción 1: Netlify (Recomendado - GRATIS)

1. **Ir a [netlify.com](https://netlify.com)**
2. **Arrastrar la carpeta `website/`** a Netlify
3. **Configurar dominio personalizado:**
   - Site settings → Domain management
   - Add custom domain
   - Seguir instrucciones DNS

### Opción 2: Vercel (GRATIS)

1. **Ir a [vercel.com](https://vercel.com)**
2. **Importar proyecto**
3. **Seleccionar carpeta `website/`**
4. **Desplegar**

### Opción 3: GitHub Pages

1. **Crear repositorio en GitHub**
2. **Subir carpeta `website/`**
3. **Settings → Pages → Source: main branch**
4. **Configurar dominio personalizado**

### Opción 4: Tu propio servidor

1. **Subir archivos vía FTP/SFTP a tu servidor**
2. **Asegurar que `index.html` esté en la raíz**
3. **Configurar SSL/HTTPS (Let's Encrypt)**

---

## 🔗 Configurar URLs Limpias (Opcional)

Si quieres URLs sin `.html` (ej: `/privacy` en vez de `/privacy.html`):

### Netlify/Vercel:
Crear archivo `_redirects` en la carpeta `website/`:
```
/privacy /privacy.html 200
/terms /terms.html 200
/licenses /licenses.html 200
```

### Apache (.htaccess):
```apache
RewriteEngine On
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^privacy$ privacy.html [L]
RewriteRule ^terms$ terms.html [L]
RewriteRule ^licenses$ licenses.html [L]
```

### Nginx:
```nginx
location /privacy { try_files $uri /privacy.html; }
location /terms { try_files $uri /terms.html; }
location /licenses { try_files $uri /licenses.html; }
```

---

## ✅ Checklist de Verificación

Antes de publicar:

- [ ] Correo de contacto actualizado
- [ ] URL de Play Store actualizada
- [ ] Enlaces legales funcionan correctamente
- [ ] Todos los enlaces internos funcionan
- [ ] Sitio se ve bien en móvil (responsive)
- [ ] HTTPS configurado y funcionando
- [ ] Screenshots añadidos (o placeholders se ven bien)
- [ ] Dominio personalizado configurado
- [ ] Probar en diferentes navegadores

---

## 🎨 Personalización Avanzada

### Cambiar Fuentes

Editar en `index.html`:
```html
<link href="https://fonts.googleapis.com/css2?family=TU_FUENTE:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
```

Y en `styles.css`:
```css
--font-family: 'TU_FUENTE', sans-serif;
```

### Añadir Google Analytics

Antes de `</head>` en `index.html`:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=TU-ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'TU-ID');
</script>
```

### Añadir Meta Tags para SEO

En `<head>` de `index.html`:
```html
<!-- Open Graph / Facebook -->
<meta property="og:type" content="website">
<meta property="og:url" content="https://tudominio.com/">
<meta property="og:title" content="TTSReader - Lector con Texto a Voz">
<meta property="og:description" content="Lee tus libros favoritos con texto a voz">
<meta property="og:image" content="https://tudominio.com/og-image.jpg">

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image">
<meta property="twitter:url" content="https://tudominio.com/">
<meta property="twitter:title" content="TTSReader - Lector con Texto a Voz">
<meta property="twitter:description" content="Lee tus libros favoritos con texto a voz">
<meta property="twitter:image" content="https://tudominio.com/og-image.jpg">
```

---

## 🐛 Solución de Problemas

### Problema: Los estilos no cargan

**Solución:** Verificar rutas relativas. Si subiste a un subdirectorio, cambiar:
```html
<link rel="stylesheet" href="styles.css">
<!-- Por: -->
<link rel="stylesheet" href="/subdirectorio/styles.css">
```

### Problema: Mobile menu no funciona

**Solución:** Verificar que `script.js` esté cargado antes de `</body>`.

### Problema: Colores no se ven correctos

**Solución:** Limpiar caché del navegador (Ctrl+F5 o Cmd+Shift+R).

---

## 📞 Soporte

Si tienes problemas:
1. Revisa esta guía
2. Verifica la consola del navegador (F12)
3. Prueba en modo incógnito
4. Verifica que todos los archivos estén subidos

---

**¡Listo!** Tu sitio web profesional está preparado. 🎉
