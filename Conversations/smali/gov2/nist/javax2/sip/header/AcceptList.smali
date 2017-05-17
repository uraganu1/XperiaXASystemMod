.class public Lgov2/nist/javax2/sip/header/AcceptList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "AcceptList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/Accept;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18fdc630b7aed5dfL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/Accept;

    const-string/jumbo v1, "Accept"

    .line 58
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lgov2/nist/javax2/sip/header/AcceptList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AcceptList;-><init>()V

    .line 50
    .local v0, "retval":Lgov2/nist/javax2/sip/header/AcceptList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AcceptList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/AcceptList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 51
    return-object v0
.end method
