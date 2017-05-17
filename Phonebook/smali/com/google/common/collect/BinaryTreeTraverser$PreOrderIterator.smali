.class final Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "BinaryTreeTraverser.java"

# interfaces
.implements Lcom/google/common/collect/PeekingIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/BinaryTreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;",
        "Lcom/google/common/collect/PeekingIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final stack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/BinaryTreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PreOrderIterator;"
    .local p1, "this$0":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    .local p2, "root":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    .line 103
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 101
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PreOrderIterator;"
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PreOrderIterator;"
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser;->-wrap0(Ljava/util/LinkedList;Lcom/google/common/base/Optional;)V

    .line 115
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser;->-wrap0(Ljava/util/LinkedList;Lcom/google/common/base/Optional;)V

    .line 116
    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PreOrderIterator;"
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
