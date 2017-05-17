.class public final Lgov2/nist/javax2/sip/header/extensions/ReferredBy;
.super Lgov2/nist/javax2/sip/header/AddressParametersHeader;
.source "ReferredBy.java"

# interfaces
.implements Ljavax2/sip/header/ExtensionHeader;
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/HeaderAddress;
.implements Ljavax2/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = 0x2b7f6e1819e3cbcbL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Referred-By"

    .line 34
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 49
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/extensions/ReferredBy;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    .line 51
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/extensions/ReferredBy;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 54
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/extensions/ReferredBy;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/address/AddressImpl;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/extensions/ReferredBy;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 59
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/extensions/ReferredBy;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    :goto_2
    return-object v0

    .line 49
    .end local v0    # "retval":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 52
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

    .line 56
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

    .line 60
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/extensions/ReferredBy;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
    .line 39
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
