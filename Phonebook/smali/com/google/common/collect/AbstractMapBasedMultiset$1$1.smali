.class Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset$1;->next()Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$1;

.field final synthetic val$mapEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset$1;Ljava/util/Map$Entry;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    .prologue
    .line 101
    .local p2, "val$mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Lcom/google/common/collect/Count;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    iput-object p2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 108
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 109
    .local v0, "count":Lcom/google/common/collect/Count;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v3

    if-nez v3, :cond_1

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->this$1:Lcom/google/common/collect/AbstractMapBasedMultiset$1;

    iget-object v3, v3, Lcom/google/common/collect/AbstractMapBasedMultiset$1;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v3}, Lcom/google/common/collect/AbstractMapBasedMultiset;->-get0(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Count;

    .line 111
    .local v1, "frequency":Lcom/google/common/collect/Count;
    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v1}, Lcom/google/common/collect/Count;->get()I

    move-result v2

    return v2

    .line 115
    .end local v1    # "frequency":Lcom/google/common/collect/Count;
    :cond_1
    if-nez v0, :cond_2

    :goto_0
    return v2

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v2

    goto :goto_0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
