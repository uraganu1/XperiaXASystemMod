.class public Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "PVisitedNetworkID.java"

# interfaces
.implements Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDHeader;
.implements Ljavax2/sip/header/ExtensionHeader;
.implements Lgov2/nist/javax2/sip/header/SIPHeaderNames;


# instance fields
.field private isQuoted:Z

.field private networkID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "P-Visited-Network-ID"

    .line 58
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;

    .line 146
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 147
    :goto_0
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    iput-boolean v1, v0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    .line 148
    return-object v0

    .line 146
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    goto :goto_0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 82
    :cond_0
    iget-boolean v1, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 88
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 136
    instance-of v2, p1, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDHeader;

    if-nez v2, :cond_0

    .line 141
    return v1

    :cond_0
    move-object v0, p1

    .line 137
    check-cast v0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDHeader;

    .line 138
    .local v0, "o":Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDHeader;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDHeader;->getVisitedNetworkID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->equalParameters(Ljavax2/sip/header/Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getVisitedNetworkID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    return-object v0
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
    .line 131
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setVisitedNetworkID(Lgov2/nist/core/Token;)V
    .locals 2
    .param p1, "networkID"    # Lgov2/nist/core/Token;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Lgov2/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    .line 121
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, " the networkID parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVisitedNetworkID(Ljava/lang/String;)V
    .locals 2
    .param p1, "networkID"    # Ljava/lang/String;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->networkID:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;->isQuoted:Z

    .line 107
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, " the networkID parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
