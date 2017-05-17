.class public Lgov2/nist/javax2/sip/header/ProxyAuthenticate;
.super Lgov2/nist/javax2/sip/header/AuthenticationHeader;
.source "ProxyAuthenticate.java"

# interfaces
.implements Ljavax2/sip/header/ProxyAuthenticateHeader;


# static fields
.field private static final serialVersionUID:J = 0x35193379862f44acL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Proxy-Authenticate"

    .line 53
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
