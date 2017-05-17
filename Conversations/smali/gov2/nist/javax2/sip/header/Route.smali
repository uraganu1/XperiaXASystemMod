.class public Lgov2/nist/javax2/sip/header/Route;
.super Lgov2/nist/javax2/sip/header/AddressParametersHeader;
.source "Route.java"

# interfaces
.implements Ljavax2/sip/header/RouteHeader;


# static fields
.field private static final serialVersionUID:J = 0x4ee01f7faef81a4eL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Route"

    .line 53
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lgov2/nist/javax2/sip/address/AddressImpl;)V
    .locals 1
    .param p1, "address"    # Lgov2/nist/javax2/sip/address/AddressImpl;

    .prologue
    const-string/jumbo v0, "Route"

    .line 63
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Route;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    .line 65
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Route;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/Route;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 88
    .local v0, "addrFlag":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Route;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v1, p1}, Lgov2/nist/javax2/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 95
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Route;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    :goto_2
    return-object p1

    .end local v0    # "addrFlag":Z
    :cond_0
    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    .restart local v0    # "addrFlag":Z
    :cond_1
    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Route;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v1, p1}, Lgov2/nist/javax2/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 91
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, ";"

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Route;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 103
    instance-of v1, p1, Ljavax2/sip/header/RouteHeader;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Route;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;->getHostPort()Lgov2/nist/core/HostPort;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
