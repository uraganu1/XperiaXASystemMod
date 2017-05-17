.class public Lgov2/nist/javax2/sip/header/WWWAuthenticateList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "WWWAuthenticateList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/WWWAuthenticate;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60da0aa6d8ffdfa2L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/WWWAuthenticate;

    const-string/jumbo v1, "WWW-Authenticate"

    .line 53
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lgov2/nist/javax2/sip/header/WWWAuthenticateList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/WWWAuthenticateList;-><init>()V

    .line 46
    .local v0, "retval":Lgov2/nist/javax2/sip/header/WWWAuthenticateList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/WWWAuthenticateList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/WWWAuthenticateList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
