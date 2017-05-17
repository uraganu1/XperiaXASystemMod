.class public Lgov2/nist/javax2/sip/header/extensions/Replaces;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "Replaces.java"

# interfaces
.implements Ljavax2/sip/header/ExtensionHeader;
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = 0x79a63e78c9b0a324L


# instance fields
.field public callId:Ljava/lang/String;

.field public callIdentifier:Lgov2/nist/javax2/sip/header/CallIdentifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Replaces"

    .line 40
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 63
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

    .line 64
    .local v0, "retVal":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/extensions/Replaces;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :goto_0
    return-object v0

    .line 61
    .end local v0    # "retVal":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 65
    .restart local v0    # "retVal":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/extensions/Replaces;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/extensions/Replaces;->callId:Ljava/lang/String;

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
    .line 188
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
