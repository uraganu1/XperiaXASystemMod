.class final Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "BinaryTreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/BinaryTreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final hasExpanded:Ljava/util/BitSet;

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
    .line 137
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PostOrderIterator;"
    .local p1, "this$0":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    .local p2, "root":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    .line 139
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 140
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    .line 137
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PostOrderIterator;"
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

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
    .line 151
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.PostOrderIterator;"
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    .line 152
    .local v1, "node":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 153
    .local v0, "expandedNode":Z
    if-eqz v0, :cond_0

    .line 154
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 155
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->clear(I)V

    .line 156
    return-object v1

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->hasExpanded:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 159
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/BinaryTreeTraverser;->-wrap0(Ljava/util/LinkedList;Lcom/google/common/base/Optional;)V

    .line 160
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->stack:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/BinaryTreeTraverser;->-wrap0(Ljava/util/LinkedList;Lcom/google/common/base/Optional;)V

    goto :goto_0
.end method
