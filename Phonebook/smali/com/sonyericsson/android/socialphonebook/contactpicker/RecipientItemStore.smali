.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;
.super Ljava/util/Observable;
.source "RecipientItemStore.java"


# instance fields
.field private mMaxSize:I

.field private mStore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mMaxSize:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    .line 30
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mMaxSize:I

    .line 27
    return-void
.end method


# virtual methods
.method public declared-synchronized addContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z
    .locals 1
    .param p1, "selectedItem"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    .prologue
    monitor-enter p0

    .line 53
    if-nez p1, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 55
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->setChanged()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public availableSize()I
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mMaxSize:I

    if-lez v0, :cond_0

    .line 47
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mMaxSize:I

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 49
    :cond_0
    const v0, 0x7fffffff

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Ljava/util/Observable;->deleteObservers()V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    return-void
.end method

.method public declared-synchronized contains(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 77
    if-nez p1, :cond_0

    monitor-exit p0

    .line 78
    return v3

    .line 80
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    iget-object v1, v2, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    .line 82
    .local v1, "temp":Landroid/net/Uri;
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "temp":Landroid/net/Uri;
    :cond_2
    monitor-exit p0

    .line 86
    return v3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized contains(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    .prologue
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public get(I)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    return-object v0
.end method

.method public declared-synchronized getList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 90
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 94
    return-object v1

    .end local v0    # "i":I
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mMaxSize:I

    return v0
.end method

.method public getResults(Z)Ljava/util/List;
    .locals 4
    .param p1, "shouldReturnDataResult"    # Z

    .prologue
    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "resultList":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    iget-object v2, v3, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->mUri:Landroid/net/Uri;

    .line 101
    .local v2, "uri":Landroid/net/Uri;
    if-nez p1, :cond_0

    if-nez v2, :cond_1

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    return-object v1
.end method

.method public declared-synchronized removeContactItem(Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItem;

    .prologue
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->mStore:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->setChanged()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
