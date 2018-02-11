.class public Lcom/mediatek/settings/sim/SimHotSwapHandler;
.super Ljava/lang/Object;
.source "SimHotSwapHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;,
        Lcom/mediatek/settings/sim/SimHotSwapHandler$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;

.field private mSubReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionIdListCache:[I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/settings/sim/SimHotSwapHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->handleHotSwap()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/SimHotSwapHandler$1;-><init>(Lcom/mediatek/settings/sim/SimHotSwapHandler;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    iput-object p1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 31
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionIdListCache:[I

    .line 32
    const-string/jumbo v0, "Cache list: "

    iget-object v1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionIdListCache:[I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->print(Ljava/lang/String;[I)V

    .line 28
    return-void
.end method

.method private handleHotSwap()V
    .locals 5

    .prologue
    .line 51
    iget-object v2, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v1

    .line 52
    .local v1, "subscriptionIdListCurrent":[I
    const-string/jumbo v2, "handleHotSwap, current subId list: "

    invoke-direct {p0, v2, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->print(Ljava/lang/String;[I)V

    .line 53
    iget-object v2, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubscriptionIdListCache:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    .line 54
    .local v0, "isEqual":Z
    const-string/jumbo v2, "SimHotSwapHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isEqual: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mListener:Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mListener:Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;

    invoke-interface {v2}, Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;->onSimHotSwap()V

    .line 50
    :cond_0
    return-void
.end method

.method private print(Ljava/lang/String;[I)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "lists"    # [I

    .prologue
    .line 65
    if-eqz p2, :cond_0

    .line 66
    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p2, v1

    .line 67
    .local v0, "i":I
    const-string/jumbo v3, "SimHotSwapHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, "SimHotSwapHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    return-void
.end method


# virtual methods
.method public registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 38
    const-string/jumbo v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 37
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    iput-object p1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mListener:Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;

    .line 35
    :cond_0
    return-void
.end method

.method public unregisterOnSimHotSwap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    :cond_0
    iput-object v2, p0, Lcom/mediatek/settings/sim/SimHotSwapHandler;->mListener:Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;

    .line 43
    return-void
.end method
