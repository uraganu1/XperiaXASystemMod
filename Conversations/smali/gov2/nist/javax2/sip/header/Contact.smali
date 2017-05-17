.class public final Lgov2/nist/javax2/sip/header/Contact;
.super Lgov2/nist/javax2/sip/header/AddressParametersHeader;
.source "Contact.java"

# interfaces
.implements Ljavax2/sip/header/ContactHeader;


# static fields
.field private static final serialVersionUID:J = 0x1746f2cc9301c8b0L


# instance fields
.field private contactList:Lgov2/nist/javax2/sip/header/ContactList;

.field protected wildCardFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Contact"

    .line 83
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/Contact;

    .line 243
    .local v0, "retval":Lgov2/nist/javax2/sip/header/Contact;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Contact;->contactList:Lgov2/nist/javax2/sip/header/ContactList;

    if-nez v1, :cond_0

    .line 244
    :goto_0
    return-object v0

    .line 243
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Contact;->contactList:Lgov2/nist/javax2/sip/header/ContactList;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/ContactList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/ContactList;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/Contact;->contactList:Lgov2/nist/javax2/sip/header/ContactList;

    goto :goto_0
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Contact;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 110
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/header/Contact;->wildCardFlag:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Contact;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 118
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Contact;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 120
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Contact;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    :goto_1
    return-object p1

    .line 111
    :cond_0
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 115
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Contact;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ";"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Contact;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 266
    instance-of v1, p1, Ljavax2/sip/header/ContactHeader;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAddress()Ljavax2/sip/address/Address;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Contact;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    return-object v0
.end method

.method public getExpires()I
    .locals 1

    .prologue
    const-string/jumbo v0, "expires"

    .line 174
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/Contact;->getParameterAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAddress(Ljavax2/sip/address/Address;)V
    .locals 2
    .param p1, "address"    # Ljavax2/sip/address/Address;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    check-cast p1, Lgov2/nist/javax2/sip/address/AddressImpl;

    .end local p1    # "address":Ljavax2/sip/address/Address;
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/Contact;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/header/Contact;->wildCardFlag:Z

    .line 227
    return-void

    .line 224
    .restart local p1    # "address":Ljavax2/sip/address/Address;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null address"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 90
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Contact;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov2/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v0

    .line 91
    .local v0, "nv":Lgov2/nist/core/NameValue;
    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lgov2/nist/core/NameValue;

    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    invoke-direct {v0, p1, p2}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v0    # "nv":Lgov2/nist/core/NameValue;
    const-string/jumbo v1, "methods"

    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/Contact;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov2/nist/core/NameValueList;->set(Lgov2/nist/core/NameValue;)V

    .line 98
    :goto_1
    return-void

    .line 92
    :cond_0
    invoke-virtual {v0, p2}, Lgov2/nist/core/NameValue;->setValueAsObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v0}, Lgov2/nist/core/NameValue;->setQuotedValue()V

    goto :goto_0
.end method

.method public setWildCardFlag(Z)V
    .locals 1
    .param p1, "w"    # Z

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/header/Contact;->wildCardFlag:Z

    .line 213
    new-instance v0, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Contact;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    .line 214
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Contact;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;->setWildCardFlag()V

    .line 215
    return-void
.end method
