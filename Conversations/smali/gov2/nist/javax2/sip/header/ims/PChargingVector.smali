.class public Lgov2/nist/javax2/sip/header/ims/PChargingVector;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "PChargingVector.java"

# interfaces
.implements Ljavax2/sip/header/ExtensionHeader;
.implements Ljavax2/sip/header/Header;
.implements Ljavax2/sip/header/Parameters;
.implements Lgov2/nist/javax2/sip/header/SIPHeaderNames;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "P-Charging-Vector"

    .line 53
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "encoding":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "icid-value"

    .line 69
    invoke-virtual {p0, v2}, Lgov2/nist/javax2/sip/header/ims/PChargingVector;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v1

    .line 70
    .local v1, "nv":Lgov2/nist/core/NameValue;
    invoke-virtual {v1, v0}, Lgov2/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ims/PChargingVector;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v3, "icid-generated-at"

    invoke-virtual {v2, v3}, Lgov2/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    :goto_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ims/PChargingVector;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v3, "term-ioi"

    invoke-virtual {v2, v3}, Lgov2/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    :goto_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ims/PChargingVector;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v3, "orig-ioi"

    invoke-virtual {v2, v3}, Lgov2/nist/core/NameValueList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v2, ";"

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "icid-generated-at"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PChargingVector;->getICIDGeneratedAt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ";"

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "term-ioi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PChargingVector;->getTerminatingIOI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, ";"

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "orig-ioi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PChargingVector;->getOriginatingIOI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getICIDGeneratedAt()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "icid-generated-at"

    .line 130
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginatingIOI()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "orig-ioi"

    .line 161
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTerminatingIOI()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "term-ioi"

    .line 191
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/ims/PChargingVector;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    .line 213
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
