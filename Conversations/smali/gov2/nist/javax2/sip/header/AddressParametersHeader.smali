.class public abstract Lgov2/nist/javax2/sip/header/AddressParametersHeader;
.super Lgov2/nist/javax2/sip/header/ParametersHeader;
.source "AddressParametersHeader.java"

# interfaces
.implements Ljavax2/sip/header/Parameters;


# instance fields
.field protected address:Lgov2/nist/javax2/sip/address/AddressImpl;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lgov2/nist/javax2/sip/header/ParametersHeader;-><init>(Ljava/lang/String;Z)V

    .line 79
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/ParametersHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/AddressParametersHeader;

    .line 87
    .local v0, "retval":Lgov2/nist/javax2/sip/header/AddressParametersHeader;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    if-nez v1, :cond_0

    .line 88
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/address/AddressImpl;

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-eq p0, p1, :cond_1

    .line 99
    instance-of v3, p1, Ljavax2/sip/header/HeaderAddress;

    if-nez v3, :cond_2

    .line 103
    :cond_0
    return v2

    .line 97
    :cond_1
    return v1

    .line 99
    :cond_2
    instance-of v3, p1, Ljavax2/sip/header/Parameters;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 100
    check-cast v0, Ljavax2/sip/header/HeaderAddress;

    .line 101
    .local v0, "o":Ljavax2/sip/header/HeaderAddress;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v3

    invoke-interface {v0}, Ljavax2/sip/header/HeaderAddress;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax2/sip/address/Address;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .end local v0    # "o":Ljavax2/sip/header/HeaderAddress;
    :goto_0
    move v1, v2

    :cond_3
    return v1

    .restart local v0    # "o":Ljavax2/sip/header/HeaderAddress;
    :cond_4
    check-cast v0, Ljavax2/sip/header/Parameters;

    .end local v0    # "o":Ljavax2/sip/header/HeaderAddress;
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->equalParameters(Ljavax2/sip/header/Parameters;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0
.end method

.method public getAddress()Ljavax2/sip/address/Address;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    return-object v0
.end method

.method public setAddress(Ljavax2/sip/address/Address;)V
    .locals 0
    .param p1, "address"    # Ljavax2/sip/address/Address;

    .prologue
    .line 60
    check-cast p1, Lgov2/nist/javax2/sip/address/AddressImpl;

    .end local p1    # "address":Ljavax2/sip/address/Address;
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/AddressParametersHeader;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    .line 61
    return-void
.end method
