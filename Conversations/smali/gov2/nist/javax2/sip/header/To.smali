.class public final Lgov2/nist/javax2/sip/header/To;
.super Lgov2/nist/javax2/sip/header/AddressParametersHeader;
.source "To.java"

# interfaces
.implements Ljavax2/sip/header/ToHeader;


# static fields
.field private static final serialVersionUID:J = -0x384ed45ac29ca44cL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string/jumbo v0, "To"

    .line 59
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/To;->headerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/To;->encodeBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/To;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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

    .line 91
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/To;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object p1

    .line 92
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/To;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 95
    :goto_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/To;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 96
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/To;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 100
    :goto_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/To;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ";"

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/To;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "<"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, ">"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 180
    instance-of v1, p1, Ljavax2/sip/header/ToHeader;

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

    .line 135
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/To;->parameters:Lgov2/nist/core/NameValueList;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tag"

    .line 136
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/To;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    return-object v1
.end method

.method public removeTag()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/To;->parameters:Lgov2/nist/core/NameValueList;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/To;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    goto :goto_0
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
    .line 167
    invoke-static {p1}, Lgov2/nist/javax2/sip/parser/Parser;->checkToken(Ljava/lang/String;)V

    const-string/jumbo v0, "tag"

    .line 168
    invoke-virtual {p0, v0, p1}, Lgov2/nist/javax2/sip/header/To;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method
