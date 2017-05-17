.class public Lcom/sonymobile/forklift/PropertyLoader;
.super Ljava/lang/Object;
.source "PropertyLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mForceRefresh:Z

.field private final mForklift:Lcom/sonymobile/forklift/Forklift;

.field private mLastUsedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mLastUsedValueIsInitialized:Z

.field private mLoadSynchronously:Z

.field private mOnCompleteImpl:Lcom/sonymobile/forklift/OnComplete1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/forklift/OnComplete1",
            "<TV;>;"
        }
    .end annotation
.end field

.field private mOnErrorImpl:Lcom/sonymobile/forklift/OnError;

.field private final mProperty:Lcom/sonymobile/forklift/HeavyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<TV;>;"
        }
    .end annotation
.end field

.field private mTargetView:Landroid/view/View;

.field private mUseDefaultValue:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/forklift/Forklift;Lcom/sonymobile/forklift/HeavyProperty;)V
    .locals 1
    .param p1, "forklift"    # Lcom/sonymobile/forklift/Forklift;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/forklift/Forklift;",
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    .local p2, "property":Lcom/sonymobile/forklift/HeavyProperty;, "Lcom/sonymobile/forklift/HeavyProperty<TV;>;"
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mUseDefaultValue:Z

    .line 25
    iput-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mLoadSynchronously:Z

    .line 27
    iput-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mForceRefresh:Z

    .line 33
    iput-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mLastUsedValueIsInitialized:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mTargetView:Landroid/view/View;

    .line 42
    iput-object p1, p0, Lcom/sonymobile/forklift/PropertyLoader;->mForklift:Lcom/sonymobile/forklift/Forklift;

    .line 43
    iput-object p2, p0, Lcom/sonymobile/forklift/PropertyLoader;->mProperty:Lcom/sonymobile/forklift/HeavyProperty;

    .line 44
    iget-object v0, p2, Lcom/sonymobile/forklift/HeavyProperty;->mDefaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mDefaultValue:Ljava/lang/Object;

    .line 45
    iget-boolean v0, p2, Lcom/sonymobile/forklift/HeavyProperty;->mUseDefaultValue:Z

    iput-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mUseDefaultValue:Z

    .line 41
    return-void
.end method

