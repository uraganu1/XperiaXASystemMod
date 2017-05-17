.class public Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "PAssertedIdentityList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x59b8d5e538f75b6eL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;

    const-string/jumbo v1, "P-Asserted-Identity"

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
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;-><init>()V

    .line 57
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
