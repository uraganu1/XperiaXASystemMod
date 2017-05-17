.class public Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;
.super Ljava/lang/Object;
.source "WiFiCallingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;,
        Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_IMS_REG_STATUS:Ljava/lang/String; = "IMS_REG_STATUS"

.field private static final IMS_REGISTRATION:Ljava/lang/String; = "com.movial.IMS_REGISTRATION"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsWiFiCallingEnabled:Z

.field private mListener:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;

.field private mWiFiCallingReceiver:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mIsWiFiCallingEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;)Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mListener:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mIsWiFiCallingEnabled:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private setupWiFiCallingReceiver()V
    .locals 3

    .prologue
    .line 99
    const-string/jumbo v1, "tmous"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;-><init>(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mWiFiCallingReceiver:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.movial.IMS_REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "intentFilterIMS":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mWiFiCallingReceiver:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    .end local v0    # "intentFilterIMS":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public isWiFiCallingEnabled()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mIsWiFiCallingEnabled:Z

    return v0
.end method

.method public subscribe(Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mListener:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;

    .line 80
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->setupWiFiCallingReceiver()V

    .line 78
    return-void
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mWiFiCallingReceiver:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mWiFiCallingReceiver:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mWiFiCallingReceiver:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingReceiver;

    .line 90
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler;->mListener:Lcom/sonyericsson/android/socialphonebook/util/WiFiCallingHandler$WiFiCallingListener;

    .line 86
    :cond_0
    return-void
.end method
