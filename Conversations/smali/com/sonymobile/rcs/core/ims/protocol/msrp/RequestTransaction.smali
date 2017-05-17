.class public Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;
.super Ljava/lang/Object;
.source "RequestTransaction.java"


# static fields
.field private static final TIMEOUT:I


# instance fields
.field private receivedResponse:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMsrpTransactionTimeout()I

    move-result v0

    sput v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;->receivedResponse:I

    .line 45
    return-void
.end method


# virtual methods
.method public isResponseReceived()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;->receivedResponse:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyResponse(ILjava/util/Hashtable;)V
    .locals 1
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "headers":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 56
    :try_start_0
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;->receivedResponse:I

    .line 59
    invoke-super {p0}, Ljava/lang/Object;->notify()V

    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    .line 83
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->notify()V

    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitResponse()V
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    .line 70
    :try_start_0
    sget v0, Lcom/sonymobile/rcs/core/ims/protocol/msrp/RequestTransaction;->TIMEOUT:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-super {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method
