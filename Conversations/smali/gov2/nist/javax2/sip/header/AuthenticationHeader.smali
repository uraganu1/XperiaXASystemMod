.class public abstract Lgov2/nist/javax2/sip/header/AuthenticationHeader;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "AuthenticationHeader.java"


# instance fields
.field protected scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>()V

    .line 96
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    const-string/jumbo v0, "Digest"

    .line 91
    iput-object v0, p0, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "nonce"

    .line 234
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "opaque"

    .line 340
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQop()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "qop"

    .line 315
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "realm"

    .line 207
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov2/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 107
    .local v0, "nv":Lgov2/nist/core/NameValue;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p2}, Lgov2/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 136
    :goto_0
    return-void

    .line 108
    :cond_0
    new-instance v0, Lgov2/nist/core/NameValue;

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    const-string/jumbo v1, "qop"

    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    :cond_1
    instance-of v1, p0, Lgov2/nist/javax2/sip/header/Authorization;

    if-eqz v1, :cond_5

    :cond_2
    const-string/jumbo v1, "qop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    :goto_1
    invoke-virtual {v0}, Lgov2/nist/core/NameValue;->setQuotedValue()V

    .line 128
    :cond_3
    if-eqz p2, :cond_6

    const-string/jumbo v1, "\""

    .line 129
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 132
    :goto_2
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->setParameter(Lgov2/nist/core/NameValue;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "realm"

    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "cnonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "nonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "username"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "domain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "opaque"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "nextnonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "response"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ik"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ck"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "integrity-protected"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 122
    :cond_5
    instance-of v1, p0, Lgov2/nist/javax2/sip/header/ProxyAuthorization;

    if-nez v1, :cond_2

    goto/16 :goto_1

    .line 128
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_7
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : Unexpected DOUBLE_QUOTE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/AuthenticationHeader;->scheme:Ljava/lang/String;

    .line 168
    return-void
.end method
