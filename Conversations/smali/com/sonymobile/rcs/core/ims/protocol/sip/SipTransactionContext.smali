.class public Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;
.super Ljava/lang/Object;
.source "SipTransactionContext.java"


# instance fields
.field private recvMsg:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

.field private transaction:Ljavax2/sip/Transaction;


# direct methods
.method public constructor <init>(Ljavax2/sip/Transaction;)V
    .locals 1
    .param p1, "transaction"    # Ljavax2/sip/Transaction;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->recvMsg:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .line 50
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->transaction:Ljavax2/sip/Transaction;

    .line 51
    return-void
.end method

.method public static getTransactionContextId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getStackMessage()Ljavax2/sip/message/Message;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getTransactionContextId(Ljavax2/sip/message/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTransactionContextId(Ljavax2/sip/message/Message;)Ljava/lang/String;
    .locals 2
    .param p0, "msg"    # Ljavax2/sip/message/Message;

    .prologue
    const-string/jumbo v1, "Call-ID"

    .line 234
    invoke-interface {p0, v1}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/CallIdHeader;

    .line 235
    .local v0, "header":Ljavax2/sip/header/CallIdHeader;
    invoke-interface {v0}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getReasonPhrase()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    move-result-object v0

    .line 168
    .local v0, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    if-nez v0, :cond_0

    .line 171
    .end local v1    # "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 169
    .restart local v1    # "ret":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .local v1, "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSipResponse()Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 140
    return-object v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->recvMsg:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    check-cast v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 152
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->isSipResponse()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    :goto_0
    return v1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->recvMsg:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    check-cast v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    .line 154
    .local v0, "resp":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStatusCode()I

    move-result v1

    goto :goto_0
.end method

.method public getTransaction()Ljavax2/sip/Transaction;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->transaction:Ljavax2/sip/Transaction;

    return-object v0
.end method

.method public isSipAck()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->recvMsg:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    if-nez v1, :cond_0

    .line 127
    return v3

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->recvMsg:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    check-cast v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .line 121
    .local v0, "req":Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    return v3

    .line 122
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public isSipResponse()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->recvMsg:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->recvMsg:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    instance-of v0, v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;

    return v0
.end method

.method public responseReceived(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)V
    .locals 1
    .param p1, "msg"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .prologue
    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->recvMsg:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    .line 203
    invoke-super {p0}, Ljava/lang/Object;->notify()V

    .line 204
    monitor-exit p0

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitResponse(I)V
    .locals 5
    .param p1, "timeout"    # I

    .prologue
    const/4 v4, 0x0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->recvMsg:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    if-nez v1, :cond_0

    .line 185
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    :try_start_1
    invoke-super {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 187
    monitor-exit p0

    .line 192
    :goto_0
    return-void

    .line 183
    :cond_0
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 191
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/InterruptedException;
    iput-object v4, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipTransactionContext;->recvMsg:Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;

    goto :goto_0
.end method
