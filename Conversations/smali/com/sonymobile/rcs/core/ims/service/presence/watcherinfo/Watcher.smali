.class public Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;
.super Ljava/lang/Object;
.source "Watcher.java"


# instance fields
.field private displayName:Ljava/lang/String;

.field private event:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->id:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->displayName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->event:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->status:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;->uri:Ljava/lang/String;

    .line 67
    return-void
.end method
