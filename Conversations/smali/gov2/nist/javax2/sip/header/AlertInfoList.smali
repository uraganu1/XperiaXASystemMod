.class public Lgov2/nist/javax2/sip/header/AlertInfoList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "AlertInfoList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/AlertInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/AlertInfo;

    const-string/jumbo v1, "Alert-Info"

    .line 51
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lgov2/nist/javax2/sip/header/AlertInfoList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AlertInfoList;-><init>()V

    .line 43
    .local v0, "retval":Lgov2/nist/javax2/sip/header/AlertInfoList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AlertInfoList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/AlertInfoList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 44
    return-object v0
.end method
