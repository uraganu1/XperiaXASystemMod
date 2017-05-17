.class public Lgov2/nist/javax2/sip/header/ims/PathList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "PathList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ims/Path;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ims/Path;

    const-string/jumbo v1, "Path"

    .line 44
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PathList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PathList;-><init>()V

    .line 49
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/PathList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PathList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ims/PathList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
