.class public Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;
.super Landroid/database/ContentObserver;
.source "GaGtmSubscriber.java"


# static fields
.field private static final GA_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubscribing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "somc.google_analytics_enabled"

    .line 25
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->GA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    .line 42
    if-eqz p1, :cond_0

    .line 46
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    .line 47
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    .line 59
    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    .line 64
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 107
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readAndSetSomcGa(Landroid/content/Context;)V

    .line 112
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "onChange"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public subscribeGaSettingChanges()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readAndSetSomcGa(Landroid/content/Context;)V

    .line 81
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    if-eqz v0, :cond_1

    .line 85
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "subscribeGaSettingChanges"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->GA_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    goto :goto_1
.end method

.method public unsubscribeGaSettingChanges()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    if-nez v0, :cond_1

    .line 101
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "unsubscribeGaSettingChanges"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 99
    iput-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->mSubscribing:Z

    goto :goto_1
.end method
