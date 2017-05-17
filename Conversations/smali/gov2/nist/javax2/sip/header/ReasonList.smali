.class public final Lgov2/nist/javax2/sip/header/ReasonList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "ReasonList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x67873560c2c2475eL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/Reason;

    const-string/jumbo v1, "Reason"

    .line 56
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lgov2/nist/javax2/sip/header/ReasonList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ReasonList;-><init>()V

    .line 48
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ReasonList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ReasonList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ReasonList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 49
    return-object v0
.end method
