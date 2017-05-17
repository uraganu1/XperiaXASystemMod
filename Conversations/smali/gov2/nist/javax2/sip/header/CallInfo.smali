.class public final Lgov2/nist/javax2/sip/header/CallInfo;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "CallInfo.java"

# interfaces
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = -0x718285585586c120L


# instance fields
.field protected info:Lgov2/nist/javax2/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Call-Info"

    .line 56
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/CallInfo;

    .line 123
    .local v0, "retval":Lgov2/nist/javax2/sip/header/CallInfo;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallInfo;->info:Lgov2/nist/javax2/sip/address/GenericURI;

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallInfo;->info:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/address/GenericURI;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/CallInfo;->info:Lgov2/nist/javax2/sip/address/GenericURI;

    goto :goto_0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/CallInfo;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const-string/jumbo v0, "<"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CallInfo;->info:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, ">"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CallInfo;->parameters:Lgov2/nist/core/NameValueList;

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object p1

    .line 73
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CallInfo;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ";"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CallInfo;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public setInfo(Ljavax2/sip/address/URI;)V
    .locals 0
    .param p1, "info"    # Ljavax2/sip/address/URI;

    .prologue
    .line 118
    check-cast p1, Lgov2/nist/javax2/sip/address/GenericURI;

    .end local p1    # "info":Ljavax2/sip/address/URI;
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/CallInfo;->info:Lgov2/nist/javax2/sip/address/GenericURI;

    .line 119
    return-void
.end method
