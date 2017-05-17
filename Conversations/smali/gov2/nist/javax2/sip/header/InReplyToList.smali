.class public final Lgov2/nist/javax2/sip/header/InReplyToList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "InReplyToList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/InReplyTo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6eee9c88103b0ac5L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/InReplyTo;

    const-string/jumbo v1, "In-Reply-To"

    .line 55
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lgov2/nist/javax2/sip/header/InReplyToList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/InReplyToList;-><init>()V

    .line 47
    .local v0, "retval":Lgov2/nist/javax2/sip/header/InReplyToList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/InReplyToList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/InReplyToList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 48
    return-object v0
.end method
