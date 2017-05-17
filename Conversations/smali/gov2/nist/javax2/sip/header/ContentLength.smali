.class public Lgov2/nist/javax2/sip/header/ContentLength;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "ContentLength.java"

# interfaces
.implements Ljavax2/sip/header/ContentLengthHeader;


# static fields
.field private static final serialVersionUID:J = 0x1079bf82211cf963L


# instance fields
.field protected contentLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Content-Length"

    .line 93
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    const-string/jumbo v0, "Content-Length"

    .line 100
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    .line 102
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/ContentLength;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 135
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :goto_0
    return-object p1

    :cond_0
    const-string/jumbo v0, "0"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 153
    instance-of v2, p1, Ljavax2/sip/header/ContentLengthHeader;

    if-nez v2, :cond_0

    .line 157
    return v1

    :cond_0
    move-object v0, p1

    .line 154
    check-cast v0, Ljavax2/sip/header/ContentLengthHeader;

    .line 155
    .local v0, "o":Ljavax2/sip/header/ContentLengthHeader;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ContentLength;->getContentLength()I

    move-result v2

    invoke-interface {v0}, Ljavax2/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v3

    if-eq v2, v3, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getContentLength()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setContentLength(I)V
    .locals 2
    .param p1, "contentLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 119
    if-ltz p1, :cond_0

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ContentLength;->contentLength:Ljava/lang/Integer;

    .line 123
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "JAIN-SIP Exception, ContentLength, setContentLength(), the contentLength parameter is <0"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
