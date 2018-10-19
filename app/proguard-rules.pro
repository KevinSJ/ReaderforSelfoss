# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /home/amine/apps/android-sdk-linux/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

#About libraries
-keep class .R
-keep class **.R$* {
    <fields>;
}

-dontwarn okio.**
-dontwarn retrofit2.Platform$Java8
-keep class retrofit.** { *; }
-keepclasseswithmembers class * {
    @retrofit.http.* <methods>;
}
-keepattributes *Annotation*,Signature
-keepattributes Exceptions
-dontwarn okio.**
-dontwarn javax.annotation.Nullable
-dontwarn javax.annotation.ParametersAreNonnullByDefault


#Bottom bar lib
-dontwarn com.roughike.bottombar.**


# self signed glidemodule
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public class * extends com.bumptech.glide.AppGlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}

-dontwarn com.anupcowkur.reservoir.**

-dontwarn javax.annotation.**

-keep class android.support.v7.widget.SearchView { *; }

# maybe remove later ?
-keep class * extends androidx.fragment.app.Fragment
