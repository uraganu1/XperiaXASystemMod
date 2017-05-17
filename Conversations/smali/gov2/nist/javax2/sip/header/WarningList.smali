.class public Lgov2/nist/javax2/sip/header/WarningList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "WarningList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/Warning;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x13c080768c5c44dfL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/Warning;

    const-string/jumbo v1, "Warning"

    .line 56
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lgov2/nist/javax2/sip/header/WarningList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/WarningList;-><init>()V

    .line 49
    .local v0, "retval":Lgov2/nist/javax2/sip/header/WarningList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/WarningList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/WarningList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
