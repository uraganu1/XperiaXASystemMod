.class public Lgov2/nist/javax2/sip/header/RecordRoute;
.super Lgov2/nist/javax2/sip/header/AddressParametersHeader;
.source "RecordRoute.java"

# interfaces
.implements Ljavax2/sip/header/RecordRouteHeader;


# static fields
.field private static final serialVersionUID:J = 0x2123f698f16297e5L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Record-Route"

    .line 63
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AddressParametersHeader;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/RecordRoute;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v1, 0x2

    .line 77
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RecordRoute;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 80
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RecordRoute;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/AddressImpl;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 81
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RecordRoute;->address:Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;->getAddressType()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 85
    :goto_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RecordRoute;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    :goto_2
    return-object p1

    :cond_0
    const-string/jumbo v0, "<"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ">"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ";"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/RecordRoute;->parameters:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
