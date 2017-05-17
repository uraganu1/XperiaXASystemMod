.class public Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;
.super Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
.source "SipResponse.java"


# direct methods
.method public constructor <init>(Ljavax2/sip/message/Response;)V
    .locals 0
    .param p1, "response"    # Ljavax2/sip/message/Response;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;-><init>(Ljavax2/sip/message/Message;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getReasonPhrase()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackMessage()Ljavax2/sip/message/Response;

    move-result-object v0

    .line 69
    .local v0, "response":Ljavax2/sip/message/Response;
    if-nez v0, :cond_0

    .line 72
    return-object v1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackMessage()Ljavax2/sip/message/Response;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/message/Response;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getStackMessage()Ljavax2/sip/message/Message;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackMessage()Ljavax2/sip/message/Response;

    move-result-object v0

    return-object v0
.end method

.method public getStackMessage()Ljavax2/sip/message/Response;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->stackMessage:Ljavax2/sip/message/Message;

    check-cast v0, Ljavax2/sip/message/Response;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipResponse;->getStackMessage()Ljavax2/sip/message/Response;

    move-result-object v0

    .line 55
    .local v0, "response":Ljavax2/sip/message/Response;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 58
    return v1

    .line 56
    :cond_0
    invoke-interface {v0}, Ljavax2/sip/message/Response;->getStatusCode()I

    move-result v1

    return v1
.end method
