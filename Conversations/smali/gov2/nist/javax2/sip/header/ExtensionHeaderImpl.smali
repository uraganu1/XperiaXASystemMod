.class public Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "ExtensionHeaderImpl.java"

# interfaces
.implements Ljavax2/sip/header/ExtensionHeader;


# static fields
.field private static final serialVersionUID:J = -0x78a704c29fbbc6b9L


# instance fields
.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;->headerName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;->getHeaderValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 82
    iget-object v3, p0, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 88
    .local v1, "encodedHdr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;->encode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    .local v1, "encodedHdr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 96
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    .line 98
    iget-object v3, p0, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    return-object v3

    .line 83
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "encodedHdr":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    return-object v3

    .line 91
    .local v1, "encodedHdr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 90
    .local v2, "ex":Ljava/lang/Exception;
    return-object v4

    .line 93
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .local v1, "encodedHdr":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_0

    .line 94
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    .line 74
    return-void
.end method
