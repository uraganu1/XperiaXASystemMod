.class public abstract Lgov2/nist/javax2/sip/header/ParametersHeader;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "ParametersHeader.java"

# interfaces
.implements Ljavax2/sip/header/Parameters;
.implements Ljava/io/Serializable;


# instance fields
.field protected duplicates:Lgov2/nist/core/DuplicateNameValueList;

.field protected parameters:Lgov2/nist/core/NameValueList;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>()V

    .line 56
    new-instance v0, Lgov2/nist/core/NameValueList;

    invoke-direct {v0}, Lgov2/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    .line 57
    new-instance v0, Lgov2/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov2/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->duplicates:Lgov2/nist/core/DuplicateNameValueList;

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hdrName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lgov2/nist/core/NameValueList;

    invoke-direct {v0}, Lgov2/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    .line 63
    new-instance v0, Lgov2/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov2/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->duplicates:Lgov2/nist/core/DuplicateNameValueList;

    .line 64
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "hdrName"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lgov2/nist/core/NameValueList;

    invoke-direct {v0, p2}, Lgov2/nist/core/NameValueList;-><init>(Z)V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    .line 69
    new-instance v0, Lgov2/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov2/nist/core/DuplicateNameValueList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->duplicates:Lgov2/nist/core/DuplicateNameValueList;

    .line 70
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ParametersHeader;

    .line 412
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ParametersHeader;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    if-nez v1, :cond_0

    .line 413
    :goto_0
    return-object v0

    .line 412
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/core/NameValueList;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    goto :goto_0
.end method

.method protected abstract encodeBody()Ljava/lang/String;
.end method

.method protected final equalParameters(Ljavax2/sip/header/Parameters;)Z
    .locals 8
    .param p1, "other"    # Ljavax2/sip/header/Parameters;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 523
    if-eq p0, p1, :cond_2

    .line 525
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 540
    invoke-interface {p1}, Ljavax2/sip/header/Parameters;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 560
    return v6

    .line 523
    .end local v0    # "i":Ljava/util/Iterator;
    :cond_2
    return v6

    .line 526
    .restart local v0    # "i":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 528
    .local v3, "pname":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "p1":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljavax2/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, "p2":Ljava/lang/String;
    if-eqz v1, :cond_4

    move v7, v5

    :goto_0
    if-eqz v2, :cond_5

    move v4, v5

    :goto_1
    xor-int/2addr v4, v7

    if-nez v4, :cond_6

    .line 536
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return v5

    :cond_4
    move v7, v6

    .line 534
    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_1

    .line 535
    :cond_6
    return v5

    .line 541
    .end local v1    # "p1":Ljava/lang/String;
    .end local v2    # "p2":Ljava/lang/String;
    .end local v3    # "pname":Ljava/lang/String;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 543
    .restart local v3    # "pname":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljavax2/sip/header/Parameters;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .restart local v1    # "p1":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .restart local v2    # "p2":Ljava/lang/String;
    if-eqz v1, :cond_8

    move v7, v5

    :goto_2
    if-eqz v2, :cond_9

    move v4, v5

    :goto_3
    xor-int/2addr v4, v7

    if-nez v4, :cond_a

    .line 557
    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    return v5

    :cond_8
    move v7, v6

    .line 555
    goto :goto_2

    :cond_9
    move v4, v6

    goto :goto_3

    .line 556
    :cond_a
    return v5
.end method

.method public getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParameterAsInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 284
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 295
    return v2

    .line 286
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 289
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;->getParameterValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 287
    :cond_1
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 292
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v2
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lgov2/nist/core/NameValueList;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    return-object v0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->hasNameValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasParameters()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 126
    return-void
.end method

.method public removeParameters()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lgov2/nist/core/NameValueList;

    invoke-direct {v0}, Lgov2/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    .line 248
    return-void
.end method

.method public setMultiParameter(Lgov2/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov2/nist/core/NameValue;

    .prologue
    .line 441
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->duplicates:Lgov2/nist/core/DuplicateNameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/DuplicateNameValueList;->set(Lgov2/nist/core/NameValue;)V

    .line 442
    return-void
.end method

.method public setParameter(Lgov2/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov2/nist/core/NameValue;

    .prologue
    .line 265
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->set(Lgov2/nist/core/NameValue;)V

    .line 266
    return-void
.end method

.method protected setParameter(Ljava/lang/String;F)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 209
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 210
    .local v1, "val":Ljava/lang/Float;
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2, p1}, Lgov2/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 211
    .local v0, "nv":Lgov2/nist/core/NameValue;
    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lgov2/nist/core/NameValue;

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    invoke-direct {v0, p1, v1}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v2, v0}, Lgov2/nist/core/NameValueList;->set(Lgov2/nist/core/NameValue;)V

    .line 217
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 180
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 181
    .local v0, "val":Ljava/lang/Integer;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, p1, v0}, Lgov2/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov2/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 140
    .local v0, "nv":Lgov2/nist/core/NameValue;
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lgov2/nist/core/NameValue;

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov2/nist/core/NameValueList;->set(Lgov2/nist/core/NameValue;)V

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {v0, p2}, Lgov2/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setParameters(Lgov2/nist/core/NameValueList;)V
    .locals 0
    .param p1, "parameters"    # Lgov2/nist/core/NameValueList;

    .prologue
    .line 274
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/ParametersHeader;->parameters:Lgov2/nist/core/NameValueList;

    .line 275
    return-void
.end method
