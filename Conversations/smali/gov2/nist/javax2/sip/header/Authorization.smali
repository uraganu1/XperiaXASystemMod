.class public Lgov2/nist/javax2/sip/header/Authorization;
.super Lgov2/nist/javax2/sip/header/AuthenticationHeader;
.source "Authorization.java"

# interfaces
.implements Ljavax2/sip/header/AuthorizationHeader;


# static fields
.field private static final serialVersionUID:J = -0x7b7b3af721670c04L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Authorization"

    .line 55
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
