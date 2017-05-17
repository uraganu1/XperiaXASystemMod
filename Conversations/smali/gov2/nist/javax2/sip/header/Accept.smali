.class public final Lgov2/nist/javax2/sip/header/Accept;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "Accept.java"

# interfaces
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/MediaType;
.implements Ljavax2/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = -0x6d2a503d84e287e7L


# instance fields
.field protected mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Accept"

    .line 58
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/Accept;

    .line 205
    .local v0, "retval":Lgov2/nist/javax2/sip/header/Accept;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-object v0

    .line 205
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/MediaRange;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/MediaRange;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    goto :goto_0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Accept;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 95
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-nez v0, :cond_1

    .line 96
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->parameters:Lgov2/nist/core/NameValueList;

    if-nez v0, :cond_2

    .line 100
    :cond_0
    :goto_1
    return-object p1

    .line 95
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/MediaRange;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getContentSubType()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/MediaRange;->getSubtype()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    return-object v1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/MediaRange;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    return-object v1
.end method

.method public setContentSubType(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtype"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/MediaRange;->setSubtype(Ljava/lang/String;)V

    .line 170
    return-void

    .line 168
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/MediaRange;->setType(Ljava/lang/String;)V

    .line 180
    return-void

    .line 178
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/header/MediaRange;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/MediaRange;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Accept;->mediaRange:Lgov2/nist/javax2/sip/header/MediaRange;

    goto :goto_0
.end method
