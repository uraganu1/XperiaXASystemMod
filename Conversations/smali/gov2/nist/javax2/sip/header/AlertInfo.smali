.class public final Lgov2/nist/javax2/sip/header/AlertInfo;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "AlertInfo.java"

# interfaces
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = 0x39ba1254fc6b29efL


# instance fields
.field protected string:Ljava/lang/String;

.field protected uri:Lgov2/nist/javax2/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Alert-Info"

    .line 64
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/AlertInfo;

    .line 126
    .local v0, "retval":Lgov2/nist/javax2/sip/header/AlertInfo;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->string:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 131
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/address/GenericURI;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/AlertInfo;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->string:Ljava/lang/String;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/AlertInfo;->string:Ljava/lang/String;

    goto :goto_0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->string:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 79
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, "<"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, ";"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public setAlertInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->string:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setAlertInfo(Ljavax2/sip/address/URI;)V
    .locals 0
    .param p1, "uri"    # Ljavax2/sip/address/URI;

    .prologue
    .line 91
    check-cast p1, Lgov2/nist/javax2/sip/address/GenericURI;

    .end local p1    # "uri":Ljavax2/sip/address/URI;
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/AlertInfo;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    .line 92
    return-void
.end method
