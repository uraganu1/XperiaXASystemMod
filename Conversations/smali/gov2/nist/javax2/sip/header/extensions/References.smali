.class public Lgov2/nist/javax2/sip/header/extensions/References;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "References.java"

# interfaces
.implements Ljavax2/sip/header/ExtensionHeader;
.implements Ljavax2/sip/header/Parameters;
.implements Ljavax2/sip/header/Header;


# static fields
.field private static final serialVersionUID:J = 0x7679616b0985b236L


# instance fields
.field private callId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "References"

    .line 18
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/extensions/References;->callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/extensions/References;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "References"

    .line 56
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;->removeParameter(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/extensions/References;->callId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lgov2/nist/javax2/sip/header/ParametersHeader;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
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
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
