.class public Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "PAccessNetworkInfo.java"

# interfaces
.implements Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfoHeader;
.implements Ljavax2/sip/header/ExtensionHeader;


# instance fields
.field private accessType:Ljava/lang/String;

.field private extendAccessInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string/jumbo v0, "P-Access-Network-Info"

    .line 60
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;

    .line 266
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;
    return-object v0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 237
    .local v0, "encoding":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->getAccessType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 239
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    :goto_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->getExtensionAccessInfo()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 248
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->getAccessType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 240
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 245
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->getExtensionAccessInfo()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 258
    instance-of v1, p1, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfoHeader;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccessType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->accessType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionAccessInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->extendAccessInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public setAccessType(Ljava/lang/String;)V
    .locals 2
    .param p1, "accessTypeVal"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;->accessType:Ljava/lang/String;

    .line 84
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception, P-Access-Network-Info, setAccessType(), the accessType parameter is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 253
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
