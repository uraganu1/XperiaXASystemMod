.class public final Lgov2/nist/javax2/sip/header/AuthenticationInfo;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "AuthenticationInfo.java"

# interfaces
.implements Ljavax2/sip/header/AuthenticationInfoHeader;


# static fields
.field private static final serialVersionUID:J = -0x3cac35432dc8d791L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string/jumbo v0, "Authentication-Info"

    .line 50
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/AuthenticationInfo;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/AuthenticationInfo;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextNonce()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "nextnonce"

    .line 106
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/AuthenticationInfo;->getParameter(Ljava/lang/String;)Ljava/lang/String;

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

    .line 215
    if-eqz p1, :cond_0

    .line 216
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov2/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 217
    .local v0, "nv":Lgov2/nist/core/NameValue;
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0, p2}, Lgov2/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 237
    :goto_0
    return-void

    .line 215
    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_1
    new-instance v0, Lgov2/nist/core/NameValue;

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    const-string/jumbo v1, "qop"

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    :cond_2
    if-eqz p2, :cond_4

    const-string/jumbo v1, "\""

    .line 230
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 232
    invoke-virtual {v0}, Lgov2/nist/core/NameValue;->setQuotedValue()V

    .line 234
    :goto_1
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->setParameter(Lgov2/nist/core/NameValue;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "nextnonce"

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "realm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "cnonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "nonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "opaque"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "username"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "domain"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "nextnonce"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "rspauth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 229
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_5
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
