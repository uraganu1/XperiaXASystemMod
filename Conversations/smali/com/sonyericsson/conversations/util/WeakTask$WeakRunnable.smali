.class Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;
.super Ljava/lang/Object;
.source "WeakTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/util/WeakTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakRunnable"
.end annotation


# instance fields
.field private final mTaskRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/conversations/util/WeakTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/util/WeakTask;)V
    .locals 1
    .param p1, "task"    # Lcom/sonyericsson/conversations/util/WeakTask;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;->mTaskRef:Ljava/lang/ref/WeakReference;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/util/WeakTask;Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;)V
    .locals 0
    .param p1, "task"    # Lcom/sonyericsson/conversations/util/WeakTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;-><init>(Lcom/sonyericsson/conversations/util/WeakTask;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/sonyericsson/conversations/util/WeakTask$WeakRunnable;->mTaskRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/WeakTask;

    .line 57
    .local v0, "task":Lcom/sonyericsson/conversations/util/WeakTask;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/WeakTask;->run()V

    .line 55
    :cond_0
    return-void
.end method
