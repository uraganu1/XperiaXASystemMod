.class final Lcom/google/common/collect/Iterables$3;
.super Lcom/google/common/collect/TransformedIterator;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables;->iterators(Ljava/lang/Iterable;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator",
        "<",
        "Ljava/lang/Iterable",
        "<+TT;>;",
        "Ljava/util/Iterator",
        "<+TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 508
    .local p1, "$anonymous0":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Iterable<+TT;>;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    .line 509
    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # Ljava/lang/Object;

    .prologue
    .line 511
    check-cast p1, Ljava/lang/Iterable;

    .end local p1    # "from":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Iterables$3;->transform(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "from":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
