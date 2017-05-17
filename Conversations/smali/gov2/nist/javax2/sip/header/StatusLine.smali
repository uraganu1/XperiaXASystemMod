.class public final Lgov2/nist/javax2/sip/header/StatusLine;
.super Lgov2/nist/javax2/sip/header/SIPObject;
.source "StatusLine.java"


# static fields
.field private static final serialVersionUID:J = -0x41c115c43b1c364eL


# instance fields
.field protected matchStatusClass:Z

.field protected reasonPhrase:Ljava/lang/String;

.field protected sipVersion:Ljava/lang/String;

.field protected statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/SIPObject;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lgov2/nist/javax2/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    const-string/jumbo v0, "SIP/2.0"

    .line 105
    iput-object v0, p0, Lgov2/nist/javax2/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SIP/2.0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov2/nist/javax2/sip/header/StatusLine;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "encoding":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 116
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lgov2/nist/javax2/sip/header/StatusLine;->statusCode:I

    return v0
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/StatusLine;->reasonPhrase:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setSipVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/StatusLine;->sipVersion:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 158
    iput p1, p0, Lgov2/nist/javax2/sip/header/StatusLine;->statusCode:I

    .line 159
    return-void
.end method
