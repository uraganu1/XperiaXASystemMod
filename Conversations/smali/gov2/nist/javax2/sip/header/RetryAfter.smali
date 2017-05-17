.class public Lgov2/nist/javax2/sip/header/RetryAfter;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "RetryAfter.java"

# interfaces
.implements Ljavax2/sip/header/RetryAfterHeader;


# static fields
.field private static final serialVersionUID:J = -0xe495f10ce4d22dcL


# instance fields
.field protected comment:Ljava/lang/String;

.field protected retryAfter:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string/jumbo v0, "Retry-After"

    .line 70
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    .line 71
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v0, "s":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 83
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/RetryAfter;->comment:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 85
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/RetryAfter;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 81
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/RetryAfter;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 86
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/RetryAfter;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getDuration()I
    .locals 1

    .prologue
    const-string/jumbo v0, "duration"

    .line 185
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/RetryAfter;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "duration"

    .line 188
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->getParameterAsInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 186
    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/RetryAfter;->comment:Ljava/lang/String;

    .line 161
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the comment parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDuration(I)V
    .locals 2
    .param p1, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 172
    if-ltz p1, :cond_0

    const-string/jumbo v0, "duration"

    .line 173
    invoke-virtual {p0, v0, p1}, Lgov2/nist/javax2/sip/header/RetryAfter;->setParameter(Ljava/lang/String;I)V

    .line 174
    return-void

    .line 172
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, "the duration parameter is <0"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRetryAfter(I)V
    .locals 3
    .param p1, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 124
    if-ltz p1, :cond_0

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/RetryAfter;->retryAfter:Ljava/lang/Integer;

    .line 126
    return-void

    .line 124
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
