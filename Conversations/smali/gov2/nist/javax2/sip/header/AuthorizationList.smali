.class public Lgov2/nist/javax2/sip/header/AuthorizationList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "AuthorizationList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/Authorization;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/Authorization;

    const-string/jumbo v1, "Authorization"

    .line 56
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lgov2/nist/javax2/sip/header/AuthorizationList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AuthorizationList;-><init>()V

    .line 48
    .local v0, "retval":Lgov2/nist/javax2/sip/header/AuthorizationList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AuthorizationList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/AuthorizationList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 49
    return-object v0
.end method
