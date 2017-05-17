.class public abstract Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "SecurityAgree.java"


# instance fields
.field private secMechanism:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>()V

    .line 81
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->parameters:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 355
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;

    .line 356
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/SecurityAgree;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 357
    :goto_0
    return-object v0

    .line 356
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    goto :goto_0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 345
    instance-of v2, p1, Lgov2/nist/javax2/sip/header/ims/SecurityAgreeHeader;

    if-nez v2, :cond_0

    .line 350
    return v1

    :cond_0
    move-object v0, p1

    .line 346
    check-cast v0, Lgov2/nist/javax2/sip/header/ims/SecurityAgreeHeader;

    .line 347
    .local v0, "o":Lgov2/nist/javax2/sip/header/ims/SecurityAgreeHeader;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->getSecurityMechanism()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lgov2/nist/javax2/sip/header/ims/SecurityAgreeHeader;->getSecurityMechanism()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->equalParameters(Ljavax2/sip/header/Parameters;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSecurityMechanism()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 85
    if-eqz p2, :cond_0

    .line 87
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgov2/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 88
    .local v0, "nv":Lgov2/nist/core/NameValue;
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0, p2}, Lgov2/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void

    .line 85
    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null value"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_1
    new-instance v0, Lgov2/nist/core/NameValue;

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    const-string/jumbo v1, "d-ver"

    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 99
    :cond_2
    invoke-super {p0, v0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->setParameter(Lgov2/nist/core/NameValue;)V

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v0}, Lgov2/nist/core/NameValue;->setQuotedValue()V

    const-string/jumbo v1, "\""

    .line 95
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : Unexpected DOUBLE_QUOTE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setSecurityMechanism(Ljava/lang/String;)V
    .locals 2
    .param p1, "secMech"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 123
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/ims/SecurityAgree;->secMechanism:Ljava/lang/String;

    .line 124
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "JAIN-SIP Exception, SecurityAgree, setSecurityMechanism(), the sec-mechanism parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
