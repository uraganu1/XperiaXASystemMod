.class public Lcom/sonymobile/forklift/Forklift;
.super Ljava/lang/Object;
.source "Forklift.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/forklift/Forklift$LoadTask;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/sonymobile/forklift/Forklift;


# instance fields
.field private final mPropertyCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPropertyLoadTasks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Landroid/view/View;",
            "Lcom/sonymobile/forklift/Forklift$LoadTask;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/forklift/Forklift;Lcom/sonymobile/forklift/Forklift$LoadTask;)V
    .locals 0
    .param p1, "task"    # Lcom/sonymobile/forklift/Forklift$LoadTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/forklift/Forklift;->markTaskAsDone(Lcom/sonymobile/forklift/Forklift$LoadTask;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/forklift/Forklift;->sInstance:Lcom/sonymobile/forklift/Forklift;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/sonymobile/forklift/Forklift;->mPropertyCache:Ljava/util/Hashtable;

    .line 43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/sonymobile/forklift/Forklift;->mPropertyLoadTasks:Ljava/util/Hashtable;

    .line 25
    return-void
.end method

.method private findTask(Lcom/sonymobile/forklift/PropertyLoader;)Lcom/sonymobile/forklift/Forklift$LoadTask;
    .locals 2
    .param p1, "loader"    # Lcom/sonymobile/forklift/PropertyLoader;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1}, Lcom/sonymobile/forklift/PropertyLoader;->getTargetView()Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "targetView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 95
    return-object v1

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/forklift/PropertyLoader;->getProperty()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/forklift/Forklift;->getTasks(Lcom/sonymobile/forklift/HeavyProperty;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/forklift/Forklift$LoadTask;

    return-object v1
.end method

.method public static getInstance()Lcom/sonymobile/forklift/Forklift;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/sonymobile/forklift/Forklift;->sInstance:Lcom/sonymobile/forklift/Forklift;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lcom/sonymobile/forklift/Forklift;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/sonymobile/forklift/Forklift;->sInstance:Lcom/sonymobile/forklift/Forklift;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/sonymobile/forklift/Forklift;

    invoke-direct {v0}, Lcom/sonymobile/forklift/Forklift;-><init>()V

    sput-object v0, Lcom/sonymobile/forklift/Forklift;->sInstance:Lcom/sonymobile/forklift/Forklift;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 53
    :cond_1
    sget-object v0, Lcom/sonymobile/forklift/Forklift;->sInstance:Lcom/sonymobile/forklift/Forklift;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTasks(Lcom/sonymobile/forklift/HeavyProperty;)Ljava/util/Hashtable;
    .locals 3
    .param p1, "property"    # Lcom/sonymobile/forklift/HeavyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/forklift/HeavyProperty;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Landroid/view/View;",
            "Lcom/sonymobile/forklift/Forklift$LoadTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/sonymobile/forklift/HeavyProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "propertyName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/forklift/Forklift;->mPropertyLoadTasks:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 128
    .local v1, "propertyTasks":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Landroid/view/View;Lcom/sonymobile/forklift/Forklift$LoadTask;>;"
    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/util/Hashtable;

    .end local v1    # "propertyTasks":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Landroid/view/View;Lcom/sonymobile/forklift/Forklift$LoadTask;>;"
    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 130
    .restart local v1    # "propertyTasks":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Landroid/view/View;Lcom/sonymobile/forklift/Forklift$LoadTask;>;"
    iget-object v2, p0, Lcom/sonymobile/forklift/Forklift;->mPropertyLoadTasks:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    return-object v1
.end method

.method private keepTask(Lcom/sonymobile/forklift/Forklift$LoadTask;)V
    .locals 2
    .param p1, "task"    # Lcom/sonymobile/forklift/Forklift$LoadTask;

    .prologue
    .line 101
    invoke-static {p1}, Lcom/sonymobile/forklift/Forklift$LoadTask;->-get0(Lcom/sonymobile/forklift/Forklift$LoadTask;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/forklift/PropertyLoader;->getTargetView()Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "targetView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/forklift/Forklift$LoadTask;->-get0(Lcom/sonymobile/forklift/Forklift$LoadTask;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/forklift/PropertyLoader;->getProperty()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/forklift/Forklift;->getTasks(Lcom/sonymobile/forklift/HeavyProperty;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method private markTaskAsDone(Lcom/sonymobile/forklift/Forklift$LoadTask;)V
    .locals 4
    .param p1, "task"    # Lcom/sonymobile/forklift/Forklift$LoadTask;

    .prologue
    .line 109
    invoke-static {p1}, Lcom/sonymobile/forklift/Forklift$LoadTask;->-get0(Lcom/sonymobile/forklift/Forklift$LoadTask;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/forklift/PropertyLoader;->getTargetView()Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, "targetView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/forklift/Forklift$LoadTask;->-get0(Lcom/sonymobile/forklift/Forklift$LoadTask;)Lcom/sonymobile/forklift/PropertyLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/forklift/PropertyLoader;->getProperty()Lcom/sonymobile/forklift/HeavyProperty;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonymobile/forklift/Forklift;->getTasks(Lcom/sonymobile/forklift/HeavyProperty;)Ljava/util/Hashtable;

    move-result-object v2

    .line 114
    .local v2, "tasks":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Landroid/view/View;Lcom/sonymobile/forklift/Forklift$LoadTask;>;"
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/forklift/Forklift$LoadTask;

    .line 115
    .local v0, "keptTask":Lcom/sonymobile/forklift/Forklift$LoadTask;
    if-ne v0, p1, :cond_1

    .line 116
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    return-void
.end method


# virtual methods
.method getPropertyCache(Lcom/sonymobile/forklift/HeavyProperty;)Landroid/util/LruCache;
    .locals 3
    .param p1, "heavyProperty"    # Lcom/sonymobile/forklift/HeavyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/forklift/HeavyProperty;",
            ")",
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p1}, Lcom/sonymobile/forklift/HeavyProperty;->getName()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "propertyName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/forklift/Forklift;->mPropertyCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LruCache;

    .line 188
    .local v0, "cacheForTask":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 189
    new-instance v0, Landroid/util/LruCache;

    .end local v0    # "cacheForTask":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/16 v2, 0x64

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    .line 190
    .restart local v0    # "cacheForTask":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/sonymobile/forklift/Forklift;->mPropertyCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    return-object v0
.end method

.method public invalidateProperty(Lcom/sonymobile/forklift/HeavyProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "property":Lcom/sonymobile/forklift/HeavyProperty;, "Lcom/sonymobile/forklift/HeavyProperty<TR;>;"
    iget-object v0, p1, Lcom/sonymobile/forklift/HeavyProperty;->mParentKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0, p1}, Lcom/sonymobile/forklift/Forklift;->getPropertyCache(Lcom/sonymobile/forklift/HeavyProperty;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p1, Lcom/sonymobile/forklift/HeavyProperty;->mParentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    return-void
.end method

.method submit(Lcom/sonymobile/forklift/PropertyLoader;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sonymobile/forklift/PropertyLoader",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Lcom/sonymobile/forklift/PropertyLoader;, "Lcom/sonymobile/forklift/PropertyLoader<TT;>;"
    const/4 v4, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/sonymobile/forklift/Forklift;->findTask(Lcom/sonymobile/forklift/PropertyLoader;)Lcom/sonymobile/forklift/Forklift$LoadTask;

    move-result-object v2

    .line 58
    .local v2, "outdatedTask":Lcom/sonymobile/forklift/Forklift$LoadTask;
    if-eqz v2, :cond_0

    .line 59
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/forklift/Forklift$LoadTask;->cancel(Z)Z

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/forklift/PropertyLoader;->getCachedValue()Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "cachedValue":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_2

    .line 65
    invoke-virtual {p1}, Lcom/sonymobile/forklift/PropertyLoader;->isDefaultValueUsed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/sonymobile/forklift/PropertyLoader;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sonymobile/forklift/PropertyLoader;->invokeOnCompleteImpl(Ljava/lang/Object;)V

    .line 77
    :cond_1
    new-instance v1, Lcom/sonymobile/forklift/Forklift$LoadTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/forklift/Forklift$LoadTask;-><init>(Lcom/sonymobile/forklift/Forklift;Lcom/sonymobile/forklift/PropertyLoader;)V

    .line 78
    .local v1, "loadTask":Lcom/sonymobile/forklift/Forklift$LoadTask;, "Lcom/sonymobile/forklift/Forklift$LoadTask<TT;>;"
    invoke-direct {p0, v1}, Lcom/sonymobile/forklift/Forklift;->keepTask(Lcom/sonymobile/forklift/Forklift$LoadTask;)V

    .line 80
    invoke-virtual {p1}, Lcom/sonymobile/forklift/PropertyLoader;->isSynchronousLoadingRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/sonymobile/forklift/Forklift$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/forklift/Forklift$LoadTask;->onPostExecute(Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 70
    .end local v1    # "loadTask":Lcom/sonymobile/forklift/Forklift$LoadTask;, "Lcom/sonymobile/forklift/Forklift$LoadTask<TT;>;"
    :cond_2
    invoke-virtual {p1, v0}, Lcom/sonymobile/forklift/PropertyLoader;->invokeOnCompleteImpl(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p1}, Lcom/sonymobile/forklift/PropertyLoader;->isForceRefreshRequested()Z

    move-result v3

    if-nez v3, :cond_1

    .line 73
    return-void

    .line 83
    .restart local v1    # "loadTask":Lcom/sonymobile/forklift/Forklift$LoadTask;, "Lcom/sonymobile/forklift/Forklift$LoadTask<TT;>;"
    :cond_3
    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v1, p2, v3}, Lcom/sonymobile/forklift/Forklift$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
