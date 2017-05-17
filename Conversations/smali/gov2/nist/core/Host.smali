.class public Lgov2/nist/core/Host;
.super Lgov2/nist/core/GenericObject;
.source "Host.java"


# static fields
.field private static final serialVersionUID:J = -0x6462c89aa1f7b990L


# instance fields
.field protected addressType:I

.field protected hostname:Ljava/lang/String;

.field private inetAddress:Ljava/net/InetAddress;

.field private stripAddressScopeZones:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lgov2/nist/core/GenericObject;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov2/nist/core/Host;->stripAddressScopeZones:Z

    const/4 v0, 0x1

    .line 88
    iput v0, p0, Lgov2/nist/core/Host;->addressType:I

    const-string/jumbo v0, "gov2.nist.core.STRIP_ADDR_SCOPES"

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov2/nist/core/Host;->stripAddressScopeZones:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lgov2/nist/core/GenericObject;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov2/nist/core/Host;->stripAddressScopeZones:Z

    .line 97
    if-eqz p1, :cond_0

    const-string/jumbo v0, "gov2.nist.core.STRIP_ADDR_SCOPES"

    .line 99
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgov2/nist/core/Host;->stripAddressScopeZones:Z

    const/4 v0, 0x2

    .line 101
    invoke-direct {p0, p1, v0}, Lgov2/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 102
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null host name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isIPv6Address(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 289
    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isIPv6Reference(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setHost(Ljava/lang/String;I)V
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 218
    iput-object v1, p0, Lgov2/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 220
    invoke-direct {p0, p1}, Lgov2/nist/core/Host;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    iput p2, p0, Lgov2/nist/core/Host;->addressType:I

    .line 226
    :goto_0
    if-nez p1, :cond_2

    .line 241
    :cond_0
    :goto_1
    return-void

    .line 221
    :cond_1
    iput v4, p0, Lgov2/nist/core/Host;->addressType:I

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    .line 230
    iget v1, p0, Lgov2/nist/core/Host;->addressType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    :goto_2
    const/4 v0, -0x1

    .line 235
    .local v0, "zoneStart":I
    iget v1, p0, Lgov2/nist/core/Host;->addressType:I

    if-ne v1, v4, :cond_0

    iget-boolean v1, p0, Lgov2/nist/core/Host;->stripAddressScopeZones:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    goto :goto_1

    .line 230
    .end local v0    # "zoneStart":I
    :cond_3
    iget-object v1, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/core/Host;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 126
    iget v0, p0, Lgov2/nist/core/Host;->addressType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :goto_0
    return-object p1

    .line 126
    :cond_1
    iget-object v0, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v0}, Lgov2/nist/core/Host;->isIPv6Reference(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 142
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 146
    check-cast v0, Lgov2/nist/core/Host;

    .line 147
    .local v0, "otherHost":Lgov2/nist/core/Host;
    iget-object v1, v0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    iget-object v2, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 142
    .end local v0    # "otherHost":Lgov2/nist/core/Host;
    :cond_0
    return v3

    .line 144
    :cond_1
    return v3
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

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

    .line 277
    iget-object v0, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lgov2/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lgov2/nist/core/Host;->hostname:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    .line 280
    iget-object v0, p0, Lgov2/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    return-object v0

    .line 277
    :cond_0
    return-object v1

    .line 278
    :cond_1
    iget-object v0, p0, Lgov2/nist/core/Host;->inetAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lgov2/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 1
    .param p1, "h"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-direct {p0, p1, v0}, Lgov2/nist/core/Host;->setHost(Ljava/lang/String;I)V

    .line 198
    return-void
.end method
