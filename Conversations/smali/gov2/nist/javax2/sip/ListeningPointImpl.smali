.class public Lgov2/nist/javax2/sip/ListeningPointImpl;
.super Ljava/lang/Object;
.source "ListeningPointImpl.java"

# interfaces
.implements Ljavax2/sip/ListeningPoint;


# instance fields
.field protected messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

.field port:I

.field protected sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

.field protected sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

.field protected transport:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljavax2/sip/SipStack;ILjava/lang/String;)V
    .locals 0
    .param p1, "sipStack"    # Ljavax2/sip/SipStack;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    check-cast p1, Lgov2/nist/javax2/sip/SipStackImpl;

    .end local p1    # "sipStack":Ljavax2/sip/SipStack;
    iput-object p1, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    .line 127
    iput p2, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->port:I

    .line 128
    iput-object p3, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->transport:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static makeKey(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "transport"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 139
    new-instance v0, Lgov2/nist/javax2/sip/ListeningPointImpl;

    iget-object v1, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    iget v2, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->port:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgov2/nist/javax2/sip/ListeningPointImpl;-><init>(Ljavax2/sip/SipStack;ILjava/lang/String;)V

    .line 140
    .local v0, "lip":Lgov2/nist/javax2/sip/ListeningPointImpl;
    iget-object v1, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    iput-object v1, v0, Lgov2/nist/javax2/sip/ListeningPointImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    .line 141
    return-object v0
.end method

.method public createContactHeader()Ljavax2/sip/header/ContactHeader;
    .locals 8

    .prologue
    .line 225
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "ipAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getPort()I

    move-result v4

    .line 227
    .local v4, "port":I
    new-instance v5, Lgov2/nist/javax2/sip/address/SipUri;

    invoke-direct {v5}, Lgov2/nist/javax2/sip/address/SipUri;-><init>()V

    .line 228
    .local v5, "sipURI":Ljavax2/sip/address/SipURI;
    invoke-interface {v5, v3}, Ljavax2/sip/address/SipURI;->setHost(Ljava/lang/String;)V

    .line 229
    invoke-interface {v5, v4}, Ljavax2/sip/address/SipURI;->setPort(I)V

    .line 230
    iget-object v6, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->transport:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljavax2/sip/address/SipURI;->setTransportParam(Ljava/lang/String;)V

    .line 231
    new-instance v1, Lgov2/nist/javax2/sip/header/Contact;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/Contact;-><init>()V

    .line 232
    .local v1, "contact":Lgov2/nist/javax2/sip/header/Contact;
    new-instance v0, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;-><init>()V

    .line 233
    .local v0, "address":Lgov2/nist/javax2/sip/address/AddressImpl;
    invoke-virtual {v0, v5}, Lgov2/nist/javax2/sip/address/AddressImpl;->setURI(Ljavax2/sip/address/URI;)V

    .line 234
    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/Contact;->setAddress(Ljavax2/sip/address/Address;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    return-object v1

    .end local v0    # "address":Lgov2/nist/javax2/sip/address/AddressImpl;
    .end local v1    # "contact":Lgov2/nist/javax2/sip/header/Contact;
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "sipURI":Ljavax2/sip/address/SipURI;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "Unexpected exception"

    .line 238
    iget-object v7, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v7

    invoke-static {v6, v7}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov2/nist/core/StackLogger;)V

    const/4 v6, 0x0

    .line 239
    return-object v6
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageProcessor()Lgov2/nist/javax2/sip/stack/MessageProcessor;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getPort()I

    move-result v0

    return v0
.end method

.method public getProvider()Lgov2/nist/javax2/sip/SipProviderImpl;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    return-object v0
.end method

.method public getSentBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getSentBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViaHeader()Lgov2/nist/javax2/sip/header/Via;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getViaHeader()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v0

    return-object v0
.end method

.method protected removeSipProvider()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->sipProvider:Lgov2/nist/javax2/sip/SipProviderImpl;

    .line 117
    return-void
.end method

.method public sendHeartbeat(Ljava/lang/String;I)V
    .locals 6
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v4, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/SipStackImpl;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    new-instance v3, Lgov2/nist/core/HostPort;

    invoke-direct {v3}, Lgov2/nist/core/HostPort;-><init>()V

    .line 249
    .local v3, "targetHostPort":Lgov2/nist/core/HostPort;
    new-instance v4, Lgov2/nist/core/Host;

    invoke-static {p1}, Lgov2/nist/javax2/sip/Utils;->getIpAddressFromHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lgov2/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lgov2/nist/core/HostPort;->setHost(Lgov2/nist/core/Host;)V

    .line 250
    invoke-virtual {v3, p2}, Lgov2/nist/core/HostPort;->setPort(I)V

    .line 251
    iget-object v4, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v4, v3}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->createMessageChannel(Lgov2/nist/core/HostPort;)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v1

    .line 253
    .local v1, "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    new-instance v2, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-direct {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;-><init>()V

    .line 254
    .local v2, "siprequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setNullRequest()V

    .line 256
    instance-of v4, v1, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    if-nez v4, :cond_1

    .line 264
    :goto_0
    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/stack/MessageChannel;->sendMessage(Lgov2/nist/javax2/sip/message/SIPMessage;)V

    .line 265
    return-void

    .line 245
    .end local v1    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .end local v2    # "siprequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .end local v3    # "targetHostPort":Lgov2/nist/core/HostPort;
    :cond_0
    return-void

    .restart local v1    # "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    .restart local v2    # "siprequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    .restart local v3    # "targetHostPort":Lgov2/nist/core/HostPort;
    :cond_1
    move-object v0, v1

    .line 259
    check-cast v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    .line 260
    .local v0, "connectionOrientedMessageChannel":Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;
    invoke-static {}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getInstance()Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;

    move-result-object v4

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/stack/KeepAliveRetryHelper;->getTimeoutPeriod()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->rescheduleKeepAliveTimeout(J)V

    goto :goto_0
.end method

.method public stopPingKeepaliveTask(Ljava/lang/String;I)V
    .locals 4
    .param p1, "ipAddress"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 273
    new-instance v2, Lgov2/nist/core/HostPort;

    invoke-direct {v2}, Lgov2/nist/core/HostPort;-><init>()V

    .line 274
    .local v2, "targetHostPort":Lgov2/nist/core/HostPort;
    new-instance v3, Lgov2/nist/core/Host;

    invoke-direct {v3, p1}, Lgov2/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lgov2/nist/core/HostPort;->setHost(Lgov2/nist/core/Host;)V

    .line 275
    invoke-virtual {v2, p2}, Lgov2/nist/core/HostPort;->setPort(I)V

    .line 276
    iget-object v3, p0, Lgov2/nist/javax2/sip/ListeningPointImpl;->messageProcessor:Lgov2/nist/javax2/sip/stack/MessageProcessor;

    invoke-virtual {v3, v2}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getCurrentMsgChannel(Lgov2/nist/core/HostPort;)Lgov2/nist/javax2/sip/stack/MessageChannel;

    move-result-object v1

    .line 277
    .local v1, "messageChannel":Lgov2/nist/javax2/sip/stack/MessageChannel;
    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    instance-of v3, v1, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 278
    check-cast v0, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;

    .line 279
    .local v0, "connectionOrientedMessageChannel":Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/ConnectionOrientedMessageChannel;->cancelPingKeepAliveTimeoutTaskIfStarted()V

    goto :goto_0
.end method
