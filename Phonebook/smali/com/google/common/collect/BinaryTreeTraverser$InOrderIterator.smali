.class final Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "BinaryTreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/BinaryTreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final hasExpandedLeft:Ljava/util/BitSet;

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
    .line 182
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.InOrderIterator;"
    .local p1, "this$0":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    .local p2, "root":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->stack:Ljava/util/LinkedList;

    .line 184
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->hasExpandedLeft:Ljava/util/BitSet;

    .line 185
    iget-object v0, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 182
    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>.InOrderIterator;"
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    .line 192
    .local v0, "node":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->hasExpandedLeft:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->hasExpandedLeft:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 195
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->stack:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser;->-wrap0(Ljava/util/LinkedList;Lcom/google/common/base/Optional;)V

    .line 196
    return-object v0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->hasExpandedLeft:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 199
    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->stack:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser;->-wrap0(Ljava/util/LinkedList;Lcom/google/common/base/Optional;)V

    goto :goto_0

    .line 202
    .end local v0    # "node":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;->endOfData()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
