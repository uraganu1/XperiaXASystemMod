.class public final Lgov2/nist/javax2/sip/header/RequireList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "RequireList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/Require;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x186f02d4bcad820dL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/Require;

    const-string/jumbo v1, "Require"

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
    new-instance v0, Lgov2/nist/javax2/sip/header/RequireList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/RequireList;-><init>()V

    .line 50
    .local v0, "retval":Lgov2/nist/javax2/sip/header/RequireList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/RequireList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/RequireList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 51
    return-object v0
.end method
