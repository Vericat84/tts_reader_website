# 🌐 Configurar www.vmad.eu - Guía Paso a Paso

## 📋 Resumen

Para que `www.vmad.eu` funcione junto con `vmad.eu`, necesitas:
1. ✅ Configurar un registro CNAME en tu proveedor de dominio
2. ✅ GitHub Pages automáticamente lo reconocerá (no necesitas cambiar el archivo CNAME)

---

## 🔧 PASO 1: Configurar DNS en tu Proveedor de Dominio

### ¿Dónde configurarlo?

Ve al panel de control de tu proveedor de dominio (donde compraste `vmad.eu`). Busca:
- "DNS"
- "Zona DNS"
- "DNS Records"
- "DNS Management"
- "Configuración DNS"

### Agregar Registro CNAME

Agrega este nuevo registro:

```
Tipo: CNAME
Nombre: www
Valor: Vericat84.github.io
TTL: 3600 (o el valor por defecto)
```

### Ejemplo visual:

```
┌─────────────────────────────────────────────┐
│ Tipo    │ Nombre │ Valor                    │
├─────────┼────────┼──────────────────────────┤
│ A       │ @      │ 185.199.108.153          │
│ A       │ @      │ 185.199.109.153          │
│ A       │ @      │ 185.199.110.153          │
│ A       │ @      │ 185.199.111.153          │
│ CNAME   │ www    │ Vericat84.github.io      │ ← AGREGAR ESTE
└─────────────────────────────────────────────┘
```

---

## ⏱️ PASO 2: Esperar Propagación DNS

- **Tiempo estimado:** 10 minutos a 4 horas
- Puede tardar hasta 24 horas en algunos casos

---

## ✅ PASO 3: Verificar que Funciona

### Opción A: Desde tu ordenador

```powershell
# Verificar que www.vmad.eu apunta correctamente
nslookup www.vmad.eu
```

**Debería mostrar:**
- Nombre: `Vericat84.github.io` o las IPs de GitHub Pages

### Opción B: Herramienta Online

1. Ve a: **https://dnschecker.org**
2. Escribe: `www.vmad.eu`
3. Selecciona: Tipo `CNAME`
4. Verifica que muestre: `Vericat84.github.io`

### Opción C: Probar en el navegador

Después de esperar 10-30 minutos, prueba:
- `https://www.vmad.eu` (puede tardar en activarse HTTPS)
- `http://www.vmad.eu` (debería funcionar antes)

---

## 📝 Estado Actual de tu DNS

Después de configurar, deberías tener:

| Tipo  | Nombre | Valor                  | Propósito              |
|-------|--------|------------------------|------------------------|
| A     | @      | 185.199.108.153        | vmad.eu (raíz)         |
| A     | @      | 185.199.109.153        | vmad.eu (raíz)         |
| A     | @      | 185.199.110.153        | vmad.eu (raíz)         |
| A     | @      | 185.199.111.153        | vmad.eu (raíz)         |
| CNAME | www    | Vericat84.github.io    | www.vmad.eu            |

---

## 🔒 HTTPS para www.vmad.eu

- GitHub Pages activará HTTPS automáticamente para `www.vmad.eu`
- Puede tardar **hasta 24 horas** después de configurar el DNS
- Una vez activado, verás el candado verde 🔒 en ambos:
  - `https://vmad.eu`
  - `https://www.vmad.eu`

---

## 🛠️ Solución de Problemas

### Problema 1: www.vmad.eu no carga después de configurar

**Solución:**
1. Verifica que el registro CNAME esté correcto
2. Espera más tiempo (hasta 4 horas)
3. Limpia la caché DNS:
   ```powershell
   ipconfig /flushdns
   ```

### Problema 2: Error "CNAME already exists"

**Causa:** Ya existe un registro para www

**Solución:**
1. Elimina el registro A existente de www (si lo hay)
2. Agrega el CNAME

### Problema 3: www.vmad.eu muestra página en blanco

**Solución:**
1. Espera 30 minutos más
2. Verifica que el valor del CNAME sea exactamente: `Vericat84.github.io` (sin espacios)

---

## ✅ Verificación Final

Ejecuta estos comandos para verificar todo:

```powershell
# 1. Verificar vmad.eu (debe mostrar 4 IPs)
nslookup vmad.eu

# 2. Verificar www.vmad.eu (debe mostrar Vericat84.github.io o las IPs)
nslookup www.vmad.eu

# 3. Verificar que el sitio carga
Start-Process "http://www.vmad.eu"
```

---

## 🎯 Resultado Esperado

Después de configurar correctamente:

- ✅ `https://vmad.eu` → Funciona con HTTPS
- ✅ `https://www.vmad.eu` → Funciona con HTTPS
- ✅ `http://vmad.eu` → Redirige a https://vmad.eu (si está habilitado)
- ✅ `http://www.vmad.eu` → Redirige a https://www.vmad.eu (si está habilitado)

---

## 📞 ¿Necesitas Ayuda?

Si tienes problemas:
1. Verifica que el CNAME esté correctamente configurado
2. Espera al menos 1 hora después de configurar
3. Verifica en https://dnschecker.org que el DNS se haya propagado

¡Listo! 🚀
