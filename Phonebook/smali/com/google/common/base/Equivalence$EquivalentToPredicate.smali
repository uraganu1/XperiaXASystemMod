.class final Lcom/google/common/base/Equivalence$EquivalentToPredicate;
.super Ljava/lang/Object;
.source "Equivalence.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EquivalentToPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final equivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final target:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Equivalence;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/google/common/base/Equivalence$EquivalentToPredicate;, "Lcom/google/common/base/Equivalence<TT;>.EquivalentToPredicate<TT;>;"
    .local p1, "equivalence":Lcom/google/common/base/Equivalence;, "Lcom/google/common/base/Equivalence<TT;>;"
    .local p2, "target":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lcom/google/common/base/Equivalence;

    .line 265
    iput-object p2, p0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    .line 263
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/google/common/base/Equivalence$EquivalentToPredicate;, "Lcom/google/common/base/Equivalence<TT;>.EquivalentToPredicate<TT;>;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lcom/google/common/base/Equivalence;

    iget-object v1, p0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/base/Equivalence$EquivalentToPredicate;, "Lcom/google/common/base/Equivalence<TT;>.EquivalentToPredicate<TT;>;"
    const/4 v1, 0x0

    .line 273
    if-ne p0, p1, :cond_0

    .line 274
    const/4 v1, 0x1

    return v1

    .line 276
    :cond_0
    instance-of v2, p1, Lcom/google/common/base/Equivalence$EquivalentToPredicate;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 277
    check-cast v0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;

    .line 278
    .local v0, "that":Lcom/google/common/base/Equivalence$EquivalentToPredicate;, "Lcom/google/common/base/Equivalence$EquivalentToPredicate<*>;"
    iget-object v2, p0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lcom/google/common/base/Equivalence;

    iget-object v3, v0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, v3}, Lcom/google/common/base/Equivalence;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    iget-object v1, p0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 278
    :cond_1
    return v1

    .line 281
    .end local v0    # "that":Lcom/google/common/base/Equivalence$EquivalentToPredicate;, "Lcom/google/common/base/Equivalence$EquivalentToPredicate<*>;"
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 285
    .local p0, "this":Lcom/google/common/base/Equivalence$EquivalentToPredicate;, "Lcom/google/common/base/Equivalence<TT;>.EquivalentToPredicate<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lcom/google/common/base/Equivalence;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    .local p0, "this":Lcom/google/common/base/Equivalence$EquivalentToPredicate;, "Lcom/google/common/base/Equivalence<TT;>.EquivalentToPredicate<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->equivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".equivalentTo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;->target:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
