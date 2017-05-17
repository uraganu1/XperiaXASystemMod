.class public Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# instance fields
.field private etag:Ljava/lang/String;

.field private lastModified:J

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;->lastModified:J

    .line 29
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;->uri:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;->etag:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setLastModified(J)V
    .locals 1
    .param p1, "lastModified"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;->lastModified:J

    .line 50
    return-void
.end method
