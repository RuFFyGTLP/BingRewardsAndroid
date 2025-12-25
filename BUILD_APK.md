# 📱 Bing Rewards Stealth - APK para Android

## 🚀 Opción 1: Usar PWABuilder (Más Fácil - Recomendado)

Esta es la forma más sencilla de crear una APK sin instalar nada:

1. **Inicia un servidor local** para servir la app:
   ```bash
   cd e:\BingRewardsApp_FULLINPC\BingRewardsAndroid\www
   npx serve -l 8080
   ```

2. **Usa ngrok** para exponer el servidor:
   ```bash
   npx ngrok http 8080
   ```

3. **Ve a [PWABuilder.com](https://www.pwabuilder.com/)**
   - Pega la URL de ngrok
   - Haz clic en "Build My PWA"
   - Descarga la APK para Android

---

## 🔧 Opción 2: Instalar Android Studio

1. **Descarga Android Studio**: https://developer.android.com/studio

2. **Instálalo** y configura el Android SDK

3. **Configura las variables de entorno**:
   ```powershell
   [Environment]::SetEnvironmentVariable("ANDROID_HOME", "C:\Users\germa\AppData\Local\Android\Sdk", "User")
   [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Users\germa\AppData\Local\Android\Sdk\platform-tools", "User")
   ```

4. **Reinicia la terminal** y ejecuta:
   ```bash
   cd e:\BingRewardsApp_FULLINPC\BingRewardsAndroid
   npx cap open android
   ```

5. **En Android Studio**:
   - Ve a Build → Build Bundle(s) / APK(s) → Build APK(s)
   - La APK estará en `android/app/build/outputs/apk/debug/`

---

## 🌐 Opción 3: Usar el servicio online de Capacitor

1. **Crea una cuenta en [Ionic Appflow](https://ionic.io/appflow)**

2. **Conecta tu proyecto** y sube el código

3. **Genera la APK** desde la nube

---

## 📂 Estructura del Proyecto

```
BingRewardsAndroid/
├── android/           # Proyecto Android nativo (Capacitor)
├── www/               # Archivos web de la app
│   ├── index.html     # App principal
│   ├── manifest.json  # PWA manifest
│   └── icons/         # Iconos de la app
├── capacitor.config.json
└── package.json
```

---

## 📲 Instalar la APK

Una vez tengas la APK:

1. **Transfiere** el archivo `.apk` a tu teléfono Android
2. **Habilita** "Fuentes desconocidas" en Configuración → Seguridad
3. **Abre** el archivo APK e instálalo

---

## 🎯 Funcionalidad de la App

La app permite:
- ✅ Automatizar búsquedas de Bing
- ✅ Elegir tipo de búsqueda (números, aleatorias, tendencias)
- ✅ Configurar cantidad y velocidad
- ✅ Abrir directamente Bing y Bing Rewards
- ✅ Ver progreso en tiempo real

**Nota**: Las búsquedas se abren en el navegador del móvil para que cuenten como "búsquedas móviles" en Bing Rewards.

---

## ❓ Troubleshooting

### Error: "Android SDK not found"
- Asegúrate de que Android Studio está instalado
- Configura ANDROID_HOME correctamente

### Error: "Gradle build failed"
- Ejecuta: `cd android && .\gradlew.bat clean`
- Luego: `.\gradlew.bat assembleDebug`

### La app no abre enlaces
- Verifica que tienes un navegador instalado
- Prueba con Chrome o el navegador predeterminado
