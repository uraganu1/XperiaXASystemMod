.class public Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;
.super Lgov2/nist/javax2/sip/header/AddressParametersHeader;
.source "PAssertedIdentity.java"

# interfaces
.implements Ljavax2/sip/header/ExtensionHeader;
.implements Ljavax2/sip/header/HeaderAddress;
.implements Ljavax2/sip/header/Header;
.implements Lgov2/nist/javax2/sip/header/SIPHeaderNames;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "P-Asserted-Identity"

    .line 64
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;

    .line 88
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 77
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/AddressImpl;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 82
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "<"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ">"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 82
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
