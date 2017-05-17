.class public Lgov2/nist/javax2/sip/header/ProxyRequireList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "ProxyRequireList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ProxyRequire;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e63f7a5e16e139aL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ProxyRequire;

    const-string/jumbo v1, "Proxy-Require"

    .line 57
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lgov2/nist/javax2/sip/header/ProxyRequireList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ProxyRequireList;-><init>()V

    .line 49
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ProxyRequireList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ProxyRequireList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ProxyRequireList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 50
    return-object v0
.end method
