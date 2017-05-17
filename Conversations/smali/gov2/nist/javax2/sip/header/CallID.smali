.class public Lgov2/nist/javax2/sip/header/CallID;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "CallID.java"

# interfaces
.implements Ljavax2/sip/header/CallIdHeader;


# static fields
.field private static final serialVersionUID:J = -0x59b36d79798089d4L


# instance fields
.field protected callIdentifier:Lgov2/nist/javax2/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Call-ID"

    .line 59
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/CallID;

    .line 149
    .local v0, "retval":Lgov2/nist/javax2/sip/header/CallID;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallID;->callIdentifier:Lgov2/nist/javax2/sip/header/CallIdentifier;

    if-nez v1, :cond_0

    .line 151
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/CallID;->callIdentifier:Lgov2/nist/javax2/sip/header/CallIdentifier;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/CallIdentifier;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/CallIdentifier;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/CallID;->callIdentifier:Lgov2/nist/javax2/sip/header/CallIdentifier;

    goto :goto_0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/CallID;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 88
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CallID;->callIdentifier:Lgov2/nist/javax2/sip/header/CallIdentifier;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-object p1

    .line 88
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/CallID;->callIdentifier:Lgov2/nist/javax2/sip/header/CallIdentifier;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/CallIdentifier;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 69
    if-eq p0, p1, :cond_0

    .line 71
    instance-of v1, p1, Ljavax2/sip/header/CallIdHeader;

    if-nez v1, :cond_1

    .line 75
    return v2

    .line 69
    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v0, p1

    .line 72
    check-cast v0, Ljavax2/sip/header/CallIdHeader;

    .line 73
    .local v0, "o":Ljavax2/sip/header/CallIdHeader;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/CallID;->encodeBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    new-instance v1, Lgov2/nist/javax2/sip/header/CallIdentifier;

    invoke-direct {v1, p1}, Lgov2/nist/javax2/sip/header/CallIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lgov2/nist/javax2/sip/header/CallID;->callIdentifier:Lgov2/nist/javax2/sip/header/CallIdentifier;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/text/ParseException;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
