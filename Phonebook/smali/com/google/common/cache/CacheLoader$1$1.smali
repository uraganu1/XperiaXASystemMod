.class Lcom/google/common/cache/CacheLoader$1$1;
.super Ljava/lang/Object;
.source "CacheLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/CacheLoader$1;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/cache/CacheLoader$1;

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$loader:Lcom/google/common/cache/CacheLoader;

.field final synthetic val$oldValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CacheLoader$1;Lcom/google/common/cache/CacheLoader;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/cache/CacheLoader$1;

    .prologue
    .line 194
    .local p2, "val$loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<TK;TV;>;"
    .local p3, "val$key":Ljava/lang/Object;, "TK;"
    .local p4, "val$oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/google/common/cache/CacheLoader$1$1;->this$1:Lcom/google/common/cache/CacheLoader$1;

    iput-object p2, p0, Lcom/google/common/cache/CacheLoader$1$1;->val$loader:Lcom/google/common/cache/CacheLoader;

    iput-object p3, p0, Lcom/google/common/cache/CacheLoader$1$1;->val$key:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/common/cache/CacheLoader$1$1;->val$oldValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/common/cache/CacheLoader$1$1;->val$loader:Lcom/google/common/cache/CacheLoader;

    iget-object v1, p0, Lcom/google/common/cache/CacheLoader$1$1;->val$key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/cache/CacheLoader$1$1;->val$oldValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
