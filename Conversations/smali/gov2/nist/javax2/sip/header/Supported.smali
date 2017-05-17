.class public Lgov2/nist/javax2/sip/header/Supported;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "Supported.java"

# interfaces
.implements Ljavax2/sip/header/SupportedHeader;


# static fields
.field private static final serialVersionUID:J = -0x6a93a8fca822058eL


# instance fields
.field protected optionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Supported"

    .line 59
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Supported;->optionTag:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/Supported;->headerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Supported;->optionTag:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 81
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

    .line 82
    return-object v0

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/Supported;->optionTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Supported;->optionTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Supported;->optionTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOptionTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Supported;->optionTag:Ljava/lang/String;

    .line 107
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception, Supported, setOptionTag(), the optionTag parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
