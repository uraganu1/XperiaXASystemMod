.class public interface abstract Lcom/sonymobile/keyguard/plugininfrastructure/KeyguardPluginSecureSettingsAbstraction;
.super Ljava/lang/Object;
.source "KeyguardPluginSecureSettingsAbstraction.java"


# virtual methods
.method public abstract getExplicitlySelectedKeyguardPlugin()Ljava/lang/String;
.end method

.method public abstract getExplicitlySelectedKeyguardPluginValueUri()Landroid/net/Uri;
.end method

.method public abstract getFallbackKeyguardPlugin()Ljava/lang/String;
.end method

.method public abstract setExplicitlySelectedKeyguardPlugin(Ljava/lang/String;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$LockscreenClock$Source;)V
.end method

.method public abstract setFallbackKeyguardPlugin(Ljava/lang/String;)V
.end method
