.class public Lgov2/nist/javax2/sip/address/TelURLImpl;
.super Lgov2/nist/javax2/sip/address/GenericURI;
.source "TelURLImpl.java"

# interfaces
.implements Ljavax2/sip/address/URI;
.implements Ljavax2/sip/header/Parameters;


# static fields
.field private static final serialVersionUID:J = 0x5182f5fa8162d832L


# instance fields
.field protected telephoneNumber:Lgov2/nist/javax2/sip/address/TelephoneNumber;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lgov2/nist/javax2/sip/address/GenericURI;-><init>()V

    const-string/jumbo v0, "tel"

    .line 49
    iput-object v0, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lgov2/nist/javax2/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/address/TelURLImpl;

    .line 188
    .local v0, "retval":Lgov2/nist/javax2/sip/address/TelURLImpl;
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->telephoneNumber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    if-nez v1, :cond_0

    .line 190
    :goto_0
    return-object v0

    .line 189
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->telephoneNumber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/address/TelephoneNumber;

    iput-object v1, v0, Lgov2/nist/javax2/sip/address/TelURLImpl;->telephoneNumber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    goto :goto_0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/address/TelURLImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 176
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 177
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->telephoneNumber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 178
    return-object p1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->telephoneNumber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 202
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->telephoneNumber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public isSipURI()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->telephoneNumber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->removeParameter(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public setParameter(Lgov2/nist/core/NameValue;)V
    .locals 0
    .param p1, "nameValue"    # Lgov2/nist/core/NameValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 239
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->telephoneNumber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    invoke-virtual {v0, p1, p2}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public setTelephoneNumber(Lgov2/nist/javax2/sip/address/TelephoneNumber;)V
    .locals 0
    .param p1, "telephoneNumber"    # Lgov2/nist/javax2/sip/address/TelephoneNumber;

    .prologue
    .line 59
    iput-object p1, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->telephoneNumber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/address/TelURLImpl;->telephoneNumber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
