# 🔧 Solucionar Error 404 en Páginas Legales

## 🔍 Problema

Las páginas legales dan error 404 en `www.vmad.eu`:
- `www.vmad.eu/privacy_policy.html` → 404
- `www.vmad.eu/terms_of_service.html` → 404
- `www.vmad.eu/open_source_licenses.html` → 404

---

## ✅ Solución Paso a Paso

### PASO 1: Verificar que los archivos estén en GitHub

1. Ve a: https://github.com/Vericat84/tts_reader_website
2. Verifica que estos archivos existan en la raíz:
   - `privacy_policy.html`
   - `terms_of_service.html`
   - `open_source_licenses.html`

### PASO 2: Si NO están, súbelos

Si los archivos no están en GitHub, ejecuta:

```powershell
cd website
git add privacy_policy.html terms_of_service.html open_source_licenses.html
git commit -m "Añadir páginas legales"
git push
```

### PASO 3: Verificar GitHub Pages

1. Ve a: https://github.com/Vericat84/tts_reader_website/settings/pages
2. Verifica que:
   - **Source:** `main` branch, `/ (root)` folder
   - **Custom domain:** `vmad.eu` (o `www.vmad.eu`)
   - **Enforce HTTPS:** Marcado (si está disponible)

### PASO 4: Esperar Actualización

GitHub Pages puede tardar **1-10 minutos** en actualizar después de un push.

---

## 🔍 Verificación Rápida

### Opción A: Verificar en GitHub Pages Directo

Prueba estos enlaces:
- https://vericat84.github.io/privacy_policy.html
- https://vericat84.github.io/terms_of_service.html
- https://vericat84.github.io/open_source_licenses.html

Si funcionan aquí pero no en `www.vmad.eu`, el problema es el dominio personalizado.

### Opción B: Verificar desde el Navegador

1. Abre: https://www.vmad.eu
2. Haz clic en los enlaces del footer
3. Si dan 404, verifica que los archivos estén en GitHub

---

## 🛠️ Solución Rápida

Si los archivos no están en GitHub, ejecuta estos comandos:

```powershell
cd website
git add privacy_policy.html terms_of_service.html open_source_licenses.html
git commit -m "Añadir páginas legales faltantes"
git push
```

Luego espera 5-10 minutos y prueba de nuevo.

---

## ⚠️ Problemas Comunes

### Problema 1: Archivos no están en GitHub

**Solución:** Sube los archivos con `git add` y `git push`

### Problema 2: GitHub Pages no está configurado

**Solución:** 
1. Ve a Settings → Pages
2. Selecciona branch `main` y folder `/ (root)`
3. Guarda

### Problema 3: Dominio personalizado no propagado

**Solución:** 
- Espera 1-4 horas después de configurar DNS
- Verifica que el CNAME esté correcto

### Problema 4: Caché del navegador

**Solución:**
- Limpia la caché del navegador (Ctrl + Shift + Delete)
- O prueba en modo incógnito

---

## ✅ Verificación Final

Después de hacer los cambios, verifica:

1. ✅ Archivos en GitHub: https://github.com/Vericat84/tts_reader_website
2. ✅ GitHub Pages configurado: https://github.com/Vericat84/tts_reader_website/settings/pages
3. ✅ Archivos accesibles: https://vericat84.github.io/privacy_policy.html
4. ✅ Dominio personalizado: https://www.vmad.eu/privacy_policy.html

---

## 🚀 Si Sigue Sin Funcionar

1. Verifica que los archivos estén en la rama `main`
2. Verifica que el archivo `.nojekyll` esté presente (para que GitHub Pages sirva archivos HTML estáticos)
3. Espera 10-15 minutos más
4. Prueba accediendo directamente a: `https://www.vmad.eu/privacy_policy.html`

---

¿Necesitas ayuda con algún paso específico? 🚀

