.class public abstract Lcom/sonymobile/conversations/transaction/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/conversations/transaction/Transaction$TransactionType;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mId:Ljava/lang/String;

.field protected mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

.field protected mPermanentError:Z

.field private final mServiceId:I

.field protected mSubscriptionId:I

.field protected mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

.field protected mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sonymobile/conversations/transaction/TransactionSettings;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "settings"    # Lcom/sonymobile/conversations/transaction/TransactionSettings;
    .param p4, "subscriptionId"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mSubscriptionId:I

    .line 88
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Lcom/sonymobile/conversations/transaction/TransactionState;

    invoke-direct {v0}, Lcom/sonymobile/conversations/transaction/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    .line 90
    iput p2, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mServiceId:I

    .line 91
    iput-object p3, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mTransactionSettings:Lcom/sonymobile/conversations/transaction/TransactionSettings;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mPermanentError:Z

    .line 93
    iput p4, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mSubscriptionId:I

    .line 87
    return-void
.end method

.method private sendPdu(Ljava/lang/String;J[BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    .locals 12
    .param p1, "mmsc"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "token"    # J
    .param p4, "pdu"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "apn"    # Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Network not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    const-string/jumbo v4, "POST"

    .line 173
    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->isProxySet()Z

    move-result v5

    .line 174
    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getProxyAddress()Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-virtual/range {p5 .. p5}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getProxyPort()I

    move-result v7

    .line 176
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNetwork()Landroid/net/Network;

    move-result-object v8

    .line 177
    iget v9, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mSubscriptionId:I

    move-wide v0, p2

    move-object v2, p1

    move-object/from16 v3, p4

    .line 169
    invoke-static/range {v0 .. v9}, Lcom/sonymobile/conversations/transaction/HttpUtils;->httpConnection(JLjava/lang/String;[BLjava/lang/String;ZLjava/lang/String;ILandroid/net/Network;I)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    move-result-object v10

    .line 178
    .local v10, "response":Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    invoke-virtual {v10}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getHttpCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 179
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " returned HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;->getHttpCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    return-object v10
.end method


# virtual methods
.method protected getPdu(Ljava/lang/String;Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "apn"    # Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Network not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    const-string/jumbo v4, "GET"

    .line 264
    invoke-virtual {p2}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->isProxySet()Z

    move-result v5

    .line 265
    invoke-virtual {p2}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getProxyAddress()Ljava/lang/String;

    move-result-object v6

    .line 266
    invoke-virtual {p2}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getProxyPort()I

    move-result v7

    .line 267
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNetwork()Landroid/net/Network;

    move-result-object v8

    .line 268
    iget v9, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mSubscriptionId:I

    .line 262
    const-wide/16 v0, -0x1

    move-object v2, p1

    .line 261
    invoke-static/range {v0 .. v9}, Lcom/sonymobile/conversations/transaction/HttpUtils;->httpConnection(JLjava/lang/String;[BLjava/lang/String;ZLjava/lang/String;ILandroid/net/Network;I)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mServiceId:I

    return v0
.end method

.method public getState()Lcom/sonymobile/conversations/transaction/TransactionState;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mTransactionState:Lcom/sonymobile/conversations/transaction/TransactionState;

    return-object v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mSubscriptionId:I

    return v0
.end method

.method public abstract getType()I
.end method

.method public isEquivalent(Lcom/sonymobile/conversations/transaction/Transaction;)Z
    .locals 2
    .param p1, "transaction"    # Lcom/sonymobile/conversations/transaction/Transaction;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/Transaction;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/conversations/transaction/Transaction;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mId:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonymobile/conversations/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermanentError()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mPermanentError:Z

    return v0
.end method

.method protected notifyNetworkHandler()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    invoke-virtual {v0, p0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->transactionChangedState(Lcom/sonymobile/conversations/transaction/Transaction;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected sendPdu(J[BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    .locals 11
    .param p1, "token"    # J
    .param p3, "pdu"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "apn"    # Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Network not available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    invoke-virtual {p4}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getServiceCenter()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "mmscUrl":Ljava/lang/String;
    const-string/jumbo v4, "POST"

    .line 222
    invoke-virtual {p4}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->isProxySet()Z

    move-result v5

    .line 223
    invoke-virtual {p4}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getProxyAddress()Ljava/lang/String;

    move-result-object v6

    .line 224
    invoke-virtual {p4}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getProxyPort()I

    move-result v7

    .line 225
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    invoke-virtual {v0}, Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;->getNetwork()Landroid/net/Network;

    move-result-object v8

    .line 226
    iget v9, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mSubscriptionId:I

    move-wide v0, p1

    move-object v3, p3

    .line 218
    invoke-static/range {v0 .. v9}, Lcom/sonymobile/conversations/transaction/HttpUtils;->httpConnection(JLjava/lang/String;[BLjava/lang/String;ZLjava/lang/String;ILandroid/net/Network;I)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu(Ljava/lang/String;[BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    .locals 6
    .param p1, "contentUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pdu"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "apn"    # Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {p1}, Lcom/sonymobile/conversations/transaction/TransactionUtil;->getMmscFromContentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/conversations/transaction/Transaction;->sendPdu(Ljava/lang/String;J[BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu([BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;
    .locals 1
    .param p1, "pdu"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "apn"    # Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p2}, Lcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;->getServiceCenter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/conversations/transaction/Transaction;->sendPdu(Ljava/lang/String;[BLcom/sonymobile/conversations/transaction/TransactionSettings$MmsApn;)Lcom/sonymobile/conversations/transaction/HttpUtils$SimpleResponse;

    move-result-object v0

    return-object v0
.end method

.method public setNetworkHandler(Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mNetworkHandler:Lcom/sonymobile/conversations/transaction/MmsNetworkHandler;

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/conversations/transaction/Transaction;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/conversations/transaction/Transaction;->mServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
