.class public final Lgov2/nist/javax2/sip/header/AcceptEncoding;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "AcceptEncoding.java"

# interfaces
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = -0x147eaca80a637035L


# instance fields
.field protected contentCoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Accept-Encoding"

    .line 85
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/AcceptEncoding;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 98
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 101
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/AcceptEncoding;->parameters:Lgov2/nist/core/NameValueList;

    if-nez v0, :cond_2

    .line 104
    :cond_0
    :goto_1
    return-object p1

    .line 99
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 101
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/AcceptEncoding;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ";"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AcceptEncoding;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/AcceptEncoding;->contentCoding:Ljava/lang/String;

    .line 146
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, " encoding parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQValue(F)V
    .locals 4
    .param p1, "q"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 131
    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "qvalue out of range!"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "q"

    .line 132
    invoke-super {p0, v0, p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;F)V

    .line 133
    return-void
.end method
