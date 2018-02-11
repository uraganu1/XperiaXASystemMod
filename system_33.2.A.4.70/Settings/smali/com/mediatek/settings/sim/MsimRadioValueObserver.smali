.class public Lcom/mediatek/settings/sim/MsimRadioValueObserver;
.super Ljava/lang/Object;
.source "MsimRadioValueObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;,
        Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;
    }
.end annotation


# instance fields
.field private mContentObserver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

.field private mMsimModeValue:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/mediatek/settings/sim/MsimRadioValueObserver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/settings/sim/MsimRadioValueObserver;)Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mListener:Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/sim/MsimRadioValueObserver$1;-><init>(Lcom/mediatek/settings/sim/MsimRadioValueObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mMsimModeValue:Landroid/database/ContentObserver;

    .line 31
    iput-object p1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContentObserver:Landroid/content/ContentResolver;

    .line 30
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContentObserver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContentObserver:Landroid/content/ContentResolver;

    .line 48
    const-string/jumbo v1, "msim_mode_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mMsimModeValue:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 47
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string/jumbo v0, "MsimRadioValueObserver"

    const-string/jumbo v1, "observer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContentObserver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mContentObserver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mMsimModeValue:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 55
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string/jumbo v0, "MsimRadioValueObserver"

    const-string/jumbo v1, "observer is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public registerMsimObserver(Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mListener:Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    .line 37
    invoke-direct {p0}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->registerContentObserver()V

    .line 35
    return-void
.end method

.method public ungisterMsimObserver()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->mListener:Lcom/mediatek/settings/sim/MsimRadioValueObserver$Listener;

    .line 42
    invoke-direct {p0}, Lcom/mediatek/settings/sim/MsimRadioValueObserver;->unregisterContentObserver()V

    .line 40
    return-void
.end method
