.class public Lgov2/nist/javax2/sip/header/ims/PrivacyList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "PrivacyList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ims/Privacy;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x18f656c60d36e885L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ims/Privacy;

    const-string/jumbo v1, "Privacy"

    .line 48
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lgov2/nist/javax2/sip/header/ims/PrivacyList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ims/PrivacyList;-><init>()V

    .line 53
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ims/PrivacyList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ims/PrivacyList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ims/PrivacyList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
