.class public Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;
.super Ljava/lang/Object;
.source "GaGtmSystemSetting.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSomcGaEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "somc.google_analytics_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static readAndSetSomcGa(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->isSomcGaEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 48
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v2

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    .line 55
    return-void

    :cond_0
    const-string/jumbo v2, "GaGtmHelper"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "somc.google_analytics_enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 54
    goto :goto_1
.end method
