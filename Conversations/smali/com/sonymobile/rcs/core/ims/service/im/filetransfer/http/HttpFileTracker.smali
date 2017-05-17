.class public Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;
.super Ljava/lang/Object;
.source "HttpFileTracker.java"


# static fields
.field public static mTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;->mTimers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "ftSessionId"    # Ljava/lang/String;
    .param p2, "validityTime"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 28
    .local v0, "t":Ljava/util/Timer;
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;->scheduleTimer(Ljava/util/Timer;JLjava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;->addEntry(Ljava/lang/String;Ljava/util/Timer;)V

    .line 30
    return-void
.end method

.method public static getTimer(Ljava/lang/String;)Ljava/util/Timer;
    .locals 2
    .param p0, "ftSessionId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 51
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;->mTimers:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 54
    return-object v1

    .line 52
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;->mTimers:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;Ljava/util/Timer;)V
    .locals 1
    .param p1, "ftSessionId"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/util/Timer;

    .prologue
    .line 39
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;->mTimers:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;->mTimers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public scheduleTimer(Ljava/util/Timer;JLjava/lang/String;)V
    .locals 2
    .param p1, "t"    # Ljava/util/Timer;
    .param p2, "validityTime"    # J
    .param p4, "ftSessionId"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker$1;

    invoke-direct {v0, p0, p4}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker$1;-><init>(Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/HttpFileTracker;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 75
    return-void
.end method
