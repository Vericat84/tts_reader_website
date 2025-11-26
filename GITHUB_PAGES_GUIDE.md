# Guía: Subir TTSReader a GitHub Pages

Esta guía te ayudará a publicar tu sitio web de TTSReader en GitHub Pages de forma sencilla.

## 📋 Opciones de GitHub Pages

Tienes **2 opciones**:

### Opción 1: Repositorio Dedicado (Recomendado)
Crear un repositorio separado solo para el sitio web (ej: `ttsreader-website`)

### Opción 2: Usar el Repositorio Actual
Subir los archivos a una carpeta o rama del repositorio actual

---

## 🚀 Opción 1: Repositorio Dedicado (RECOMENDADO)

### Paso 1: Crear el Repositorio en GitHub

1. Ve a [GitHub.com](https://github.com) e inicia sesión
2. Haz clic en el botón **"+"** (arriba derecha) → **"New repository"**
3. Configuración:
   - **Repository name**: `ttsreader-website` (o el nombre que prefieras)
   - **Description**: "TTSReader - Sitio web oficial"
   - **Visibility**: Public (requerido para GitHub Pages gratuito)
   - ⚠️ **NO** marques "Initialize with README"
   - Haz clic en **"Create repository"**

### Paso 2: Preparar los Archivos Localmente

Abre PowerShell/Terminal en la carpeta `website` y ejecuta:

```bash
# Navegar a la carpeta website
cd website

# Inicializar repositorio git
git init

# Agregar todos los archivos
git add .

# Crear commit inicial
git commit -m "Initial commit: TTSReader website"

# Conectar con el repositorio remoto (reemplaza TU-USUARIO)
git remote add origin https://github.com/TU-USUARIO/ttsreader-website.git

# Cambiar a rama main (GitHub Pages usa main por defecto)
git branch -M main

# Subir los archivos
git push -u origin main
```

**Reemplaza `TU-USUARIO`** con tu nombre de usuario de GitHub.

### Paso 3: Activar GitHub Pages

1. Ve a tu repositorio en GitHub
2. Haz clic en **"Settings"** (Configuración)
3. En el menú lateral izquierdo, busca **"Pages"**
4. En **"Source"**, selecciona:
   - **Branch**: `main`
   - **Folder**: `/ (root)`
5. Haz clic en **"Save"**

### Paso 4: ¡Listo!

Tu sitio estará disponible en:
```
https://TU-USUARIO.github.io/ttsreader-website/
```

⚠️ **Nota**: Puede tardar unos minutos en aparecer (hasta 10 minutos).

---

## 🌐 Opción 2: Usar el Repositorio Actual

Si prefieres mantener todo en el mismo repositorio:

### Paso 1: Mover Archivos a Carpeta `docs/`

```bash
# Desde la raíz del proyecto
mkdir docs
cp -r website/* docs/
```

### Paso 2: Subir al Repositorio

```bash
git add docs/
git commit -m "Add website files for GitHub Pages"
git push
```

### Paso 3: Activar GitHub Pages

1. Ve a **Settings** → **Pages**
2. En **Source**, selecciona:
   - **Branch**: `main` (o la rama que uses)
   - **Folder**: `/docs`
3. Guarda

Tu sitio estará en:
```
https://TU-USUARIO.github.io/TTSReader-main/
```

---

## 🎯 Usar Dominio Personalizado (Opcional)

Si tienes un dominio personalizado (ej: `ttsreader.com`):

### Paso 1: Crear archivo CNAME

En la carpeta `website`, crea un archivo llamado `CNAME` (sin extensión) con:

```
ttsreader.com
```

O si prefieres `www.ttsreader.com`:

```
www.ttsreader.com
```

### Paso 2: Subir el archivo

```bash
git add CNAME
git commit -m "Add custom domain"
git push
```

### Paso 3: Configurar DNS

En tu proveedor de dominio, agrega un registro **CNAME**:

- **Tipo**: CNAME
- **Nombre**: `www` (o `@` si quieres el dominio raíz)
- **Valor**: `TU-USUARIO.github.io`

Para el dominio raíz (sin www), también necesitas agregar:

- **Tipo**: A
- **Nombre**: `@`
- **Valor**: `185.199.108.153` (IP de GitHub)
- Agrega también: `185.199.109.153`, `185.199.110.153`, `185.199.111.153`

### Paso 4: Activar en GitHub

1. Ve a **Settings** → **Pages**
2. En **Custom domain**, escribe tu dominio
3. Marca **"Enforce HTTPS"** (se habilitará automáticamente después)

---

## 📝 Verificar que Todo Funciona

1. **Espera 5-10 minutos** después de activar GitHub Pages
2. Visita tu URL de GitHub Pages
3. Verifica que:
   - ✅ El sitio carga correctamente
   - ✅ Los estilos funcionan
   - ✅ El menú móvil funciona
   - ✅ Los enlaces funcionan

---

## 🔄 Actualizar el Sitio

Cada vez que quieras actualizar el sitio:

```bash
cd website  # (o docs/ si usaste Opción 2)

# Hacer cambios en los archivos...

# Subir cambios
git add .
git commit -m "Actualizar sitio web"
git push
```

Los cambios aparecerán en unos minutos.

---

## ⚠️ Problemas Comunes

### El sitio no carga
- Espera 10 minutos
- Verifica que el repositorio sea **público**
- Revisa que la rama y carpeta estén correctas en Settings → Pages

### Los estilos no se ven
- Verifica las rutas en `index.html`:
  - `href="styles.css"` (no `/styles.css`)
  - `src="script.js"` (no `/script.js`)
- Limpia la caché del navegador (Ctrl+F5)

### Error 404
- Asegúrate de que `index.html` esté en la raíz de la carpeta seleccionada
- Verifica que el nombre del archivo sea exactamente `index.html` (en minúsculas)

---

## 📚 Recursos Útiles

- [Documentación oficial de GitHub Pages](https://docs.github.com/en/pages)
- [Guía de dominios personalizados](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site)

---

## ✅ Checklist Final

- [ ] Repositorio creado y público
- [ ] Archivos subidos a GitHub
- [ ] GitHub Pages activado en Settings
- [ ] Sitio accesible en la URL
- [ ] (Opcional) Dominio personalizado configurado
- [ ] (Opcional) HTTPS habilitado

¡Tu sitio web ya está en línea! 🎉
