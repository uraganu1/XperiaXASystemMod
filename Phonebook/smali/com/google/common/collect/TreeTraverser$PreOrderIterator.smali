.class final Lcom/google/common/collect/TreeTraverser$PreOrderIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final stack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/Iterator",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/TreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/google/common/collect/TreeTraverser$PreOrderIterator;, "Lcom/google/common/collect/TreeTraverser<TT;>.PreOrderIterator;"
    .local p1, "this$0":Lcom/google/common/collect/TreeTraverser;, "Lcom/google/common/collect/TreeTraverser<TT;>;"
    .local p2, "root":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    .line 88
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 86
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 93
    .local p0, "this":Lcom/google/common/collect/TreeTraverser$PreOrderIterator;, "Lcom/google/common/collect/TreeTraverser<TT;>.PreOrderIterator;"
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/google/common/collect/TreeTraverser$PreOrderIterator;, "Lcom/google/common/collect/TreeTraverser<TT;>.PreOrderIterator;"
    iget-object v3, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 99
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 100
    .local v2, "result":Ljava/lang/Object;, "TT;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/TreeTraverser;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 104
    .local v0, "childItr":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/google/common/collect/TreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 107
    :cond_1
    return-object v2
.end method
