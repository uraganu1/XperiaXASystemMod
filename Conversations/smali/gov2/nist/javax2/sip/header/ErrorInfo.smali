.class public final Lgov2/nist/javax2/sip/header/ErrorInfo;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "ErrorInfo.java"

# interfaces
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = -0x58179228634e738aL


# instance fields
.field protected errorInfo:Lgov2/nist/javax2/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Error-Info"

    .line 60
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ErrorInfo;

    .line 134
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ErrorInfo;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ErrorInfo;->errorInfo:Lgov2/nist/javax2/sip/address/GenericURI;

    if-nez v1, :cond_0

    .line 135
    :goto_0
    return-object v0

    .line 134
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ErrorInfo;->errorInfo:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/address/GenericURI;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/ErrorInfo;->errorInfo:Lgov2/nist/javax2/sip/address/GenericURI;

    goto :goto_0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ErrorInfo;->errorInfo:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 81
    .local v0, "retval":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ErrorInfo;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ";"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ErrorInfo;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public setErrorInfo(Ljavax2/sip/address/URI;)V
    .locals 0
    .param p1, "errorInfo"    # Ljavax2/sip/address/URI;

    .prologue
    .line 94
    check-cast p1, Lgov2/nist/javax2/sip/address/GenericURI;

    .end local p1    # "errorInfo":Ljavax2/sip/address/URI;
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/ErrorInfo;->errorInfo:Lgov2/nist/javax2/sip/address/GenericURI;

    .line 96
    return-void
.end method
