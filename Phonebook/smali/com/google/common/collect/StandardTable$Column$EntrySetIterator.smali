.class Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/StandardTable$Column;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable$Column;)V
    .locals 1

    .prologue
    .line 491
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySetIterator;"
    .local p1, "this$1":Lcom/google/common/collect/StandardTable$Column;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 493
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 492
    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->iterator:Ljava/util/Iterator;

    .line 491
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable$Column;Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/collect/StandardTable$Column;

    .prologue
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySetIterator;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 494
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySetIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "this":Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Column.EntrySetIterator;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 497
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    new-instance v1, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator$1;-><init>(Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;Ljava/util/Map$Entry;)V

    return-object v1

    .line 511
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TR;Ljava/util/Map<TC;TV;>;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    return-object v1
.end method