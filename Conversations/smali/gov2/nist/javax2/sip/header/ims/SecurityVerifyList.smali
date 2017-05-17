.class public Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "SecurityVerifyList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ims/SecurityVerify;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7d0e45cc8c51435L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ims/SecurityVerify;

    const-string/jumbo v1, "Security-Verify"

    .line 50
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;-><init>()V

    .line 55
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
