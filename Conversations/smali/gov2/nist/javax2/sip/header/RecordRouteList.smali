.class public Lgov2/nist/javax2/sip/header/RecordRouteList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "RecordRouteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/RecordRoute;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x17f03837c2e0c363L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/RecordRoute;

    const-string/jumbo v1, "Record-Route"

    .line 54
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lgov2/nist/javax2/sip/header/RecordRouteList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/RecordRouteList;-><init>()V

    .line 46
    .local v0, "retval":Lgov2/nist/javax2/sip/header/RecordRouteList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/RecordRouteList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/RecordRouteList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 47
    return-object v0
.end method
