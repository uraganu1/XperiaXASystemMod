.class public Lgov2/nist/javax2/sip/header/Protocol;
.super Lgov2/nist/javax2/sip/header/SIPObject;
.source "Protocol.java"


# static fields
.field private static final serialVersionUID:J = 0x1ec381b4ff51f3c0L


# instance fields
.field protected protocolName:Ljava/lang/String;

.field protected protocolVersion:Ljava/lang/String;

.field protected transport:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/SIPObject;-><init>()V

    const-string/jumbo v0, "SIP"

    .line 155
    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Protocol;->protocolName:Ljava/lang/String;

    const-string/jumbo v0, "2.0"

    .line 156
    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    const-string/jumbo v0, "UDP"

    .line 157
    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Protocol;->transport:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Protocol;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 72
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Protocol;->protocolName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Protocol;->transport:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    return-object p1
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Protocol;->protocolName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Protocol;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public setProtocolName(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Protocol;->protocolName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setProtocolVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Protocol;->protocolVersion:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setTransport(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Protocol;->transport:Ljava/lang/String;

    .line 149
    return-void
.end method
