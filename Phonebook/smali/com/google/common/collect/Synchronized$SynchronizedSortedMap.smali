.class Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1053
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedSortedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1063
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1057
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1058
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedSortedMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1068
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedSortedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1069
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1068
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1074
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1075
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->sortedMap(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1080
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedSortedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1081
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1080
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1086
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1087
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->sortedMap(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1086
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1092
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1093
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->delegate()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->sortedMap(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1092
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
