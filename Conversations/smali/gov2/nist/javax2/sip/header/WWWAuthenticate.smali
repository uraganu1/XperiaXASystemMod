.class public Lgov2/nist/javax2/sip/header/WWWAuthenticate;
.super Lgov2/nist/javax2/sip/header/AuthenticationHeader;
.source "WWWAuthenticate.java"

# interfaces
.implements Ljavax2/sip/header/WWWAuthenticateHeader;


# static fields
.field private static final serialVersionUID:J = 0x199e8450a455c1eL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "WWW-Authenticate"

    .line 56
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method
