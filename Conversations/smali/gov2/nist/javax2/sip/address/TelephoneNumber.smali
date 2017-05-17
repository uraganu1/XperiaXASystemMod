.class public Lgov2/nist/javax2/sip/address/TelephoneNumber;
.super Lgov2/nist/javax2/sip/address/NetObject;
.source "TelephoneNumber.java"


# instance fields
.field protected isglobal:Z

.field protected parameters:Lgov2/nist/core/NameValueList;

.field protected phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lgov2/nist/javax2/sip/address/NetObject;-><init>()V

    .line 66
    new-instance v0, Lgov2/nist/core/NameValueList;

    invoke-direct {v0}, Lgov2/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->parameters:Lgov2/nist/core/NameValueList;

    .line 67
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lgov2/nist/javax2/sip/address/NetObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/address/TelephoneNumber;

    .line 263
    .local v0, "retval":Lgov2/nist/javax2/sip/address/TelephoneNumber;
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->parameters:Lgov2/nist/core/NameValueList;

    if-nez v1, :cond_0

    .line 264
    :goto_0
    return-object v0

    .line 263
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/core/NameValueList;

    iput-object v1, v0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->parameters:Lgov2/nist/core/NameValueList;

    goto :goto_0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 218
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->isglobal:Z

    if-nez v0, :cond_0

    .line 219
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :goto_1
    return-object p1

    .line 218
    :cond_0
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ";"

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov2/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 237
    instance-of v1, v0, Lgov2/nist/core/GenericObject;

    if-nez v1, :cond_1

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 236
    :cond_0
    return-object v2

    .line 238
    :cond_1
    check-cast v0, Lgov2/nist/core/GenericObject;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Lgov2/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 249
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 254
    return-void
.end method

.method public setGlobal(Z)V
    .locals 0
    .param p1, "g"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->isglobal:Z

    .line 172
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Lgov2/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    .local v0, "nv":Lgov2/nist/core/NameValue;
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov2/nist/core/NameValueList;->set(Lgov2/nist/core/NameValue;)V

    .line 259
    return-void
.end method

.method public setParameters(Lgov2/nist/core/NameValueList;)V
    .locals 0
    .param p1, "p"    # Lgov2/nist/core/NameValueList;

    .prologue
    .line 162
    iput-object p1, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->parameters:Lgov2/nist/core/NameValueList;

    .line 163
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lgov2/nist/javax2/sip/address/TelephoneNumber;->phoneNumber:Ljava/lang/String;

    .line 211
    return-void
.end method
