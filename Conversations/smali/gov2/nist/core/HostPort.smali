.class public final Lgov2/nist/core/HostPort;
.super Lgov2/nist/core/GenericObject;
.source "HostPort.java"


# static fields
.field private static final serialVersionUID:J = -0x629463c90d3e66ebL


# instance fields
.field protected host:Lgov2/nist/core/Host;

.field protected port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lgov2/nist/core/GenericObject;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lgov2/nist/core/HostPort;->port:I

    .line 62
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lgov2/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/core/HostPort;

    .line 168
    .local v0, "retval":Lgov2/nist/core/HostPort;
    iget-object v1, p0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    if-nez v1, :cond_0

    .line 169
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v1, p0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    invoke-virtual {v1}, Lgov2/nist/core/Host;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/core/Host;

    iput-object v1, v0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    goto :goto_0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/core/HostPort;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 76
    iget-object v0, p0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    invoke-virtual {v0, p1}, Lgov2/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 77
    iget v0, p0, Lgov2/nist/core/HostPort;->port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78
    :goto_0
    return-object p1

    :cond_0
    const-string/jumbo v0, ":"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lgov2/nist/core/HostPort;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 88
    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    move-object v0, p1

    .line 92
    check-cast v0, Lgov2/nist/core/HostPort;

    .line 93
    .local v0, "that":Lgov2/nist/core/HostPort;
    iget v2, p0, Lgov2/nist/core/HostPort;->port:I

    iget v3, v0, Lgov2/nist/core/HostPort;->port:I

    if-eq v2, v3, :cond_3

    :cond_0
    :goto_0
    return v1

    .line 88
    .end local v0    # "that":Lgov2/nist/core/HostPort;
    :cond_1
    return v1

    .line 90
    :cond_2
    return v1

    .line 93
    .restart local v0    # "that":Lgov2/nist/core/HostPort;
    :cond_3
    iget-object v2, p0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    iget-object v3, v0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    invoke-virtual {v2, v3}, Lgov2/nist/core/Host;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getHost()Lgov2/nist/core/Host;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    invoke-virtual {v0}, Lgov2/nist/core/Host;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    return-object v1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lgov2/nist/core/HostPort;->port:I

    return v0
.end method

.method public hasPort()Z
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lgov2/nist/core/HostPort;->port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    invoke-virtual {v0}, Lgov2/nist/core/Host;->hashCode()I

    move-result v0

    iget v1, p0, Lgov2/nist/core/HostPort;->port:I

    add-int/2addr v0, v1

    return v0
.end method

.method public removePort()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lgov2/nist/core/HostPort;->port:I

    .line 128
    return-void
.end method

.method public setHost(Lgov2/nist/core/Host;)V
    .locals 0
    .param p1, "h"    # Lgov2/nist/core/Host;

    .prologue
    .line 136
    iput-object p1, p0, Lgov2/nist/core/HostPort;->host:Lgov2/nist/core/Host;

    .line 137
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "p"    # I

    .prologue
    .line 145
    iput p1, p0, Lgov2/nist/core/HostPort;->port:I

    .line 146
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lgov2/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
