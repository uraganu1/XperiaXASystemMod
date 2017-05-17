.class public Lcom/sonyericsson/provider/CapabilityUtil;
.super Ljava/lang/Object;
.source "CapabilityUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/provider/CapabilityUtil$CapabilityUtilHolder;,
        Lcom/sonyericsson/provider/CapabilityUtil$LoadCapabilitiesAsyncTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private volatile mCapabilitiesLoaded:Z

.field private mContext:Landroid/content/Context;

.field private mIsStarredConversationEnabled:Z

.field private final mReadLock:Ljava/util/concurrent/locks/Lock;

.field private final mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mSortSequence:Z

.field private mTransactionSupport:Z

.field private final mWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/provider/CapabilityUtil;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsStarredConversationEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/provider/CapabilityUtil;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mSortSequence:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/provider/CapabilityUtil;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/provider/CapabilityUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mCapabilitiesLoaded:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/provider/CapabilityUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsStarredConversationEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/provider/CapabilityUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mSortSequence:Z

    return p1
.end method

.method static synthetic -set3(Lcom/sonyericsson/provider/CapabilityUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mTransactionSupport:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->DEBUG:Z

    .line 35
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mCapabilitiesLoaded:Z

    .line 43
    iput-boolean v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mTransactionSupport:Z

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mSortSequence:Z

    .line 47
    iput-boolean v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsStarredConversationEnabled:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadLock:Ljava/util/concurrent/locks/Lock;

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/provider/CapabilityUtil;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/provider/CapabilityUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/provider/CapabilityUtil;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil$CapabilityUtilHolder;->-get0()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v0

    return-object v0
.end method

.method private loadCapabilities()V
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mCapabilitiesLoaded:Z

    if-eqz v0, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/provider/CapabilityUtil;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 191
    const-string/jumbo v0, "Start loading capabilities."

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 193
    :cond_1
    new-instance v0, Lcom/sonyericsson/provider/CapabilityUtil$LoadCapabilitiesAsyncTask;

    iget-object v1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/provider/CapabilityUtil$LoadCapabilitiesAsyncTask;-><init>(Lcom/sonyericsson/provider/CapabilityUtil;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/provider/CapabilityUtil$LoadCapabilitiesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    return-void
.end method


# virtual methods
.method public hasValidSketchApp()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 236
    iget-object v5, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 237
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v5, "com.sonymobile.sketch.provider.external.ContentProvider"

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 239
    .local v2, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_0

    .line 240
    return v4

    .line 244
    :cond_0
    :try_start_0
    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 247
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v6, 0xc60006

    if-le v5, v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4

    .line 248
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 69
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 73
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil$CapabilityUtilHolder;->-get0()Lcom/sonyericsson/provider/CapabilityUtil;

    move-result-object v0

    invoke-direct {v0}, Lcom/sonyericsson/provider/CapabilityUtil;->loadCapabilities()V

    .line 66
    return-void

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    throw v0
.end method

.method public isPriorityAvailable()Z
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyManagerProxy()Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    move-result-object v0

    .line 225
    .local v0, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;
    invoke-interface {v0}, Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 226
    const/4 v1, 0x1

    return v1

    .line 228
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSortSequenceEnabled()Z
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mSortSequence:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 208
    return v0

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 209
    throw v0
.end method

.method public isStarredConversationEnabled()Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 217
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mIsStarredConversationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 217
    return v0

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    iget-object v1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 218
    throw v0
.end method

.method public isTransactionEnabled()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mTransactionSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 199
    return v0

    .line 200
    :catchall_0
    move-exception v0

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/provider/CapabilityUtil;->mReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 200
    throw v0
.end method
