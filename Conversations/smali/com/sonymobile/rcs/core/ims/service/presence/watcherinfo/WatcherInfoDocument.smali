.class public Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;
.super Ljava/lang/Object;
.source "WatcherInfoDocument.java"


# instance fields
.field private packageId:Ljava/lang/String;

.field private resource:Ljava/lang/String;

.field private watcherList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "packageId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;->watcherList:Ljava/util/Vector;

    .line 36
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;->resource:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;->packageId:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public addWatcher(Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;)V
    .locals 1
    .param p1, "watcher"    # Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;->watcherList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public getWatcherList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/Watcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/watcherinfo/WatcherInfoDocument;->watcherList:Ljava/util/Vector;

    return-object v0
.end method
