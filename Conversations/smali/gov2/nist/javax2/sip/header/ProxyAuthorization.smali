.class public Lgov2/nist/javax2/sip/header/ProxyAuthorization;
.super Lgov2/nist/javax2/sip/header/AuthenticationHeader;
.source "ProxyAuthorization.java"

# interfaces
.implements Ljavax2/sip/header/AuthorizationHeader;


# static fields
.field private static final serialVersionUID:J = -0x58786e9fcf4e2b3aL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Proxy-Authorization"

    .line 52
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
