.class public Lcom/mediatek/settings/sim/PhoneServiceStateHandler;
.super Ljava/lang/Object;
.source "PhoneServiceStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;
    }
.end annotation


# instance fields
.field private mListenerCallBack:Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSubs:[I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/mediatek/settings/sim/PhoneServiceStateHandler;)Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListenerCallBack:Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListeners:Ljava/util/Map;

    .line 28
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 29
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 30
    iget-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubs:[I

    .line 27
    return-void
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 61
    new-instance v0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;

    invoke-direct {v0, p0, p1, p1}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler$1;-><init>(Lcom/mediatek/settings/sim/PhoneServiceStateHandler;II)V

    return-object v0
.end method

.method private registerPhoneStateListener()V
    .locals 5

    .prologue
    .line 44
    iget-object v2, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mSubs:[I

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 45
    .local v0, "subId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->registerPhoneStateListener(I)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "subId":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private registerPhoneStateListener(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 50
    const-string/jumbo v1, "PhoneServiceStateHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Register PhoneStateListener, subId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    .line 53
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    iget-object v1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 49
    .end local v0    # "phoneStateListener":Landroid/telephony/PhoneStateListener;
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string/jumbo v1, "PhoneServiceStateHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "subId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->unregisterPhoneStateListener(I)V

    goto :goto_0

    .line 73
    .end local v0    # "subId":I
    :cond_0
    return-void
.end method

.method private unregisterPhoneStateListener(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 80
    const-string/jumbo v0, "PhoneServiceStateHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Register unregisterPhoneStateListener subId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 83
    iget-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string/jumbo v0, "PhoneServiceStateHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public registerOnPhoneServiceStateChange(Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListenerCallBack:Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    .line 35
    invoke-direct {p0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->registerPhoneStateListener()V

    .line 33
    return-void
.end method

.method public unregisterOnPhoneServiceStateChange()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->mListenerCallBack:Lcom/mediatek/settings/sim/PhoneServiceStateHandler$Listener;

    .line 40
    invoke-direct {p0}, Lcom/mediatek/settings/sim/PhoneServiceStateHandler;->unregisterPhoneStateListener()V

    .line 38
    return-void
.end method
