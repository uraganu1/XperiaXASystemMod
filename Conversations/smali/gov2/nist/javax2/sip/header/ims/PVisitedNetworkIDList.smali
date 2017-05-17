.class public Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "PVisitedNetworkIDList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3c52770d868f0e9eL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;

    const-string/jumbo v1, "P-Visited-Network-ID"

    .line 49
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDList;-><init>()V

    .line 54
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
