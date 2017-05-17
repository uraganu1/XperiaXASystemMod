.class public abstract Lcom/google/common/collect/BinaryTreeTraverser;
.super Lcom/google/common/collect/TreeTraverser;
.source "BinaryTreeTraverser.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;,
        Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;,
        Lcom/google/common/collect/BinaryTreeTraverser$InOrderIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/TreeTraverser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Ljava/util/LinkedList;Lcom/google/common/base/Optional;)V
    .locals 0
    .param p0, "stack"    # Ljava/util/LinkedList;
    .param p1, "node"    # Lcom/google/common/base/Optional;

    .prologue
    invoke-static {p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser;->pushIfPresent(Ljava/util/LinkedList;Lcom/google/common/base/Optional;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeTraverser;-><init>()V

    return-void
.end method

.method private static pushIfPresent(Ljava/util/LinkedList;Lcom/google/common/base/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/LinkedList",
            "<TT;>;",
            "Lcom/google/common/base/Optional",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TT;>;"
    .local p1, "node":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public final children(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$1;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final inOrderTraversal(Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$2;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract leftChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation
.end method

.method postOrderIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$PostOrderIterator;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method preOrderIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/google/common/collect/BinaryTreeTraverser;, "Lcom/google/common/collect/BinaryTreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/BinaryTreeTraverser$PreOrderIterator;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract rightChild(Ljava/lang/Object;)Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation
.end method
