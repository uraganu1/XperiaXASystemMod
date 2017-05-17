.class public Lgov2/nist/javax2/sip/DefaultAddressResolver;
.super Ljava/lang/Object;
.source "DefaultAddressResolver.java"

# interfaces
.implements Lgov2/nist/core/net/AddressResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public resolveAddress(Ljavax2/sip/address/Hop;)Ljavax2/sip/address/Hop;
    .locals 4
    .param p1, "inputAddress"    # Ljavax2/sip/address/Hop;

    .prologue
    .line 66
    invoke-interface {p1}, Ljavax2/sip/address/Hop;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 69
    new-instance v0, Lgov2/nist/javax2/sip/stack/HopImpl;

    invoke-interface {p1}, Ljavax2/sip/address/Hop;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax2/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov2/nist/javax2/sip/stack/MessageProcessor;->getDefaultPort(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1}, Ljavax2/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgov2/nist/javax2/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 67
    :cond_0
    return-object p1
.end method
