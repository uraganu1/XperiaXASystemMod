.class public Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "PAssociatedURIList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3dd0dfc13f8dd6a3L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;

    const-string/jumbo v1, "P-Associated-URI"

    .line 52
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;-><init>()V

    .line 57
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
