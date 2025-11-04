# 🚀 Desplegar en GitHub Pages - Guía Rápida

## Opción Simple: Repositorio Nuevo (RECOMENDADO)

### 1. Crea un repositorio en GitHub
- Nombre: `ttsreader-website` (o el que prefieras)
- **Debe ser público**
- No inicialices con README

### 2. Desde PowerShell en la carpeta `website`:

```powershell
git init
git add .
git commit -m "Primer commit"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/ttsreader-website.git
git push -u origin main
```

**Reemplaza `TU-USUARIO`** con tu usuario de GitHub.

### 3. Activa GitHub Pages
- Ve a tu repositorio → **Settings** → **Pages**
- Source: `main` / `/ (root)`
- Guarda

### 4. Espera 5-10 minutos
Tu sitio estará en: `https://TU-USUARIO.github.io/ttsreader-website/`

---

## Usar Dominio Personalizado

1. Crea archivo `CNAME` en la carpeta `website` con tu dominio:
   ```
   ttsreader.com
   ```

2. Configura DNS en tu proveedor:
   - CNAME: `www` → `TU-USUARIO.github.io`
   - O A records: `@` → IPs de GitHub

3. En Settings → Pages, agrega tu dominio personalizado

---

## Actualizar el Sitio

```powershell
git add .
git commit -m "Actualización"
git push
```

¡Listo! Los cambios aparecen en unos minutos.
