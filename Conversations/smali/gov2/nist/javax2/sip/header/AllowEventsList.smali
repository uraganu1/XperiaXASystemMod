.class public Lgov2/nist/javax2/sip/header/AllowEventsList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "AllowEventsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/AllowEvents;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x980c47f8546c200L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/AllowEvents;

    const-string/jumbo v1, "Allow-Events"

    .line 60
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lgov2/nist/javax2/sip/header/AllowEventsList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AllowEventsList;-><init>()V

    .line 52
    .local v0, "retval":Lgov2/nist/javax2/sip/header/AllowEventsList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AllowEventsList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/AllowEventsList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 53
    return-object v0
.end method
