.class public Lgov2/nist/javax2/sip/header/AllowList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "AllowList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/Allow;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4139070aee0a9836L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/Allow;

    const-string/jumbo v1, "Allow"

    .line 61
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lgov2/nist/javax2/sip/header/AllowList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AllowList;-><init>()V

    .line 53
    .local v0, "retval":Lgov2/nist/javax2/sip/header/AllowList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AllowList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/AllowList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 54
    return-object v0
.end method
