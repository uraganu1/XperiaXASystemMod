.class public Lgov2/nist/javax2/sip/header/ims/ServiceRouteList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "ServiceRouteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ims/ServiceRoute;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3b2fa7686c711c17L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ims/ServiceRoute;

    const-string/jumbo v1, "Service-Route"

    .line 46
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/ServiceRouteList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/ServiceRouteList;-><init>()V

    .line 51
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/ServiceRouteList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/ServiceRouteList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ims/ServiceRouteList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
