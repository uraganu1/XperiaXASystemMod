.class Lcom/google/common/collect/Synchronized$SynchronizedMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedObject;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 926
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 925
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 936
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 937
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 935
    return-void

    .line 936
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 943
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 950
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 951
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 930
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 931
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 957
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 959
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 957
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1028
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 1029
    const/4 v0, 0x1

    return v0

    .line 1031
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1032
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 967
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 968
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 967
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1037
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1038
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1037
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 974
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 975
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 974
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 981
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 981
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 991
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 992
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 991
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 998
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 999
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 997
    return-void

    .line 998
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1005
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1006
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1005
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1012
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1013
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1012
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1019
    .local p0, "this":Lcom/google/common/collect/Synchronized$SynchronizedMap;, "Lcom/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->-wrap0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1019
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
