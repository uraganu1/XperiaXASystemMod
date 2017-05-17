.class Lcom/google/common/collect/BinaryTreeTraverser$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "BinaryTreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/BinaryTreeTraverser$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field doneLeft:Z

.field doneRight:Z

.field final synthetic this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

.field final synthetic val$root:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser$1;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/collect/BinaryTreeTraverser$1;

    .prologue
    .line 62
    .local p2, "val$root":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iput-object p2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->val$root:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 68
    iget-boolean v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneLeft:Z

    if-nez v2, :cond_0

    .line 69
    iput-boolean v4, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneLeft:Z

    .line 70
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v2, v2, Lcom/google/common/collect/BinaryTreeTraverser$1;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->val$root:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/BinaryTreeTraverser;->leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 71
    .local v0, "left":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 75
    .end local v0    # "left":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    :cond_0
    iget-boolean v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneRight:Z

    if-nez v2, :cond_1

    .line 76
    iput-boolean v4, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->doneRight:Z

    .line 77
    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->this$1:Lcom/google/common/collect/BinaryTreeTraverser$1;

    iget-object v2, v2, Lcom/google/common/collect/BinaryTreeTraverser$1;->this$0:Lcom/google/common/collect/BinaryTreeTraverser;

    iget-object v3, p0, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->val$root:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/BinaryTreeTraverser;->rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 78
    .local v1, "right":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 82
    .end local v1    # "right":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/BinaryTreeTraverser$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
