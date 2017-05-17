.class public Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "PMediaAuthorization.java"

# interfaces
.implements Lgov2/nist/javax2/sip/header/ims/PMediaAuthorizationHeader;
.implements Ljavax2/sip/header/ExtensionHeader;
.implements Lgov2/nist/javax2/sip/header/SIPHeaderNames;


# static fields
.field private static final serialVersionUID:J = -0x59b36d79798089bdL


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "P-Media-Authorization"

    .line 75
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;

    .line 126
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-object v0

    .line 126
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    goto :goto_0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 116
    instance-of v1, p1, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorizationHeader;

    if-nez v1, :cond_0

    .line 120
    return v2

    :cond_0
    move-object v0, p1

    .line 117
    check-cast v0, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorizationHeader;

    .line 118
    .local v0, "o":Lgov2/nist/javax2/sip/header/ims/PMediaAuthorizationHeader;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorizationHeader;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaAuthorizationToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 94
    if-nez p1, :cond_1

    .line 95
    :cond_0
    new-instance v0, Ljavax2/sip/InvalidArgumentException;

    const-string/jumbo v1, " the Media-Authorization-Token parameter is null or empty"

    invoke-direct {v0, v1}, Ljavax2/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;->token:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
