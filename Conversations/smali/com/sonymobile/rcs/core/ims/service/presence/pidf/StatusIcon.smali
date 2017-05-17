.class public Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;
.super Ljava/lang/Object;
.source "StatusIcon.java"


# instance fields
.field private etag:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->url:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->etag:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->etag:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/pidf/StatusIcon;->url:Ljava/lang/String;

    .line 41
    return-void
.end method
