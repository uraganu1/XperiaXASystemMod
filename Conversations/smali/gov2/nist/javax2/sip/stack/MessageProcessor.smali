.class public abstract Lgov2/nist/javax2/sip/stack/MessageProcessor;
.super Ljava/lang/Object;
.source "MessageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ipAddress:Ljava/net/InetAddress;

.field private listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

.field private port:I

.field private savedIpAddress:Ljava/lang/String;

.field private sentBy:Ljava/lang/String;

.field private sentByHostPort:Lgov2/nist/core/HostPort;

.field protected sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

.field protected transport:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->transport:Ljava/lang/String;

    .line 104
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;Lgov2/nist/javax2/sip/stack/SIPTransactionStack;)V
    .locals 0
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transport"    # Ljava/lang/String;
    .param p4, "transactionStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .prologue
    .line 117
    invoke-direct {p0, p3}, Lgov2/nist/javax2/sip/stack/MessageProcessor;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1, p2, p4}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->initialize(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;)V

    .line 119
    return-void
.end method

.method public static getDefaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "transport"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "TLS"

    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x13c4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x13c5

    goto :goto_0
.end method


# virtual methods
.method public abstract createMessageChannel(Lgov2/nist/core/HostPort;)Lgov2/nist/javax2/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createMessageChannel(Ljava/net/InetAddress;I)Lgov2/nist/javax2/sip/stack/MessageChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCurrentMsgChannel(Lgov2/nist/core/HostPort;)Lgov2/nist/javax2/sip/stack/MessageChannel;
.end method

.method public getIpAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getListeningPoint()Lgov2/nist/javax2/sip/ListeningPointImpl;
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    return-object v0

    .line 192
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getListeningPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " returning null listeningpoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->port:I

    return v0
.end method

.method public abstract getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;
.end method

.method public getSentBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    return-object v0

    .line 268
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sentByHostPort:Lgov2/nist/core/HostPort;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sentByHostPort:Lgov2/nist/core/HostPort;

    invoke-virtual {v0}, Lgov2/nist/core/HostPort;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sentBy:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public getViaHeader()Lgov2/nist/javax2/sip/header/Via;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 169
    :try_start_0
    new-instance v3, Lgov2/nist/javax2/sip/header/Via;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/header/Via;-><init>()V

    .line 170
    .local v3, "via":Lgov2/nist/javax2/sip/header/Via;
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sentByHostPort:Lgov2/nist/core/HostPort;

    if-nez v4, :cond_0

    .line 174
    new-instance v2, Lgov2/nist/core/Host;

    invoke-direct {v2}, Lgov2/nist/core/Host;-><init>()V

    .line 175
    .local v2, "host":Lgov2/nist/core/Host;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getIpAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgov2/nist/core/Host;->setHostname(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3, v2}, Lgov2/nist/javax2/sip/header/Via;->setHost(Lgov2/nist/core/Host;)V

    .line 177
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/header/Via;->setPort(I)V

    .line 178
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/header/Via;->setTransport(Ljava/lang/String;)V

    .line 180
    .end local v2    # "host":Lgov2/nist/core/Host;
    :goto_0
    return-object v3

    .line 171
    :cond_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sentByHostPort:Lgov2/nist/core/HostPort;

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/header/Via;->setSentBy(Lgov2/nist/core/HostPort;)V

    .line 172
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getTransport()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/header/Via;->setTransport(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 180
    .end local v3    # "via":Lgov2/nist/javax2/sip/header/Via;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 183
    return-object v5

    .end local v0    # "ex":Ljava/text/ParseException;
    :catch_1
    move-exception v1

    .line 185
    .local v1, "ex":Ljavax2/sip/InvalidArgumentException;
    invoke-virtual {v1}, Ljavax2/sip/InvalidArgumentException;->printStackTrace()V

    .line 186
    return-object v5
.end method

.method public final initialize(Ljava/net/InetAddress;ILgov2/nist/javax2/sip/stack/SIPTransactionStack;)V
    .locals 3
    .param p1, "ipAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "transactionStack"    # Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .prologue
    .line 132
    iput-object p3, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sipStack:Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    .line 133
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->savedIpAddress:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    .line 135
    iput p2, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->port:I

    .line 136
    new-instance v0, Lgov2/nist/core/HostPort;

    invoke-direct {v0}, Lgov2/nist/core/HostPort;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sentByHostPort:Lgov2/nist/core/HostPort;

    .line 137
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sentByHostPort:Lgov2/nist/core/HostPort;

    new-instance v1, Lgov2/nist/core/Host;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov2/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov2/nist/core/HostPort;->setHost(Lgov2/nist/core/Host;)V

    .line 138
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sentByHostPort:Lgov2/nist/core/HostPort;

    invoke-virtual {v0, p2}, Lgov2/nist/core/HostPort;->setPort(I)V

    .line 139
    return-void
.end method

.method public abstract run()V
.end method

.method protected setIpAddress(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "ipAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 232
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->sentByHostPort:Lgov2/nist/core/HostPort;

    new-instance v1, Lgov2/nist/core/Host;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov2/nist/core/Host;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgov2/nist/core/HostPort;->setHost(Lgov2/nist/core/Host;)V

    .line 233
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->ipAddress:Ljava/net/InetAddress;

    .line 234
    return-void
.end method

.method public setListeningPoint(Lgov2/nist/javax2/sip/ListeningPointImpl;)V
    .locals 3
    .param p1, "lp"    # Lgov2/nist/javax2/sip/ListeningPointImpl;

    .prologue
    .line 202
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    :goto_0
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/ListeningPointImpl;->getPort()I

    move-result v0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 210
    :goto_1
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/MessageProcessor;->listeningPoint:Lgov2/nist/javax2/sip/ListeningPointImpl;

    .line 212
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setListeningPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " listeningPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "lp mismatch with provider"

    .line 208
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getSIPStack()Lgov2/nist/javax2/sip/stack/SIPTransactionStack;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov2/nist/core/StackLogger;)V

    goto :goto_1
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
