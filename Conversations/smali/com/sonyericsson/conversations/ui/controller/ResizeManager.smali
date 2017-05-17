.class public Lcom/sonyericsson/conversations/ui/controller/ResizeManager;
.super Ljava/lang/Object;
.source "ResizeManager.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$ResizeTaskCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;",
            ">;"
        }
    .end annotation
.end field

.field private mResizeCompletionListener:Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

.field private mResizeListener:Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

.field private mTaskIsRunning:Z


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mResizeCompletionListener:Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mTaskIsRunning:Z

    .line 30
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ResizeManager;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mResizeListener:Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mQueue:Ljava/util/Queue;

    .line 92
    return-void
.end method

.method private executeNextTask()V
    .locals 3

    .prologue
    .line 128
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mTaskIsRunning:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    .line 130
    .local v0, "mediaResizeTask":Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mTaskIsRunning:Z

    .line 131
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onResizeTaskCompleted()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mTaskIsRunning:Z

    .line 138
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->executeNextTask()V

    .line 136
    return-void
.end method

.method public registerMediaResizeProgressListener(Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public removeMediaResizeCompletionListener(Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mResizeCompletionListener:Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    if-ne v0, p1, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mResizeCompletionListener:Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    .line 101
    :cond_0
    return-void
.end method

.method public resizeMediaFromJoynMessage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .param p3, "message"    # Lcom/sonyericsson/conversations/model/JoynMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p4, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;

    .line 121
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mResizeListener:Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p0

    .line 120
    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;Ljava/util/List;Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask$ResizeTaskCompletedListener;)V

    .line 123
    .local v0, "mediaResizeTask":Lcom/sonyericsson/conversations/ui/controller/MediaResizeTask;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->executeNextTask()V

    .line 119
    return-void
.end method

.method public setMediaResizeCompletionListener(Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mResizeCompletionListener:Lcom/sonyericsson/conversations/ui/controller/ResizeCompletionListener;

    .line 97
    return-void
.end method

.method public unregisterMediaResizeProgressListener(Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/controller/ResizeProgressListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ResizeManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method
