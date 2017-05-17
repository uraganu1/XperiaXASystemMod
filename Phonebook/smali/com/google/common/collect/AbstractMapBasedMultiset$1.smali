.class Lcom/google/common/collect/AbstractMapBasedMultiset$1;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

.field toRemove:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TE;",
            "Lcom/google/common/collect/Count;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$backingEntries:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 89
    .local p1, "this$0":Lcom/google/common/collect/AbstractMapBasedMultiset;, "Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p2, "val$backingEntries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TE;Lcom/google/common/collect/Count;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 100
    .local v0, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lcom/google/common/collect/Count;>;"
    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->toRemove:Ljava/util/Map$Entry;

    .line 101
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->toRemove:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 123
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->-get1(Lcom/google/common/collect/AbstractMapBasedMultiset;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->toRemove:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Count;->getAndSet(I)I

    move-result v0

    int-to-long v0, v0

    sub-long v0, v4, v0

    invoke-static {v2, v0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->-set0(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J

    .line 124
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 125
    iput-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->toRemove:Ljava/util/Map$Entry;

    .line 121
    return-void

    :cond_0
    move v0, v1

    .line 122
    goto :goto_0
.end method
