.class public Lgov2/nist/javax2/sip/header/ErrorInfoList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "ErrorInfoList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ErrorInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ErrorInfo;

    const-string/jumbo v1, "Error-Info"

    .line 70
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 71
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lgov2/nist/javax2/sip/header/ErrorInfoList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ErrorInfoList;-><init>()V

    .line 62
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ErrorInfoList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ErrorInfoList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ErrorInfoList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 63
    return-object v0
.end method
