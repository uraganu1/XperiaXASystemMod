.class public Lgov2/nist/javax2/sip/header/UnsupportedList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "UnsupportedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/Unsupported;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x383dc391811b9ae5L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/Unsupported;

    const-string/jumbo v1, "Unsupported"

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
    new-instance v0, Lgov2/nist/javax2/sip/header/UnsupportedList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/UnsupportedList;-><init>()V

    .line 55
    .local v0, "retval":Lgov2/nist/javax2/sip/header/UnsupportedList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/UnsupportedList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/UnsupportedList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
