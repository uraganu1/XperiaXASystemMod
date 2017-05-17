.class public final Lgov2/nist/javax2/sip/address/AddressImpl;
.super Lgov2/nist/javax2/sip/address/NetObject;
.source "AddressImpl.java"

# interfaces
.implements Ljavax2/sip/address/Address;


# static fields
.field private static final serialVersionUID:J = 0x5f6385b6042972bL


# instance fields
.field protected address:Lgov2/nist/javax2/sip/address/GenericURI;

.field protected addressType:I

.field protected displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lgov2/nist/javax2/sip/address/NetObject;-><init>()V

    const/4 v0, 0x1

    .line 197
    iput v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->addressType:I

    .line 198
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 348
    invoke-super {p0}, Lgov2/nist/javax2/sip/address/NetObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/address/AddressImpl;

    .line 349
    .local v0, "retval":Lgov2/nist/javax2/sip/address/AddressImpl;
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    if-nez v1, :cond_0

    .line 350
    :goto_0
    return-object v0

    .line 349
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/address/GenericURI;

    iput-object v1, v0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    goto :goto_0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, 0x1

    .line 181
    iget v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->addressType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 187
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    if-nez v0, :cond_2

    .line 193
    :goto_1
    return-object p1

    .line 182
    :cond_0
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "\""

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 188
    :cond_2
    iget v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->addressType:I

    if-ne v0, v2, :cond_5

    :cond_3
    const-string/jumbo v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    :goto_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/GenericURI;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 190
    iget v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->addressType:I

    if-ne v0, v2, :cond_6

    :cond_4
    const-string/jumbo v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 188
    :cond_5
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-nez v0, :cond_3

    goto :goto_2

    .line 190
    :cond_6
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 262
    if-eq p0, p1, :cond_0

    .line 264
    instance-of v1, p1, Ljavax2/sip/address/Address;

    if-nez v1, :cond_1

    .line 270
    return v2

    .line 262
    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v0, p1

    .line 265
    check-cast v0, Ljavax2/sip/address/Address;

    .line 268
    .local v0, "o":Ljavax2/sip/address/Address;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/address/AddressImpl;->getURI()Ljavax2/sip/address/URI;

    move-result-object v1

    invoke-interface {v0}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAddressType()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->addressType:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    instance-of v1, v1, Lgov2/nist/javax2/sip/address/SipUri;

    if-eqz v1, :cond_0

    .line 156
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    check-cast v0, Lgov2/nist/javax2/sip/address/SipUri;

    .line 157
    .local v0, "uri":Lgov2/nist/javax2/sip/address/SipUri;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/SipUri;->getHostPort()Lgov2/nist/core/HostPort;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/core/HostPort;->getHost()Lgov2/nist/core/Host;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/core/Host;->getHostname()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 155
    .end local v0    # "uri":Lgov2/nist/javax2/sip/address/SipUri;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "address is not a SipUri"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHostPort()Lgov2/nist/core/HostPort;
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    instance-of v1, v1, Lgov2/nist/javax2/sip/address/SipUri;

    if-eqz v1, :cond_0

    .line 107
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    check-cast v0, Lgov2/nist/javax2/sip/address/SipUri;

    .line 108
    .local v0, "uri":Lgov2/nist/javax2/sip/address/SipUri;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/SipUri;->getHostPort()Lgov2/nist/core/HostPort;

    move-result-object v1

    return-object v1

    .line 106
    .end local v0    # "uri":Lgov2/nist/javax2/sip/address/SipUri;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "address is not a SipUri"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPort()I
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    instance-of v1, v1, Lgov2/nist/javax2/sip/address/SipUri;

    if-eqz v1, :cond_0

    .line 119
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    check-cast v0, Lgov2/nist/javax2/sip/address/SipUri;

    .line 120
    .local v0, "uri":Lgov2/nist/javax2/sip/address/SipUri;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/SipUri;->getHostPort()Lgov2/nist/core/HostPort;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/core/HostPort;->getPort()I

    move-result v1

    return v1

    .line 118
    .end local v0    # "uri":Lgov2/nist/javax2/sip/address/SipUri;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "address is not a SipUri"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getURI()Ljavax2/sip/address/URI;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/GenericURI;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAddess(Ljavax2/sip/address/URI;)V
    .locals 0
    .param p1, "address"    # Ljavax2/sip/address/URI;

    .prologue
    .line 244
    check-cast p1, Lgov2/nist/javax2/sip/address/GenericURI;

    .end local p1    # "address":Ljavax2/sip/address/URI;
    iput-object p1, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    .line 245
    return-void
.end method

.method public setAddressType(I)V
    .locals 0
    .param p1, "atype"    # I

    .prologue
    .line 216
    iput p1, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->addressType:I

    .line 217
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->displayName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 235
    iput v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->addressType:I

    .line 236
    return-void
.end method

.method public setPort(I)V
    .locals 3
    .param p1, "port"    # I

    .prologue
    .line 130
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    instance-of v1, v1, Lgov2/nist/javax2/sip/address/SipUri;

    if-eqz v1, :cond_0

    .line 131
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    check-cast v0, Lgov2/nist/javax2/sip/address/SipUri;

    .line 132
    .local v0, "uri":Lgov2/nist/javax2/sip/address/SipUri;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/SipUri;->setPort(I)V

    .line 133
    return-void

    .line 130
    .end local v0    # "uri":Lgov2/nist/javax2/sip/address/SipUri;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "address is not a SipUri"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setURI(Ljavax2/sip/address/URI;)V
    .locals 0
    .param p1, "address"    # Ljavax2/sip/address/URI;

    .prologue
    .line 325
    check-cast p1, Lgov2/nist/javax2/sip/address/GenericURI;

    .end local p1    # "address":Ljavax2/sip/address/URI;
    iput-object p1, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    .line 326
    return-void
.end method

.method public setWildCardFlag()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 342
    iput v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->addressType:I

    .line 343
    new-instance v0, Lgov2/nist/javax2/sip/address/SipUri;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/SipUri;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    .line 344
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/AddressImpl;->address:Lgov2/nist/javax2/sip/address/GenericURI;

    check-cast v0, Lgov2/nist/javax2/sip/address/SipUri;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/address/SipUri;->setUser(Ljava/lang/String;)V

    .line 345
    return-void
.end method
