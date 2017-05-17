.class public Lgov2/nist/javax2/sip/header/RequestLine;
.super Lgov2/nist/javax2/sip/header/SIPObject;
.source "RequestLine.java"


# static fields
.field private static final serialVersionUID:J = -0x2d9bbb31060a5df9L


# instance fields
.field protected method:Ljava/lang/String;

.field protected sipVersion:Ljava/lang/String;

.field protected uri:Lgov2/nist/javax2/sip/address/GenericURI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/SIPObject;-><init>()V

    const-string/jumbo v0, "SIP/2.0"

    .line 68
    iput-object v0, p0, Lgov2/nist/javax2/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/SIPObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/RequestLine;

    .line 219
    .local v0, "retval":Lgov2/nist/javax2/sip/header/RequestLine;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/RequestLine;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return-object v0

    .line 219
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/RequestLine;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/address/GenericURI;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/RequestLine;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    goto :goto_0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/RequestLine;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 81
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RequestLine;->method:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RequestLine;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    if-nez v0, :cond_1

    .line 89
    :goto_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "\r\n"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    return-object p1

    .line 82
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RequestLine;->method:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RequestLine;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 207
    check-cast v2, Lgov2/nist/javax2/sip/header/RequestLine;

    .line 209
    .local v2, "that":Lgov2/nist/javax2/sip/header/RequestLine;
    :try_start_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/header/RequestLine;->method:Ljava/lang/String;

    iget-object v4, v2, Lgov2/nist/javax2/sip/header/RequestLine;->method:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 205
    .end local v2    # "that":Lgov2/nist/javax2/sip/header/RequestLine;
    :cond_1
    return v1

    .line 209
    .restart local v2    # "that":Lgov2/nist/javax2/sip/header/RequestLine;
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/header/RequestLine;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    iget-object v4, v2, Lgov2/nist/javax2/sip/header/RequestLine;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/address/GenericURI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgov2/nist/javax2/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    iget-object v4, v2, Lgov2/nist/javax2/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    .local v1, "retval":Z
    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RequestLine;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Lgov2/nist/javax2/sip/address/GenericURI;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RequestLine;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/RequestLine;->method:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setSipVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/RequestLine;->sipVersion:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setUri(Ljavax2/sip/address/URI;)V
    .locals 0
    .param p1, "uri"    # Ljavax2/sip/address/URI;

    .prologue
    .line 134
    check-cast p1, Lgov2/nist/javax2/sip/address/GenericURI;

    .end local p1    # "uri":Ljavax2/sip/address/URI;
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/RequestLine;->uri:Lgov2/nist/javax2/sip/address/GenericURI;

    .line 135
    return-void
.end method
