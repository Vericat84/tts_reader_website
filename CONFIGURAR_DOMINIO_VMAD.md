# 🌐 Configurar Dominio vmad.eu con GitHub Pages

## ✅ Paso 1: Archivo CNAME Creado

Ya he creado el archivo `CNAME` en la carpeta `website` con tu dominio `vmad.eu`. Este archivo se subirá automáticamente cuando subas los archivos a GitHub.

---

## 📋 Paso 2: Configurar DNS en tu Proveedor de Dominio

Para que `vmad.eu` funcione con GitHub Pages, necesitas configurar los registros DNS en tu proveedor de dominio.

### Opción A: Usar vmad.eu (sin www) - RECOMENDADO

Agrega estos registros DNS en tu proveedor:

#### Registros tipo A (para el dominio raíz):
```
Tipo: A
Nombre: @ (o deja en blanco, o vmad.eu)
Valor: 185.199.108.153
TTL: 3600 (o el valor por defecto)

Tipo: A
Nombre: @
Valor: 185.199.109.153
TTL: 3600

Tipo: A
Nombre: @
Valor: 185.199.110.153
TTL: 3600

Tipo: A
Nombre: @
Valor: 185.199.111.153
TTL: 3600
```

### Opción B: Usar www.vmad.eu (si prefieres)

Si prefieres usar `www.vmad.eu`, necesitas cambiar el archivo CNAME y agregar:

#### Registro tipo CNAME:
```
Tipo: CNAME
Nombre: www
Valor: TU-USUARIO.github.io
TTL: 3600
```

**Nota**: Reemplaza `TU-USUARIO` con tu nombre de usuario de GitHub.

---

## 🚀 Paso 3: Subir Archivos a GitHub

Una vez configurado el DNS, sube los archivos:

```powershell
cd website
git init
git add .
git commit -m "Sitio web con dominio personalizado"
git branch -M main
git remote add origin https://github.com/TU-USUARIO/ttsreader-website.git
git push -u origin main
```

---

## ⚙️ Paso 4: Activar GitHub Pages y Dominio

1. Ve a tu repositorio en GitHub
2. **Settings** → **Pages**
3. En **Source**, selecciona:
   - Branch: `main`
   - Folder: `/ (root)`
4. En **Custom domain**, escribe: `vmad.eu`
5. Marca **"Enforce HTTPS"** (se habilitará automáticamente después de que se propague el DNS)

---

## ⏱️ Paso 5: Esperar Propagación DNS

- Los cambios DNS pueden tardar **hasta 48 horas** en propagarse
- Normalmente funciona en **30 minutos a 4 horas**
- Puedes verificar el estado en: https://dnschecker.org

---

## ✅ Verificar que Funciona

1. Espera al menos 30 minutos después de configurar DNS
2. Visita `https://vmad.eu`
3. Verifica que:
   - ✅ El sitio carga correctamente
   - ✅ Muestra HTTPS (candado verde)
   - ✅ Los estilos funcionan

---

## 🔍 Solución de Problemas

### El dominio no carga después de 2 horas
- Verifica que los registros DNS estén correctos
- Usa https://dnschecker.org para ver si el DNS se ha propagado
- Asegúrate de que el archivo CNAME esté en el repositorio

### Error "This site can't be reached"
- Verifica que los registros A estén correctos
- Espera más tiempo (DNS puede tardar hasta 48 horas)

### HTTPS no funciona
- Espera hasta 24 horas después de configurar el dominio
- GitHub necesita tiempo para generar el certificado SSL
- Una vez listo, aparecerá la opción "Enforce HTTPS"

---

## 📝 Resumen de Registros DNS Necesarios

Para `vmad.eu` (sin www):
```
A     @     185.199.108.153
A     @     185.199.109.153
A     @     185.199.110.153
A     @     185.199.111.153
```

---

## 🎯 ¿Dónde Configurar DNS?

Depende de dónde hayas comprado el dominio `vmad.eu`. Busca en:
- El panel de control de tu registrador de dominio
- Sección "DNS", "Zona DNS", "DNS Records" o "DNS Management"

¿Necesitas ayuda con algún paso específico? 🚀
