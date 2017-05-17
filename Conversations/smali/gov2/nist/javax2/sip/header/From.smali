.class public final Lgov2/nist/javax2/sip/header/From;
.super Lgov2/nist/javax2/sip/header/AddressParametersHeader;
.source "From.java"

# interfaces
.implements Ljavax2/sip/header/FromHeader;


# static fields
.field private static final serialVersionUID:J = -0x579b4ff92e364db4L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "From"

    .line 58
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/From;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v1, 0x2

    .line 80
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/From;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 83
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/From;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 84
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/From;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 87
    :goto_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/From;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    :goto_2
    return-object p1

    :cond_0
    const-string/jumbo v0, "<"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ">"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ";"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/From;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 167
    instance-of v1, p1, Ljavax2/sip/header/FromHeader;

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

.method public getTag()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/From;->parameters:Lgov2/nist/core/NameValueList;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tag"

    .line 120
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/From;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    return-object v1
.end method

.method public hasTag()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "tag"

    .line 129
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/From;->hasParameter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeTag()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/From;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 137
    return-void
.end method

.method public setAddress(Ljavax2/sip/address/Address;)V
    .locals 0
    .param p1, "address"    # Ljavax2/sip/address/Address;

    .prologue
    .line 145
    check-cast p1, Lgov2/nist/javax2/sip/address/AddressImpl;

    .end local p1    # "address":Ljavax2/sip/address/Address;
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/From;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    .line 146
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p1}, Lgov2/nist/javax2/sip/parser/Parser;->checkToken(Ljava/lang/String;)V

    const-string/jumbo v0, "tag"

    .line 156
    invoke-virtual {p0, v0, p1}, Lgov2/nist/javax2/sip/header/From;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method
