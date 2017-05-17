.class abstract Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;
.super Ljava/lang/Object;
.source "ListenerCallQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ListenerCallQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final methodCall:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->methodCall:Ljava/lang/String;

    return-object v0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "methodCall"    # Ljava/lang/String;

    .prologue
    .line 45
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>.Callback<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;->methodCall:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method abstract call(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation
.end method

.method enqueueOn(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue",
            "<T",
            "L;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>.Callback<TL;>;"
    .local p1, "queues":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "queue$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 54
    .local v0, "queue":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/ListenerCallQueue;->add(Lcom/google/common/util/concurrent/ListenerCallQueue$Callback;)V

    goto :goto_0

    .line 52
    .end local v0    # "queue":Lcom/google/common/util/concurrent/ListenerCallQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue<TL;>;"
    :cond_0
    return-void
.end method
