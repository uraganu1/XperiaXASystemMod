.class public Lgov2/nist/javax2/sip/header/AcceptEncodingList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "AcceptEncodingList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/AcceptEncoding;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/AcceptEncoding;

    const-string/jumbo v1, "Accept-Encoding"

    .line 54
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lgov2/nist/javax2/sip/header/AcceptEncodingList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/AcceptEncodingList;-><init>()V

    .line 46
    .local v0, "retval":Lgov2/nist/javax2/sip/header/AcceptEncodingList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/AcceptEncodingList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/AcceptEncodingList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 47
    return-object v0
.end method
