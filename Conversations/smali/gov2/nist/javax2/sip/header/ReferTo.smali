.class public final Lgov2/nist/javax2/sip/header/ReferTo;
.super Lgov2/nist/javax2/sip/header/AddressParametersHeader;
.source "ReferTo.java"

# interfaces
.implements Ljavax2/sip/header/ReferToHeader;


# static fields
.field private static final serialVersionUID:J = -0x17214f358828de23L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Refer-To"

    .line 54
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 63
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ReferTo;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    .line 65
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ReferTo;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 68
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ReferTo;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/address/AddressImpl;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ReferTo;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 73
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ReferTo;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    :goto_2
    return-object v0

    .line 63
    .end local v0    # "retval":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 66
    .restart local v0    # "retval":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 74
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ReferTo;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
