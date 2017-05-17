.class public final Lgov2/nist/javax2/sip/header/ContentEncodingList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "ContentEncodingList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ContentEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x663681100ea67232L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ContentEncoding;

    const-string/jumbo v1, "Content-Encoding"

    .line 53
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lgov2/nist/javax2/sip/header/ContentEncodingList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/ContentEncodingList;-><init>()V

    .line 45
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ContentEncodingList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ContentEncodingList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ContentEncodingList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 46
    return-object v0
.end method
