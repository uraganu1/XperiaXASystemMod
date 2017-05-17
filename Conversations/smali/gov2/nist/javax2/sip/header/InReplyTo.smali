.class public Lgov2/nist/javax2/sip/header/InReplyTo;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "InReplyTo.java"

# interfaces
.implements Ljavax2/sip/header/CallIdHeader;


# static fields
.field private static final serialVersionUID:J = 0x1759ce6d8e492f1aL


# instance fields
.field protected callId:Lgov2/nist/javax2/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "In-Reply-To"

    .line 56
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/InReplyTo;

    .line 107
    .local v0, "retval":Lgov2/nist/javax2/sip/header/InReplyTo;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/InReplyTo;->callId:Lgov2/nist/javax2/sip/header/CallIdentifier;

    if-nez v1, :cond_0

    .line 108
    :goto_0
    return-object v0

    .line 107
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/InReplyTo;->callId:Lgov2/nist/javax2/sip/header/CallIdentifier;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/CallIdentifier;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/CallIdentifier;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/InReplyTo;->callId:Lgov2/nist/javax2/sip/header/CallIdentifier;

    goto :goto_0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/InReplyTo;->callId:Lgov2/nist/javax2/sip/header/CallIdentifier;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/CallIdentifier;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/InReplyTo;->callId:Lgov2/nist/javax2/sip/header/CallIdentifier;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/InReplyTo;->callId:Lgov2/nist/javax2/sip/header/CallIdentifier;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/CallIdentifier;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    return-object v1
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/header/CallIdentifier;

    invoke-direct {v1, p1}, Lgov2/nist/javax2/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lgov2/nist/javax2/sip/header/InReplyTo;->callId:Lgov2/nist/javax2/sip/header/CallIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
