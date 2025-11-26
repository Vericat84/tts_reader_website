# 📱 Guía Rápida: Capturas y Videos para tu Web

## 🎯 Método Más Rápido (Recomendado)

### Para Capturas de Pantalla:
1. **Tomar captura:** Bajar volumen + encendido (1-2 segundos)
2. **Transferir:** WhatsApp Web → Enviar a ti mismo → Descargar
3. **Subir:** Arrastrar a `website/images/` o `website/screenshots/`

### Para Videos:
1. **Grabar:** Panel de notificaciones → "Grabar pantalla"
2. **Transferir:** Google Drive → Compartir → Descargar en PC
3. **Subir:** YouTube (público/no listado) o directamente a `website/videos/`

---

## 📸 1. Capturas de Pantalla en Android

### Método 1: Atajo de Teclas (Más Rápido)
- **Bajar volumen + Encendido** (mantener 1-2 segundos)
- Se guarda en: `DCIM/Screenshots/`

### Método 2: Panel de Notificaciones
1. Bajar el panel de notificaciones
2. Buscar "Captura" o "Screenshot"
3. Tocar para capturar

### Método 3: Asistente de Google
- Di: **"Ok Google, toma una captura"**

---

## 🎥 2. Grabar Pantalla/Videos

### Método 1: Herramienta Nativa (Android 11+)
1. **Bajar panel de notificaciones**
2. Buscar "Grabar pantalla" o "Screen Recorder"
3. Si no aparece:
   - **Configuración** → **Captura de pantalla**
   - Habilitar "Grabación de pantalla"

### Método 2: App Recomendada
- **AZ Screen Recorder** (Gratis, sin marca de agua)
  - Descarga desde Play Store
  - Permite grabar, editar, recortar

### Método 3: Google Play Games
- Si tienes juegos instalados, incluye grabador de pantalla

---

## 📤 3. Transferir al Ordenador (Métodos Rápidos)

### ⚡ Opción A: Nearby Share (RECOMENDADO - Más Rápido)
1. En Android: Selecciona imagen/video → **Compartir** → **Nearby Share**
2. En Windows: Debe aparecer notificación
3. Acepta en ambos dispositivos
4. **Tiempo:** ~10 segundos

**Configurar Nearby Share en Windows:**
- Descarga "Nearby Share" desde Microsoft Store
- O usa la app integrada en Windows 11

### 📁 Opción B: Google Drive
1. Sube desde Android: **Google Drive** → **Subir**
2. En PC: Accede a drive.google.com
3. Descarga los archivos
4. **Tiempo:** ~1-2 minutos

### 💬 Opción C: WhatsApp Web / Telegram
1. **WhatsApp Web:**
   - Envía imagen/video a ti mismo (o a un chat)
   - En PC: Descarga desde WhatsApp Web
   - **Tiempo:** ~30 segundos

2. **Telegram:**
   - Envía a "Saved Messages" (mensajes guardados)
   - En PC: Descarga desde web.telegram.org
   - **Tiempo:** ~30 segundos

### 🔌 Opción D: USB (Para Múltiples Archivos)
1. Conecta móvil por USB
2. Activa "Transferencia de archivos" en móvil
3. En PC: Ve a `DCIM/Screenshots/` y carpeta de videos
4. Copia y pega
5. **Tiempo:** ~1 minuto (para varios archivos)

---

## 🌐 4. Subir a la Web

### Opción A: Subir a GitHub (Directo)
1. Guarda imágenes en: `website/images/` o `website/screenshots/`
2. Sube a GitHub:
   ```powershell
   cd website
   git add images/
   git commit -m "Añadir screenshots de TTSReader"
   git push
   ```
3. Usa en HTML: `<img src="images/screenshot1.png" alt="TTSReader">`

### Opción B: Hosting de Imágenes (Más Rápido)
1. **Imgur** (gratis, rápido):
   - Sube en imgur.com
   - Copia URL directa
   - Usa en HTML: `<img src="https://i.imgur.com/xxxxx.png">`

2. **Cloudinary** (gratis, optimización automática):
   - Crea cuenta en cloudinary.com
   - Sube imágenes
   - Obtén URL optimizada

3. **GitHub Gist** (para imágenes pequeñas):
   - Convierte a Base64
   - Usa directamente en HTML

### Opción C: Videos (YouTube)
1. **YouTube** (Recomendado):
   - Sube como "No listado" o "Público"
   - Copia URL del video
   - Usa en HTML:
     ```html
     <iframe src="https://www.youtube.com/embed/VIDEO_ID"></iframe>
     ```

2. **Vimeo** (Alternativa):
   - Similar a YouTube
   - Mejor calidad pero más lento

---

## 🚀 Workflow Recomendado (Más Rápido)

### Para Capturas:
```
1. Captura en móvil (Volumen + Encendido)
2. WhatsApp Web → Enviar a ti mismo
3. Descargar en PC
4. Arrastrar a website/images/
5. git add, commit, push
```

### Para Videos:
```
1. Grabar pantalla (Panel de notificaciones)
2. Subir a Google Drive
3. Descargar en PC
4. Subir a YouTube (no listado)
5. Copiar URL y usar en HTML
```

---

## 📝 Tamaños Recomendados

### Capturas de Pantalla:
- **Resolución:** 1080x1920 (Full HD) o superior
- **Formato:** PNG (mejor calidad) o JPG (menor tamaño)
- **Tamaño:** Optimizar a <500KB para web

### Videos:
- **Resolución:** 1080p (Full HD)
- **Duración:** 30-60 segundos para demos
- **Formato:** MP4 (más compatible)

---

## 🛠️ Herramientas Útiles

### Para Optimizar Imágenes:
- **TinyPNG** (tinypng.com) - Comprime sin perder calidad
- **Squoosh** (squoosh.app) - Compresión avanzada

### Para Editar Videos:
- **CapCut** (Android) - Edición rápida en móvil
- **Shotcut** (PC) - Editor gratuito y potente

### Para Subir Rápido:
- **GitHub Desktop** - Interfaz gráfica para Git
- **Git Bash** - Para comandos Git

---

## ✅ Checklist Rápido

- [ ] Configurar grabación de pantalla nativa
- [ ] Probar Nearby Share o WhatsApp Web
- [ ] Crear carpeta `website/images/` para screenshots
- [ ] Subir capturas a GitHub
- [ ] Actualizar `ttsreader.html` con imágenes
- [ ] Grabar video demo (30-60 segundos)
- [ ] Subir video a YouTube
- [ ] Añadir video a la web

---

## 🎯 Ejemplo de Uso en HTML

```html
<!-- Captura de pantalla -->
<img src="images/ttsreader-home.png" alt="TTSReader - Pantalla principal">

<!-- Video de YouTube -->
<iframe 
    width="560" 
    height="315" 
    src="https://www.youtube.com/embed/VIDEO_ID" 
    frameborder="0" 
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
    allowfullscreen>
</iframe>
```

---

¿Necesitas ayuda para integrar las capturas en tu sitio web? 🚀

