.class public Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;
.super Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
.source "SipRequest.java"


# direct methods
.method public constructor <init>(Ljavax2/sip/message/Request;)V
    .locals 0
    .param p1, "request"    # Ljavax2/sip/message/Request;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;-><init>(Ljavax2/sip/message/Message;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getExpires()I
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v1

    const-string/jumbo v2, "Expires"

    invoke-interface {v1, v2}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExpiresHeader;

    .line 74
    .local v0, "expires":Ljavax2/sip/header/ExpiresHeader;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 77
    return v1

    .line 75
    :cond_0
    invoke-interface {v0}, Ljavax2/sip/header/ExpiresHeader;->getExpires()I

    move-result v1

    return v1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/message/Request;->getRequestURI()Ljavax2/sip/address/URI;

    move-result-object v0

    invoke-interface {v0}, Ljavax2/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStackMessage()Ljavax2/sip/message/Message;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getStackMessage()Ljavax2/sip/message/Request;

    move-result-object v0

    return-object v0
.end method

.method public getStackMessage()Ljavax2/sip/message/Request;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->stackMessage:Ljavax2/sip/message/Message;

    check-cast v0, Ljavax2/sip/message/Request;

    return-object v0
.end method