.method private cacheIsEnabled()Z
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    invoke-direct {p0}, Lcom/sonymobile/forklift/PropertyLoader;->getCacheKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterOutEqualsValue(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 196
    iget-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mLastUsedValueIsInitialized:Z

    if-nez v0, :cond_0

    .line 197
    iput-boolean v1, p0, Lcom/sonymobile/forklift/PropertyLoader;->mLastUsedValueIsInitialized:Z

    .line 198
    iput-object p1, p0, Lcom/sonymobile/forklift/PropertyLoader;->mLastUsedValue:Ljava/lang/Object;

    .line 199
    return v2

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mLastUsedValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 203
    return v1

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mLastUsedValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mLastUsedValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    return v1

    .line 210
    :cond_2
    iput-object p1, p0, Lcom/sonymobile/forklift/PropertyLoader;->mLastUsedValue:Ljava/lang/Object;

    .line 211
    return v2
.end method

.method private getCacheKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mProperty:Lcom/sonymobile/forklift/HeavyProperty;

    iget-object v0, v0, Lcom/sonymobile/forklift/HeavyProperty;->mParentKey:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public byDefault(Ljava/lang/Object;)Lcom/sonymobile/forklift/PropertyLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/sonymobile/forklift/PropertyLoader",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/sonymobile/forklift/PropertyLoader;->mDefaultValue:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mUseDefaultValue:Z

    .line 56
    return-object p0
.end method

.method fetchValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mProperty:Lcom/sonymobile/forklift/HeavyProperty;

    invoke-virtual {v0}, Lcom/sonymobile/forklift/HeavyProperty;->onBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forceRefresh()Lcom/sonymobile/forklift/PropertyLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/forklift/PropertyLoader",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mForceRefresh:Z

    .line 78
    return-object p0
.end method

.method getCachedValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    invoke-direct {p0}, Lcom/sonymobile/forklift/PropertyLoader;->cacheIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mForklift:Lcom/sonymobile/forklift/Forklift;

    iget-object v1, p0, Lcom/sonymobile/forklift/PropertyLoader;->mProperty:Lcom/sonymobile/forklift/HeavyProperty;

    invoke-virtual {v0, v1}, Lcom/sonymobile/forklift/Forklift;->getPropertyCache(Lcom/sonymobile/forklift/HeavyProperty;)Landroid/util/LruCache;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonymobile/forklift/PropertyLoader;->getCacheKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDefaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mDefaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method getProperty()Lcom/sonymobile/forklift/HeavyProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mProperty:Lcom/sonymobile/forklift/HeavyProperty;

    return-object v0
.end method

.method getTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method invokeOnCompleteImpl(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lcom/sonymobile/forklift/PropertyLoader;->filterOutEqualsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mOnCompleteImpl:Lcom/sonymobile/forklift/OnComplete1;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mOnCompleteImpl:Lcom/sonymobile/forklift/OnComplete1;

    invoke-interface {v0, p1}, Lcom/sonymobile/forklift/OnComplete1;->onComplete(Ljava/lang/Object;)V

    .line 145
    :cond_1
    return-void
.end method

.method invokeOnErrorImpl(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 156
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mOnErrorImpl:Lcom/sonymobile/forklift/OnError;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mOnErrorImpl:Lcom/sonymobile/forklift/OnError;

    invoke-interface {v0, p1}, Lcom/sonymobile/forklift/OnError;->onError(Ljava/lang/Exception;)V

    .line 155
    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/sonymobile/forklift/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lcom/sonymobile/forklift/OnErrorNotImplementedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method isDefaultValueUsed()Z
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iget-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mUseDefaultValue:Z

    return v0
.end method

.method isForceRefreshRequested()Z
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iget-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mForceRefresh:Z

    return v0
.end method

.method isSynchronousLoadingRequested()Z
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iget-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mLoadSynchronously:Z

    return v0
.end method

.method keepInCacheIfPossible(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/sonymobile/forklift/PropertyLoader;->cacheIsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/sonymobile/forklift/PropertyLoader;->getCacheKey()Ljava/lang/Object;

    move-result-object v1

    .line 174
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Lcom/sonymobile/forklift/PropertyLoader;->mForklift:Lcom/sonymobile/forklift/Forklift;

    iget-object v3, p0, Lcom/sonymobile/forklift/PropertyLoader;->mProperty:Lcom/sonymobile/forklift/HeavyProperty;

    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/Forklift;->getPropertyCache(Lcom/sonymobile/forklift/HeavyProperty;)Landroid/util/LruCache;

    move-result-object v0

    .line 176
    .local v0, "cache":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 177
    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void

    .line 182
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v0    # "cache":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public onComplete(Lcom/sonymobile/forklift/OnComplete1;)Lcom/sonymobile/forklift/PropertyLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/forklift/OnComplete1",
            "<TV;>;)",
            "Lcom/sonymobile/forklift/PropertyLoader",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    .local p1, "onComplete":Lcom/sonymobile/forklift/OnComplete1;, "Lcom/sonymobile/forklift/OnComplete1<TV;>;"
    iput-object p1, p0, Lcom/sonymobile/forklift/PropertyLoader;->mOnCompleteImpl:Lcom/sonymobile/forklift/OnComplete1;

    .line 89
    return-object p0
.end method

.method public onError(Lcom/sonymobile/forklift/OnError;)Lcom/sonymobile/forklift/PropertyLoader;
    .locals 0
    .param p1, "onError"    # Lcom/sonymobile/forklift/OnError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/forklift/OnError;",
            ")",
            "Lcom/sonymobile/forklift/PropertyLoader",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iput-object p1, p0, Lcom/sonymobile/forklift/PropertyLoader;->mOnErrorImpl:Lcom/sonymobile/forklift/OnError;

    .line 100
    return-object p0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 107
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mForklift:Lcom/sonymobile/forklift/Forklift;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/forklift/Forklift;->submit(Lcom/sonymobile/forklift/PropertyLoader;Ljava/util/concurrent/Executor;)V

    .line 106
    return-void
.end method

.method public startOnSerialExecutor()V
    .locals 2

    .prologue
    .line 114
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mForklift:Lcom/sonymobile/forklift/Forklift;

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/forklift/Forklift;->submit(Lcom/sonymobile/forklift/PropertyLoader;Ljava/util/concurrent/Executor;)V

    .line 113
    return-void
.end method

.method public startSync()V
    .locals 2

    .prologue
    .line 121
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mLoadSynchronously:Z

    .line 122
    iget-object v0, p0, Lcom/sonymobile/forklift/PropertyLoader;->mForklift:Lcom/sonymobile/forklift/Forklift;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sonymobile/forklift/Forklift;->submit(Lcom/sonymobile/forklift/PropertyLoader;Ljava/util/concurrent/Executor;)V

    .line 120
    return-void
.end method

.method public targetView(Landroid/view/View;)Lcom/sonymobile/forklift/PropertyLoader;
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/sonymobile/forklift/PropertyLoader",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TV;>;"
    iput-object p1, p0, Lcom/sonymobile/forklift/PropertyLoader;->mTargetView:Landroid/view/View;

    .line 68
    return-object p0
.end method
