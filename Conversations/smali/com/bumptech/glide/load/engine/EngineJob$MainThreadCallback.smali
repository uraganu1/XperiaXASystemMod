.class Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;
.super Ljava/lang/Object;
.source "EngineJob.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/load/engine/EngineJob$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/bumptech/glide/load/engine/EngineJob$1;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 199
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_1

    .line 200
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 201
    .local v0, "job":Lcom/bumptech/glide/load/engine/EngineJob;
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v3, v1, :cond_2

    .line 204
    # invokes: Lcom/bumptech/glide/load/engine/EngineJob;->handleExceptionOnMainThread()V
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->access$200(Lcom/bumptech/glide/load/engine/EngineJob;)V

    .line 206
    :goto_0
    return v3

    .line 199
    .end local v0    # "job":Lcom/bumptech/glide/load/engine/EngineJob;
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v2, v1, :cond_0

    .line 209
    const/4 v1, 0x0

    return v1

    .line 202
    .restart local v0    # "job":Lcom/bumptech/glide/load/engine/EngineJob;
    :cond_2
    # invokes: Lcom/bumptech/glide/load/engine/EngineJob;->handleResultOnMainThread()V
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/EngineJob;->access$100(Lcom/bumptech/glide/load/engine/EngineJob;)V

    goto :goto_0
.end method
