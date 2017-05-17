.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;
.super Ljava/lang/Object;
.source "SearchDataCache.java"


# static fields
.field public static final CACHE_TYPE_CONTACTS:I = 0x1

.field public static final CACHE_TYPE_SMART_SEARCH:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;


# instance fields
.field private mContactsDataCache:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

.field private final mLock:Ljava/lang/Object;

.field private mSmartSearchDataCache:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->sInstance:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->mLock:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;
    .locals 2

    .prologue
    const-class v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->sInstance:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->sInstance:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;

    .line 33
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->sInstance:Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCache(I)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 44
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->mSmartSearchDataCache:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->mContactsDataCache:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isCacheValid(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 59
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 60
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 61
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->mSmartSearchDataCache:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 62
    :cond_1
    if-ne p1, v0, :cond_3

    .line 63
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->mContactsDataCache:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :goto_1
    monitor-exit v2

    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 65
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrong type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public setContactsCacheData(Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;)V
    .locals 3
    .param p1, "tinyCursor"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->mContactsDataCache:Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 77
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 78
    if-nez p1, :cond_1

    .line 79
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TinyContactsCursor is null"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 81
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TinyContactsCursor count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/TinyContactsCursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSmartSearchCacheData(Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;)V
    .locals 3
    .param p1, "tinyCursor"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->mSmartSearchDataCache:Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 93
    sget-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 94
    if-nez p1, :cond_1

    .line 95
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "TinySmartSearchCursor is null"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 97
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchDataCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TinySmartSearchCursor count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/ContactSearch$TinySmartSearchCursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
