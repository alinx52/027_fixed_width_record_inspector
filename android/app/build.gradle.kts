import java.util.Properties

plugins {
    id("com.android.application")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}



// app_factory admob: begin
val factoryAdMobProperties = Properties()
val factoryAdMobPropertiesFile = rootProject.file("admob.properties")
if (factoryAdMobPropertiesFile.isFile) {
    factoryAdMobPropertiesFile.inputStream().use { stream ->
        factoryAdMobProperties.load(stream)
    }
}
val factoryAdMobAppId = factoryAdMobProperties.getProperty("appId") ?: "ca-app-pub-3940256099942544~3347511713"
val factoryAdMobReleaseTaskRequested = gradle.startParameter.taskNames.any {
    it.contains("release", ignoreCase = true)
}
val factoryAdMobRuntimeConfigFile = rootProject.file("../admob.json")
if (factoryAdMobReleaseTaskRequested &&
    (!factoryAdMobPropertiesFile.isFile ||
        factoryAdMobAppId == "ca-app-pub-3940256099942544~3347511713" ||
        !factoryAdMobRuntimeConfigFile.isFile)) {
    throw GradleException(
        "Release ads require local android/admob.properties and admob.json with real AdMob IDs."
    )
}
// app_factory admob: end

// app_factory release signing: begin
val factoryKeystoreProperties = Properties()
val factoryKeystorePropertiesFile = rootProject.file("key.properties")
val factoryReleaseSigningConfigured = factoryKeystorePropertiesFile.isFile
if (factoryReleaseSigningConfigured) {
    factoryKeystorePropertiesFile.inputStream().use { stream ->
        factoryKeystoreProperties.load(stream)
    }
}
val factoryReleaseTaskRequested = gradle.startParameter.taskNames.any {
    it.contains("release", ignoreCase = true)
}
if (factoryReleaseTaskRequested && !factoryReleaseSigningConfigured) {
    throw GradleException("Release signing requires android/key.properties. Copy android/key.properties.example and provide a private upload keystore.")
}
// app_factory release signing: end

android {
    namespace = "com.alinxs.apps.fixed_width_record_inspector"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    defaultConfig {
    // app_factory admob: begin
    manifestPlaceholders["admobAppId"] = factoryAdMobAppId
    // app_factory admob: end

    

        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.alinxs.apps.fixed_width_record_inspector"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        // app_factory compatibility: begin
        // Android 7.0 (API 24) or later.
        minSdk = maxOf(flutter.minSdkVersion, 24)
        // app_factory compatibility: end
        targetSdk = flutter.targetSdkVersion
        // Uses the version code from pubspec.yaml. When using split APKs, 1000 * ABI_VERSION
        // is added automatically by Flutter. (https://developer.android.com/studio/build/configure-apk-splits#configure-APK-versions)
        // You can force using the value of versionCode by specifying the `-P force-version-code-ignoring-abi=true`
        // flag during build.
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    

    

    // app_factory release signing: begin
    signingConfigs {
        if (factoryReleaseSigningConfigured) {
            create("release") {
                keyAlias = factoryKeystoreProperties.getProperty("keyAlias")
                keyPassword = factoryKeystoreProperties.getProperty("keyPassword")
                storeFile = factoryKeystoreProperties.getProperty("storeFile")?.let { path -> file(path) }
                storePassword = factoryKeystoreProperties.getProperty("storePassword")
            }
        }
    }
    // app_factory release signing: end

    buildTypes {
        release {
            if (factoryReleaseSigningConfigured) {
                signingConfig = signingConfigs.getByName("release")
            }
            // app_factory release hardening: begin
            isMinifyEnabled = true
            isShrinkResources = true
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"))
            // app_factory release hardening: end
        }
    }
}

kotlin {
    compilerOptions {
        jvmTarget = org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17
    }
}

flutter {
    source = "../.."
}

// app_factory workmanager: begin
dependencies {
    implementation("androidx.work:work-runtime:2.11.2")
}
// app_factory workmanager: end
