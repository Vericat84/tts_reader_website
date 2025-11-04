# 📡 Guía DNS: Entradas vs Nameservers

## 🔍 Diferencia Clave

### ✅ **ENTRADAS DNS (Lo que necesitas hacer)**
- Agregas **registros individuales** (A, CNAME, MX, etc.)
- Se hace en el panel DNS de tu proveedor actual
- **NO cambias** los nameservers
- Es lo más simple y rápido

### ❌ **SERVIDORES DNS (Nameservers)**
- Cambias **completamente** quién gestiona tu DNS
- Delega todo el DNS a otro proveedor
- Requiere más configuración
- **NO es necesario** para GitHub Pages

---

## 🎯 Para GitHub Pages: Solo ENTREADAS DNS

**Tienes que agregar 4 ENTRADAS tipo A** en tu proveedor de dominio.

### ¿Dónde agregarlas?

1. Entra al panel de control donde compraste `vmad.eu`
2. Busca una sección llamada:
   - **"DNS Management"**
   - **"DNS Records"**
   - **"Zone Editor"**
   - **"Manage DNS"**
   - O similar

### Los 4 registros que necesitas:

| Tipo | Nombre | Valor | TTL |
|------|--------|-------|-----|
| **A** | `@` | `185.199.108.153` | `3600` |
| **A** | `@` | `185.199.109.153` | `3600` |
| **A** | `@` | `185.199.110.153` | `3600` |
| **A** | `@` | `185.199.111.153` | `3600` |

---

## 📋 Pasos Detallados por Proveedor

### Namecheap
1. Ve a **Domain List** → Selecciona `vmad.eu`
2. Clic en **"Advanced DNS"** (o "DNS")
3. En **"Host Records"**, busca el botón **"Add New Record"**
4. Crea 4 registros tipo **A Record**:
   - Host: `@` (o déjalo vacío)
   - Value: `185.199.108.153` (primer registro)
   - TTL: `Automatic` (o 3600)
   - Repite para las otras 3 IPs

### GoDaddy
1. Ve a **My Products** → **DNS** (al lado de `vmad.eu`)
2. En **"Records"**, clic en **"Add"**
3. Crea 4 registros tipo **A**:
   - Type: `A`
   - Name: `@`
   - Value: `185.199.108.153` (primer registro)
   - TTL: `1 hour`
   - Repite para las otras 3 IPs

### Cloudflare
1. Ve a tu dominio → **DNS** → **Records**
2. Clic en **"Add record"**
3. Crea 4 registros tipo **A**:
   - Type: `A`
   - Name: `@` (o `vmad.eu`)
   - IPv4 address: `185.199.108.153` (primer registro)
   - Proxy: **Desactivado** (nube gris, no naranja)
   - TTL: `Auto`
   - Repite para las otras 3 IPs

### OVH
1. Ve a **Web Cloud** → **Dominios** → `vmad.eu` → **Zona DNS**
2. Clic en **"Agregar una entrada"**
3. Crea 4 registros tipo **A**:
   - Subdominio: `@` (o vacío)
   - Destino: `185.199.108.153` (primer registro)
   - TTL: `3600`
   - Repite para las otras 3 IPs

### Otros proveedores
Busca la sección **"DNS"**, **"DNS Records"** o **"Zone Management"** y agrega los 4 registros tipo A con las IPs indicadas.

---

## ⚠️ Importante: Sobre el Campo "Nombre/Host"

El campo "Nombre" o "Host" puede variar según el proveedor:

- Si acepta `@` → escribe `@`
- Si no acepta `@` → déjalo **vacío** o escribe `vmad.eu`
- Todos significan "dominio raíz" (sin subdominio)

---

## 🚫 NO necesitas cambiar:

- ❌ **Nameservers** (Servidores DNS)
- ❌ **DNS primario/secundario**
- ❌ **Zone transfers**
- ❌ Nada relacionado con "Nameserver"

**Solo agrega los 4 registros tipo A y listo.**

---

## ✅ Verificación

Después de agregar los registros:

1. Espera 30 minutos - 2 horas
2. Visita: https://dnschecker.org
3. Busca: `vmad.eu` tipo `A`
4. Deberías ver las 4 IPs distribuidas por el mundo

---

## 🆘 Problemas Comunes

### "Ya tengo otros registros A"
- Puedes tener múltiples registros A
- Agrega los 4 nuevos sin eliminar los que ya funcionan
- GitHub necesita los 4 para redundancia

### "Mi proveedor solo acepta 1 registro A"
- Algunos proveedores antiguos tienen esta limitación
- Usa solo: `185.199.108.153` (la primera)
- O considera cambiar a un proveedor moderno (Namecheap, Cloudflare)

### "No sé dónde está DNS en mi panel"
- Busca en el menú: **"DNS"**, **"DNS Records"**, **"Zone"**, **"DNS Management"**
- Si no lo encuentras, busca en Google: "[tu proveedor] DNS records panel"

---

## 📞 Resumen

**Para GitHub Pages necesitas:**
- ✅ Agregar **4 ENTRADAS DNS tipo A**
- ❌ **NO cambiar** nameservers
- ⏱️ Esperar 30 minutos - 4 horas para propagación

¡Es más simple de lo que parece! 🎉
