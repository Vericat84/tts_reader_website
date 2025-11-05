# 🔍 Verificar DNS y Solucionar Problemas

## ❓ Tu Situación Actual

- ✅ `vmad.eu` (sin www) → **FUNCIONA** - Apunta a GitHub Pages
- ❌ `www.vmad.eu` → **NO FUNCIONA** - Apunta a otra IP (217.76.156.252)
- ⚠️ "Sitio no seguro" → Normal si HTTPS aún no está activado

---

## ✅ PASO 1: Verificar DNS Actual

### Opción A: Desde tu ordenador (Windows)

```powershell
# Verificar vmad.eu (sin www)
nslookup vmad.eu

# Verificar www.vmad.eu
nslookup www.vmad.eu
```

### Opción B: Herramienta Online

1. Ve a: **https://dnschecker.org**
2. Escribe: `vmad.eu`
3. Selecciona: Tipo `A`
4. Verifica que muestre estas 4 IPs:
   - 185.199.108.153
   - 185.199.109.153
   - 185.199.110.153
   - 185.199.111.153

---

## 🔧 PASO 2: Solucionar www.vmad.eu

Tienes **2 opciones**:

### Opción A: Configurar www para que funcione (RECOMENDADO)

Si quieres que tanto `vmad.eu` como `www.vmad.eu` funcionen:

1. **En tu proveedor de dominio, agrega este registro CNAME:**
   ```
   Tipo: CNAME
   Nombre: www
   Valor: Vericat84.github.io
   TTL: 3600
   ```

2. **Actualiza el archivo CNAME en GitHub:**
   - En el repositorio `tts_reader_website`
   - Edita el archivo `CNAME` para que contenga:
     ```
     vmad.eu
     www.vmad.eu
     ```
   - O simplemente déjalo como `vmad.eu` (GitHub redirigirá www automáticamente)

3. **En GitHub Pages Settings:**
   - Ve a Settings → Pages
   - En "Custom domain", escribe: `vmad.eu`
   - Marca "Enforce HTTPS" (cuando esté disponible)

### Opción B: Eliminar www (MÁS SIMPLE)

Si solo quieres usar `vmad.eu` (sin www):

1. **En tu proveedor de dominio, elimina el registro CNAME de www**
2. **O cambia el registro A de www** para que apunte a las mismas IPs:
   ```
   Tipo: A
   Nombre: www
   Valor: 185.199.108.153
   
   Tipo: A
   Nombre: www
   Valor: 185.199.109.153
   
   Tipo: A
   Nombre: www
   Valor: 185.199.110.153
   
   Tipo: A
   Nombre: www
   Valor: 185.199.111.153
   ```

---

## 🔒 PASO 3: Solucionar "Sitio No Seguro"

El mensaje "sitio no seguro" aparece porque:

1. **GitHub Pages tarda hasta 24 horas en activar HTTPS** para dominios personalizados
2. Estás accediendo por HTTP (`http://vmad.eu`) en lugar de HTTPS (`https://vmad.eu`)

### Solución:

1. **Accede siempre con HTTPS:**
   ```
   https://vmad.eu  ✅ (correcto)
   http://vmad.eu   ❌ (sin seguridad)
   ```

2. **Verifica en GitHub Pages:**
   - Ve a: https://github.com/Vericat84/tts_reader_website/settings/pages
   - Busca: "Enforce HTTPS"
   - Si está disponible, márcalo
   - Si NO está disponible, espera hasta 24 horas

3. **Espera la activación automática:**
   - GitHub detecta automáticamente cuando el DNS está configurado
   - Genera un certificado SSL gratuito
   - Puede tardar entre 10 minutos y 24 horas

---

## ✅ PASO 4: Verificar que Todo Funciona

### Checklist:

- [ ] `https://vmad.eu` carga el sitio web ✅
- [ ] Muestra el candado verde 🔒
- [ ] Los estilos CSS funcionan
- [ ] El logo se muestra correctamente
- [ ] Las páginas legales funcionan (privacy_policy.html, etc.)

### Pruebas rápidas:

```powershell
# 1. Verificar que el DNS apunta correctamente
nslookup vmad.eu

# 2. Verificar respuesta HTTP (desde PowerShell)
Invoke-WebRequest -Uri https://vmad.eu -UseBasicParsing | Select-Object StatusCode

# Debería mostrar: StatusCode: 200
```

---

## 🛠️ Solución de Problemas Comunes

### Problema 1: "This site can't be reached"

**Causa:** DNS no propagado o incorrecto

**Solución:**
1. Verifica los registros DNS en tu proveedor
2. Espera 30 minutos - 4 horas
3. Limpia la caché DNS:
   ```powershell
   ipconfig /flushdns
   ```

### Problema 2: HTTPS sigue sin funcionar después de 24 horas

**Causa:** Configuración incorrecta en GitHub

**Solución:**
1. Ve a Settings → Pages
2. Elimina el dominio personalizado
3. Espera 5 minutos
4. Vuelve a agregar `vmad.eu`
5. Espera 24 horas más

### Problema 3: www.vmad.eu muestra página en blanco o error

**Causa:** www no está configurado o apunta a IP incorrecta

**Solución:**
- Usa solo `vmad.eu` (sin www) mientras configuras
- O sigue la Opción A del Paso 2

---

## 📊 Verificar Estado Actual

Ejecuta estos comandos para ver el estado:

```powershell
# 1. Verificar vmad.eu
nslookup vmad.eu

# Debe mostrar las 4 IPs de GitHub Pages

# 2. Verificar www.vmad.eu
nslookup www.vmad.eu

# Debe mostrar las mismas IPs o un CNAME a Vericat84.github.io

# 3. Verificar GitHub Pages directamente
nslookup Vericat84.github.io

# 4. Probar acceso HTTPS
Start-Process "https://vmad.eu"
```

---

## 🎯 Resumen Rápido

1. **Usa `https://vmad.eu`** (con https, sin www)
2. **Espera hasta 24 horas** para que HTTPS se active automáticamente
3. **Configura www** solo si lo necesitas (sigue Opción A del Paso 2)
4. **Verifica DNS** en https://dnschecker.org

---

## ✅ Tu Configuración Actual (Según nslookup)

- ✅ `vmad.eu` → Apunta a GitHub Pages (CORRECTO)
- ❌ `www.vmad.eu` → Apunta a 217.76.156.252 (INCORRECTO)

**Acción inmediata:** Accede a `https://vmad.eu` (sin www) y espera que HTTPS se active.

¿Necesitas ayuda con algún paso específico? 🚀
