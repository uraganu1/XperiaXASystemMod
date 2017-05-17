.class public final Lgov2/nist/javax2/sip/stack/HopImpl;
.super Ljava/lang/Object;
.source "HopImpl.java"

# interfaces
.implements Ljavax2/sip/address/Hop;
.implements Ljava/io/Serializable;


# instance fields
.field protected defaultRoute:Z

.field protected host:Ljava/lang/String;

.field protected port:I

.field protected transport:Ljava/lang/String;

.field protected uriRoute:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "portNumber"    # I
    .param p3, "trans"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->host:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->host:Ljava/lang/String;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    iput p2, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->port:I

    .line 81
    iput-object p3, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->transport:Ljava/lang/String;

    .line 82
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->host:Ljava/lang/String;

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->host:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->port:I

    return v0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->transport:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/stack/HopImpl;->transport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
