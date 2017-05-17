.class public abstract Lgov2/nist/javax2/sip/header/SIPHeader;
.super Lgov2/nist/javax2/sip/header/SIPObject;
.source "SIPHeader.java"

# interfaces
.implements Lgov2/nist/javax2/sip/header/SIPHeaderNames;
.implements Ljavax2/sip/header/Header;


# instance fields
.field protected headerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/SIPObject;-><init>()V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "hname"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/SIPObject;-><init>()V

    .line 56
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 129
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/SIPHeader;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "\r\n"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    return-object p1
.end method

.method protected abstract encodeBody()Ljava/lang/String;
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 146
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->encodeBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 99
    .local v1, "encodedHdr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->encode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    .local v1, "encodedHdr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 108
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 102
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .local v1, "encodedHdr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 101
    return-object v3

    .line 104
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .local v1, "encodedHdr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->getHeaderValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setHeaderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "hdrname"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/SIPHeader;->headerName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
