.class public Lcom/sonyericsson/conversations/sms/XmsManager;
.super Ljava/lang/Object;
.source "XmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/sonyericsson/conversations/sms/XmsManager;->mListeners:Ljava/util/Collection;

    .line 13
    return-void
.end method

.method private notifyListenersOfXmsReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v2, p0, Lcom/sonyericsson/conversations/sms/XmsManager;->mListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;

    .line 45
    .local v0, "listener":Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;->onXmsReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v0    # "listener":Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public registerXmsReceivedListener(Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/conversations/sms/XmsManager;->mListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public unRegisterXmsReceivedListener(Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/sms/XmsManager$XmsReceivedListener;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/conversations/sms/XmsManager;->mListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public xmsReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "senderAddress"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/sms/XmsManager;->notifyListenersOfXmsReceived(Ljava/lang/String;)V

    .line 28
    return-void
.end method
