.class public final Lgov2/nist/javax2/sip/header/ViaList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "ViaList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/Via;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x361e71bad25641f9L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/Via;

    const-string/jumbo v1, "Via"

    .line 55
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lgov2/nist/javax2/sip/header/ViaList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ViaList;-><init>()V

    .line 48
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ViaList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ViaList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ViaList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
