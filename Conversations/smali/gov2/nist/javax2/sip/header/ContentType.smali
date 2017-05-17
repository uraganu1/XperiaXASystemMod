.class public Lgov2/nist/javax2/sip/header/ContentType;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "ContentType.java"

# interfaces
.implements Ljavax2/sip/header/ContentTypeHeader;


# static fields
.field private static final serialVersionUID:J = 0x759fac0f0cc76fd2L


# instance fields
.field protected mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Content-Type"

    .line 80
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubtype"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/ContentType;-><init>()V

    .line 91
    invoke-virtual {p0, p1, p2}, Lgov2/nist/javax2/sip/header/ContentType;->setContentType(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ContentType;

    .line 222
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ContentType;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-nez v1, :cond_0

    .line 223
    :goto_0
    return-object v0

    .line 222
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/MediaRange;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/MediaRange;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    goto :goto_0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/ContentType;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 114
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ContentType;->hasParameters()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-object p1

    :cond_0
    const-string/jumbo v0, ";"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 227
    instance-of v2, p1, Ljavax2/sip/header/ContentTypeHeader;

    if-nez v2, :cond_0

    .line 233
    return v1

    :cond_0
    move-object v0, p1

    .line 228
    check-cast v0, Ljavax2/sip/header/ContentTypeHeader;

    .line 229
    .local v0, "o":Ljavax2/sip/header/ContentTypeHeader;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ContentType;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax2/sip/header/ContentTypeHeader;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ContentType;->getContentSubType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax2/sip/header/ContentTypeHeader;->getContentSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/ContentType;->equalParameters(Ljavax2/sip/header/Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "charset"

    .line 172
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentSubType()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/MediaRange;->getSubtype()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/MediaRange;->getType()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setContentSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 215
    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-eqz v0, :cond_1

    .line 217
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    .line 218
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    new-instance v0, Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-eqz v0, :cond_1

    .line 205
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    .line 207
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null arg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    new-instance v0, Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubType"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0, p2}, Lgov2/nist/javax2/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    .line 194
    return-void

    .line 191
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ContentType;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    goto :goto_0
.end method
