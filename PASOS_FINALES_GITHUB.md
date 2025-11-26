# 🚀 Pasos Finales: Subir a GitHub Pages y Configurar DNS

## 📋 Checklist Inicial
- [x] Sitio web creado (index.html, ttsreader.html, styles.css, script.js)
- [x] Archivo CNAME creado con `vmad.eu`
- [x] Email actualizado a `admin@vmad.eu`

---

## PASO 1: Crear Repositorio en GitHub

1. Ve a [GitHub.com](https://github.com) e inicia sesión
2. Haz clic en el **"+"** (arriba derecha) → **"New repository"**
3. Configura:
   - **Repository name**: `ttsreader-website` (o el nombre que prefieras)
   - **Description**: "VMAD - Desarrollador de aplicaciones móviles"
   - **Visibility**: ✅ **Public** (OBLIGATORIO para GitHub Pages gratuito)
   - ❌ **NO marques** "Initialize with README"
   - ❌ **NO marques** "Add .gitignore"
   - ❌ **NO marques** "Choose a license"
4. Haz clic en **"Create repository"**

---

## PASO 2: Subir Archivos desde PowerShell

Abre PowerShell en la carpeta `website` y ejecuta estos comandos **uno por uno**:

```powershell
# 1. Inicializar repositorio git
git init

# 2. Agregar todos los archivos
git add .

# 3. Crear commit inicial
git commit -m "Sitio web VMAD con dominio vmad.eu"

# 4. Cambiar a rama main
git branch -M main

# 5. Conectar con GitHub (REEMPLAZA TU-USUARIO con tu usuario de GitHub)
git remote add origin https://github.com/TU-USUARIO/ttsreader-website.git

# 6. Subir archivos
git push -u origin main
```

**⚠️ IMPORTANTE**: 
- Si te pide usuario/contraseña, usa un **Personal Access Token** (no tu contraseña normal)
- Puedes crear uno en: GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)

---

## PASO 3: Activar GitHub Pages

1. Ve a tu repositorio en GitHub
2. Haz clic en **"Settings"** (Configuración)
3. En el menú lateral izquierdo, busca **"Pages"**
4. En **"Source"**, selecciona:
   - **Branch**: `main`
   - **Folder**: `/ (root)`
5. Haz clic en **"Save"**

**✅ Resultado**: Verás algo como:
```
Your site is live at https://TU-USUARIO.github.io/ttsreader-website/
```

---

## PASO 4: Configurar Dominio Personalizado en GitHub

1. Todavía en **Settings** → **Pages**
2. En **"Custom domain"**, escribe: `vmad.eu`
3. Haz clic en **"Save"**
4. **NO marques** "Enforce HTTPS" todavía (lo haremos después)

**✅ Resultado**: GitHub creará un archivo CNAME en tu repositorio (ya lo tienes, así que se sincronizará)

---

## PASO 5: Configurar DNS en tu Proveedor de Dominio

Ve al panel de control de donde compraste `vmad.eu` (puede ser Namecheap, GoDaddy, Cloudflare, etc.)

### Busca la sección "DNS" o "DNS Management"

Agrega estos **4 registros tipo A**:

| Tipo | Nombre | Valor | TTL |
|------|--------|-------|-----|
| A | @ | 185.199.108.153 | 3600 |
| A | @ | 185.199.109.153 | 3600 |
| A | @ | 185.199.110.153 | 3600 |
| A | @ | 185.199.111.153 | 3600 |

**Nota sobre "Nombre"**:
- Si dice "@" → deja `@` o déjalo en blanco
- Si no acepta "@" → escribe `vmad.eu` o deja vacío
- Depende del proveedor, pero todos significan "dominio raíz"

### Elimina registros A antiguos (si existen)
Si hay algún registro A que apunte a otra IP, elimínalo o cámbialo.

---

## PASO 6: Esperar Propagación DNS

⏱️ **Tiempo estimado**: 30 minutos a 4 horas (puede tardar hasta 48 horas)

### Verificar el estado:

1. Espera al menos 30 minutos
2. Visita: https://dnschecker.org
3. Busca `vmad.eu` tipo `A`
4. Deberías ver que varios servidores ya tienen las IPs correctas

---

## PASO 7: Verificar que Funciona

1. Visita `https://vmad.eu` en tu navegador
2. Deberías ver tu sitio web
3. Si no funciona:
   - Espera más tiempo (hasta 2 horas)
   - Verifica que los registros DNS estén correctos
   - Verifica que GitHub Pages esté activado

---

## PASO 8: Activar HTTPS (Después de que Funcione)

1. Ve a **Settings** → **Pages** en GitHub
2. Espera a que aparezca la opción **"Enforce HTTPS"** (puede tardar hasta 24 horas)
3. Una vez disponible, márcala
4. ✅ ¡Tu sitio ahora tendrá HTTPS automático!

---

## 🔍 Verificar Archivos en GitHub

Después de subir, verifica que estos archivos estén en tu repositorio:

- ✅ `index.html`
- ✅ `ttsreader.html`
- ✅ `styles.css`
- ✅ `script.js`
- ✅ `CNAME` (con contenido `vmad.eu`)
- ✅ `.nojekyll`

---

## 🆘 Solución de Problemas

### Error: "Authentication failed"
- Crea un Personal Access Token en GitHub
- Úsalo como contraseña en lugar de tu contraseña normal

### El sitio no carga después de 2 horas
- Verifica DNS en https://dnschecker.org
- Asegúrate de que los 4 registros A estén configurados
- Verifica que GitHub Pages esté activado

### Error 404 en vmad.eu
- Espera más tiempo (DNS puede tardar hasta 48 horas)
- Verifica que el archivo CNAME esté en el repositorio
- Verifica que el dominio esté configurado en Settings → Pages

### HTTPS no funciona
- Espera hasta 24 horas después de configurar el dominio
- GitHub necesita tiempo para generar el certificado SSL
- Una vez listo, aparecerá "Enforce HTTPS"

---

## ✅ Checklist Final

- [ ] Repositorio creado en GitHub (público)
- [ ] Archivos subidos con `git push`
- [ ] GitHub Pages activado (Settings → Pages)
- [ ] Dominio personalizado agregado (`vmad.eu`)
- [ ] 4 registros DNS tipo A configurados
- [ ] Sitio accesible en `https://vmad.eu` (puede tardar)
- [ ] HTTPS habilitado (después de 24h)

---

## 📞 ¿Necesitas Ayuda?

Si tienes problemas:
1. Revisa los logs de GitHub Pages (Settings → Pages → ver si hay errores)
2. Verifica DNS en https://dnschecker.org
3. Revisa la guía completa: `CONFIGURAR_DOMINIO_VMAD.md`

¡Tu sitio estará en línea pronto! 🎉
