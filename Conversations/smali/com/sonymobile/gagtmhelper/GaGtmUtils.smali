.class public Lcom/sonymobile/gagtmhelper/GaGtmUtils;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

.field private mContainerId:Ljava/lang/String;

.field private mContainerLoaded:Z

.field private mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

.field private mContainerLoadingTimeout:I

.field private mContext:Landroid/content/Context;

.field private mDefaultContainerResourceId:I

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

.field private mInitCalled:Z

.field private mPendingEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTagManager:Lcom/google/android/gms/tagmanager/TagManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 118
    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    const/4 v0, 0x2

    .line 123
    iput v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    .line 125
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .line 128
    iput-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    .line 129
    iput-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    .line 130
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 132
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    .line 135
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 248
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "GaGtmUtils constructor"

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .param p1, "x1"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->flushDataLayerQueueLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    return-object v0
.end method

.method private ensureContainerLoadedLocked()V
    .locals 5

    .prologue
    .line 486
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushInitDefaultsToDataLayer()V

    .line 496
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    iget v3, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tagmanager/TagManager;->loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 498
    .local v0, "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/tagmanager/ContainerHolder;>;"
    new-instance v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    iget v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    .line 558
    return-void

    .end local v0    # "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/tagmanager/ContainerHolder;>;"
    :cond_0
    const-string/jumbo v1, "GaGtmHelper"

    const-string/jumbo v2, "ensureContainerLoaded"

    .line 487
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private flushDataLayerQueueLocked()V
    .locals 5

    .prologue
    .line 561
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    .line 567
    .local v0, "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, "pendingEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_1

    .line 573
    return-void

    .end local v0    # "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    .end local v1    # "pendingEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string/jumbo v2, "GaGtmHelper"

    const-string/jumbo v3, "flushDataLayerQueueLocked"

    .line 562
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    .restart local v0    # "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    .restart local v1    # "pendingEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 571
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "GaGtmHelper"

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .locals 2

    .prologue
    .line 474
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    if-eqz v0, :cond_0

    .line 482
    :goto_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    return-object v0

    :cond_0
    const-class v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .line 475
    monitor-enter v1

    .line 476
    :try_start_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    if-eqz v0, :cond_1

    .line 479
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 477
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-direct {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method deserializeQueueFromFileAndPush()V
    .locals 28

    .prologue
    .line 341
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v23

    if-nez v23, :cond_0

    .line 346
    :goto_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    const-string/jumbo v24, "GTM_buffered_events"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    .local v5, "bufferFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_2

    .line 349
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v23

    if-nez v23, :cond_1

    .line 352
    :goto_1
    return-void

    .end local v5    # "bufferFile":Ljava/io/File;
    :cond_0
    const-string/jumbo v23, "GaGtmHelper"

    const-string/jumbo v24, "deserializeQueueFromFile"

    .line 342
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v5    # "bufferFile":Ljava/io/File;
    :cond_1
    const-string/jumbo v23, "GaGtmHelper"

    const-string/jumbo v24, "File is empty skip"

    .line 350
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 356
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .local v18, "manager":Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    .local v17, "info":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    .line 360
    .local v4, "appVersion":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 362
    .local v17, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v17    # "info":Landroid/content/pm/PackageInfo;
    .local v4, "appVersion":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v23

    if-nez v23, :cond_5

    :goto_3
    const/4 v8, 0x0

    .local v8, "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v16, 0x0

    .local v16, "fis":Ljava/io/FileInputStream;
    const/16 v19, 0x0

    .line 376
    .local v19, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "GTM_buffered_events"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v16

    .line 377
    .local v16, "fis":Ljava/io/FileInputStream;
    new-instance v20, Ljava/io/ObjectInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    .end local v19    # "ois":Ljava/io/ObjectInputStream;
    .local v20, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v22

    .line 382
    .local v22, "version":I
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v23

    if-nez v23, :cond_6

    .line 386
    :goto_4
    if-eqz v22, :cond_7

    .line 407
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v23

    if-nez v23, :cond_a

    .line 428
    .end local v8    # "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3
    :goto_5
    if-nez v20, :cond_b

    .line 435
    :goto_6
    if-nez v16, :cond_c

    move-object/from16 v19, v20

    .line 444
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "ois":Ljava/io/ObjectInputStream;
    .end local v22    # "version":I
    :cond_4
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "GTM_buffered_events"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v10

    .line 445
    .local v10, "deleted":Z
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v23

    if-nez v23, :cond_17

    .line 450
    :goto_8
    if-eqz v8, :cond_18

    .line 454
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v23

    if-nez v23, :cond_19

    .line 457
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v9

    .line 458
    .local v9, "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    sget-object v24, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v24

    .line 460
    :goto_a
    :try_start_3
    invoke-virtual {v8}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .local v7, "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v7, :cond_1a

    .line 466
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 467
    return-void

    .line 365
    .end local v7    # "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    .end local v10    # "deleted":Z
    .local v4, "appVersion":Ljava/lang/String;
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, ""

    .line 364
    .local v4, "appVersion":Ljava/lang/String;
    goto :goto_2

    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const-string/jumbo v23, "GaGtmHelper"

    .line 368
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Current appVersion="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .restart local v8    # "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "ois":Ljava/io/ObjectInputStream;
    .restart local v22    # "version":I
    :cond_6
    :try_start_4
    const-string/jumbo v23, "GaGtmHelper"

    .line 383
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Read version="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_4

    .line 439
    .end local v22    # "version":I
    :catch_1
    move-exception v12

    move-object/from16 v19, v20

    .line 412
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "ois":Ljava/io/ObjectInputStream;
    .local v12, "e":Ljava/io/FileNotFoundException;
    :goto_b
    :try_start_5
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v23

    if-nez v23, :cond_d

    .line 428
    :goto_c
    if-nez v19, :cond_e

    .line 435
    :goto_d
    if-eqz v16, :cond_4

    .line 437
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_7

    .line 439
    :catch_2
    move-exception v23

    goto/16 :goto_7

    .line 387
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "ois":Ljava/io/ObjectInputStream;
    .restart local v22    # "version":I
    :cond_7
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v21

    .line 390
    .local v21, "readObject":Ljava/lang/Object;
    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 391
    .local v6, "bufferedAppVersion":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v23

    if-nez v23, :cond_8

    .line 395
    :goto_e
    invoke-virtual {v4, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 402
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v23

    if-eqz v23, :cond_3

    const-string/jumbo v23, "GaGtmHelper"

    const-string/jumbo v24, "Bad app version. Skip"

    .line 403
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_5

    .line 439
    .end local v6    # "bufferedAppVersion":Ljava/lang/String;
    .end local v21    # "readObject":Ljava/lang/Object;
    .end local v22    # "version":I
    :catch_3
    move-exception v14

    move-object/from16 v19, v20

    .line 416
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "ois":Ljava/io/ObjectInputStream;
    .local v14, "e":Ljava/io/OptionalDataException;
    :goto_f
    :try_start_8
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v23

    if-nez v23, :cond_f

    .line 428
    :goto_10
    if-nez v19, :cond_10

    .line 435
    :goto_11
    if-eqz v16, :cond_4

    .line 437
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_7

    .line 439
    :catch_4
    move-exception v23

    goto/16 :goto_7

    .end local v14    # "e":Ljava/io/OptionalDataException;
    .restart local v6    # "bufferedAppVersion":Ljava/lang/String;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "ois":Ljava/io/ObjectInputStream;
    .restart local v21    # "readObject":Ljava/lang/Object;
    .restart local v22    # "version":I
    :cond_8
    :try_start_a
    const-string/jumbo v23, "GaGtmHelper"

    .line 392
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Read bufferedAppVersion="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_e

    .line 439
    .end local v6    # "bufferedAppVersion":Ljava/lang/String;
    .end local v21    # "readObject":Ljava/lang/Object;
    .end local v22    # "version":I
    :catch_5
    move-exception v13

    move-object/from16 v19, v20

    .line 420
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "ois":Ljava/io/ObjectInputStream;
    .local v13, "e":Ljava/io/IOException;
    :goto_12
    :try_start_b
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v23

    if-nez v23, :cond_11

    .line 428
    :goto_13
    if-nez v19, :cond_12

    .line 435
    :goto_14
    if-eqz v16, :cond_4

    .line 437
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_7

    .line 439
    :catch_6
    move-exception v23

    goto/16 :goto_7

    .line 397
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v6    # "bufferedAppVersion":Ljava/lang/String;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "ois":Ljava/io/ObjectInputStream;
    .restart local v21    # "readObject":Ljava/lang/Object;
    .restart local v22    # "version":I
    :cond_9
    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v21

    .line 400
    move-object/from16 v0, v21

    check-cast v0, Ljava/util/LinkedList;

    move-object v8, v0

    .local v8, "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    goto/16 :goto_5

    .end local v6    # "bufferedAppVersion":Ljava/lang/String;
    .end local v21    # "readObject":Ljava/lang/Object;
    .local v8, "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_a
    const-string/jumbo v23, "GaGtmHelper"

    const-string/jumbo v24, "Bad format version. Skip"

    .line 408
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_5

    .line 439
    .end local v22    # "version":I
    :catch_7
    move-exception v15

    move-object/from16 v19, v20

    .line 424
    .end local v16    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "ois":Ljava/io/ObjectInputStream;
    .local v15, "e":Ljava/lang/ClassNotFoundException;
    :goto_15
    :try_start_e
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v23

    if-nez v23, :cond_13

    .line 428
    :goto_16
    if-nez v19, :cond_14

    .line 435
    :goto_17
    if-eqz v16, :cond_4

    .line 437
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_7

    .line 439
    :catch_8
    move-exception v23

    goto/16 :goto_7

    .line 430
    .end local v8    # "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v15    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "ois":Ljava/io/ObjectInputStream;
    .restart local v22    # "version":I
    :cond_b
    :try_start_10
    invoke-virtual/range {v20 .. v20}, Ljava/io/ObjectInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_6

    .line 432
    :catch_9
    move-exception v23

    goto/16 :goto_6

    .line 437
    :cond_c
    :try_start_11
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    :goto_18
    move-object/from16 v19, v20

    .line 439
    .end local v20    # "ois":Ljava/io/ObjectInputStream;
    .local v19, "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_7

    .end local v19    # "ois":Ljava/io/ObjectInputStream;
    .restart local v20    # "ois":Ljava/io/ObjectInputStream;
    :catch_a
    move-exception v23

    goto :goto_18

    .end local v16    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "ois":Ljava/io/ObjectInputStream;
    .end local v22    # "version":I
    .restart local v8    # "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v12    # "e":Ljava/io/FileNotFoundException;
    :cond_d
    :try_start_12
    const-string/jumbo v23, "GaGtmHelper"

    .line 413
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "FileNotFoundException="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_c

    .line 439
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v23

    .line 428
    :goto_19
    if-nez v19, :cond_15

    .line 435
    :goto_1a
    if-nez v16, :cond_16

    .line 439
    :goto_1b
    throw v23

    .line 430
    .restart local v12    # "e":Ljava/io/FileNotFoundException;
    :cond_e
    :try_start_13
    invoke-virtual/range {v19 .. v19}, Ljava/io/ObjectInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    goto/16 :goto_d

    .line 432
    :catch_b
    move-exception v23

    goto/16 :goto_d

    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "e":Ljava/io/OptionalDataException;
    :cond_f
    :try_start_14
    const-string/jumbo v23, "GaGtmHelper"

    .line 417
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "OptionalDataException="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Ljava/io/OptionalDataException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_10

    .line 430
    :cond_10
    :try_start_15
    invoke-virtual/range {v19 .. v19}, Ljava/io/ObjectInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    goto/16 :goto_11

    .line 432
    :catch_c
    move-exception v23

    goto/16 :goto_11

    .end local v14    # "e":Ljava/io/OptionalDataException;
    .restart local v13    # "e":Ljava/io/IOException;
    :cond_11
    :try_start_16
    const-string/jumbo v23, "GaGtmHelper"

    .line 421
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "IOException="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_13

    .line 430
    :cond_12
    :try_start_17
    invoke-virtual/range {v19 .. v19}, Ljava/io/ObjectInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    goto/16 :goto_14

    .line 432
    :catch_d
    move-exception v23

    goto/16 :goto_14

    .end local v13    # "e":Ljava/io/IOException;
    .restart local v15    # "e":Ljava/lang/ClassNotFoundException;
    :cond_13
    :try_start_18
    const-string/jumbo v23, "GaGtmHelper"

    .line 425
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "ClassNotFoundException="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_16

    .line 430
    :cond_14
    :try_start_19
    invoke-virtual/range {v19 .. v19}, Ljava/io/ObjectInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    goto/16 :goto_17

    .line 432
    :catch_e
    move-exception v23

    goto/16 :goto_17

    .line 430
    .end local v15    # "e":Ljava/lang/ClassNotFoundException;
    :cond_15
    :try_start_1a
    invoke-virtual/range {v19 .. v19}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    goto/16 :goto_1a

    .line 432
    :catch_f
    move-exception v24

    goto/16 :goto_1a

    .line 437
    :cond_16
    :try_start_1b
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    goto/16 :goto_1b

    .line 439
    :catch_10
    move-exception v24

    goto/16 :goto_1b

    .end local v8    # "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v10    # "deleted":Z
    :cond_17
    const-string/jumbo v23, "GaGtmHelper"

    .line 446
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Buffer file deleted="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 452
    :cond_18
    return-void

    :cond_19
    const-string/jumbo v23, "GaGtmHelper"

    const-string/jumbo v24, "Push buffered events"

    .line 455
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 461
    .restart local v7    # "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    :cond_1a
    :try_start_1c
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v23

    if-nez v23, :cond_1b

    .line 464
    :goto_1c
    invoke-virtual {v9, v7}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto/16 :goto_a

    .line 466
    .end local v7    # "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_1
    move-exception v23

    monitor-exit v24
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    throw v23

    .restart local v7    # "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1b
    :try_start_1d
    const-string/jumbo v23, "GaGtmHelper"

    .line 462
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "item="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto :goto_1c

    .line 439
    .end local v7    # "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    .end local v10    # "deleted":Z
    .restart local v8    # "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v16    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v23

    move-object/from16 v19, v20

    .end local v20    # "ois":Ljava/io/ObjectInputStream;
    .restart local v19    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_19

    .end local v16    # "fis":Ljava/io/FileInputStream;
    .local v19, "ois":Ljava/io/ObjectInputStream;
    :catch_11
    move-exception v15

    goto/16 :goto_15

    :catch_12
    move-exception v13

    goto/16 :goto_12

    :catch_13
    move-exception v14

    goto/16 :goto_f

    :catch_14
    move-exception v12

    goto/16 :goto_b
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "defaultContainerResourceId"    # I
    .param p4, "useSomcGaSetting"    # Z

    .prologue
    .line 236
    iget v5, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    iget-object v6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->init(Landroid/content/Context;Ljava/lang/String;IZILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;IZILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "defaultContainerResourceId"    # I
    .param p4, "useSomcGaSetting"    # Z
    .param p5, "containerLoadingTimeout"    # I
    .param p6, "callback"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    if-nez v0, :cond_1

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    .line 192
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    .line 205
    iput p3, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    .line 206
    iput p5, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    .line 207
    iput-object p6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .line 208
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    .line 210
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->ensureContainerLoadedLocked()V

    .line 212
    if-nez p4, :cond_4

    .line 216
    :goto_1
    monitor-exit v1

    .line 218
    return v4

    .line 185
    :cond_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    :goto_2
    monitor-exit v1

    return v3

    :cond_2
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v2, "Ignoring call to init, already called."

    .line 186
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    const-string/jumbo v0, "GaGtmHelper"

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " defaultContainerResourceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " containerLoadingTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz p6, :cond_0

    const-string/jumbo v0, "GaGtmHelper"

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_4
    new-instance v0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-direct {v0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    .line 214
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->subscribeGaSettingChanges()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public pushAppView(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 591
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x4

    .line 595
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "event"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "appView"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gagtm-screenName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 597
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushAppView screenName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "eventCategory"    # Ljava/lang/String;
    .param p2, "eventAction"    # Ljava/lang/String;
    .param p3, "eventLabel"    # Ljava/lang/String;
    .param p4, "eventValue"    # J

    .prologue
    const/4 v3, 0x0

    .line 610
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/16 v0, 0xa

    .line 616
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "event"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gagtm-eventCategory"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "gagtm-eventAction"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "gagtm-eventLabel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p3, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "gagtm-eventValue"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 620
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushEvent category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pushException(Ljava/lang/String;)V
    .locals 4
    .param p1, "exceptionDescription"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 673
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x4

    .line 677
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "event"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "exception"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gagtm-exceptionDescription"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 679
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushException exceptionDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized pushInitDefaultsToDataLayer()V
    .locals 15

    .prologue
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, ""

    .local v2, "customization":Ljava/lang/String;
    const-string/jumbo v3, ""

    .local v3, "customizationRevision":Ljava/lang/String;
    const-string/jumbo v1, ""

    .local v1, "customerId":Ljava/lang/String;
    const-string/jumbo v9, ""

    .local v9, "simMnc":Ljava/lang/String;
    const-string/jumbo v8, ""

    .local v8, "simMcc":Ljava/lang/String;
    const-string/jumbo v6, ""

    .local v6, "networkMnc":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 725
    .local v5, "networkMcc":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_4

    .line 731
    :goto_0
    :try_start_1
    iget-object v12, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "ro.semc.version.cust"

    invoke-static {v12, v13}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 732
    iget-object v12, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "ro.semc.version.cust_revision"

    invoke-static {v12, v13}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 734
    iget-object v12, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "ro.somc.customerid"

    invoke-static {v12, v13}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 742
    :cond_0
    :goto_1
    :try_start_2
    iget-object v12, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 747
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    :try_start_3
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_5

    .line 758
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v12

    if-nez v12, :cond_8

    .line 770
    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 771
    .local v7, "networkOperator":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_9

    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x3

    .line 772
    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x3

    .line 773
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    .line 781
    .end local v7    # "networkOperator":Ljava/lang/String;
    :cond_3
    :goto_3
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "buildId":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_a

    :goto_4
    const/16 v12, 0x14

    .line 793
    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "gagtm-deviceBuildModel"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "gagtm-deviceBuildId"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object v0, v12, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "gagtm-deviceBuildType"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x6

    const-string/jumbo v14, "gagtm-deviceCustomization"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    aput-object v2, v12, v13

    const/16 v13, 0x8

    const-string/jumbo v14, "gagtm-deviceCustomizationRevision"

    aput-object v14, v12, v13

    const/16 v13, 0x9

    aput-object v3, v12, v13

    const/16 v13, 0xa

    const-string/jumbo v14, "gagtm-deviceCustomerId"

    aput-object v14, v12, v13

    const/16 v13, 0xb

    aput-object v1, v12, v13

    const/16 v13, 0xc

    const-string/jumbo v14, "gagtm-deviceSimMcc"

    aput-object v14, v12, v13

    const/16 v13, 0xd

    aput-object v8, v12, v13

    const/16 v13, 0xe

    const-string/jumbo v14, "gagtm-deviceSimMnc"

    aput-object v14, v12, v13

    const/16 v13, 0xf

    aput-object v9, v12, v13

    const/16 v13, 0x10

    const-string/jumbo v14, "gagtm-deviceNetworkMcc"

    aput-object v14, v12, v13

    const/16 v13, 0x11

    aput-object v5, v12, v13

    const/16 v13, 0x12

    const-string/jumbo v14, "gagtm-deviceNetworkMnc"

    aput-object v14, v12, v13

    const/16 v13, 0x13

    aput-object v6, v12, v13

    invoke-static {v12}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 804
    return-void

    .end local v0    # "buildId":Ljava/lang/String;
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    :try_start_6
    const-string/jumbo v12, "GaGtmHelper"

    const-string/jumbo v13, "pushInitDefaultsToDataLayer"

    .line 726
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .end local v1    # "customerId":Ljava/lang/String;
    .end local v2    # "customization":Ljava/lang/String;
    .end local v3    # "customizationRevision":Ljava/lang/String;
    .end local v5    # "networkMcc":Ljava/lang/String;
    .end local v6    # "networkMnc":Ljava/lang/String;
    .end local v8    # "simMcc":Ljava/lang/String;
    .end local v9    # "simMnc":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 740
    .restart local v1    # "customerId":Ljava/lang/String;
    .restart local v2    # "customization":Ljava/lang/String;
    .restart local v3    # "customizationRevision":Ljava/lang/String;
    .restart local v5    # "networkMcc":Ljava/lang/String;
    .restart local v6    # "networkMnc":Ljava/lang/String;
    .restart local v8    # "simMcc":Ljava/lang/String;
    .restart local v9    # "simMnc":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 737
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "GaGtmHelper"

    .line 738
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SystemProperty exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 749
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    :try_start_8
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v10

    .line 750
    .local v10, "simOperator":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_7

    :cond_6
    const/4 v12, 0x0

    const/4 v13, 0x3

    .line 751
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x3

    .line 753
    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 750
    :cond_7
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x6

    if-eq v12, v13, :cond_6

    goto/16 :goto_2

    .end local v10    # "simOperator":Ljava/lang/String;
    :cond_8
    const-string/jumbo v12, "GaGtmHelper"

    const-string/jumbo v13, "SIM state is not ready"

    .line 759
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 766
    :catch_1
    move-exception v4

    .line 763
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "GaGtmHelper"

    .line 764
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unexpected exception reading SIM info:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 771
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "networkOperator":Ljava/lang/String;
    :cond_9
    :try_start_a
    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v12

    const/4 v13, 0x6

    if-eq v12, v13, :cond_2

    goto/16 :goto_3

    .line 779
    .end local v7    # "networkOperator":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 776
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "GaGtmHelper"

    .line 777
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unexpected exception reading network info:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "buildId":Ljava/lang/String;
    :cond_a
    const-string/jumbo v12, "GaGtmHelper"

    .line 784
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Pushing to data layer deviceBuildModel:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "deviceBuildId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", deviceBuildType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "deviceCustomization:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "deviceCustomizationRevision:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "deviceCustomerId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", deviceSimMcc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "deviceSimMnc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", deviceNetworkMcc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "deviceNetworkMnc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4
.end method

.method public pushToDataLayer(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, "keyValueData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 689
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    if-nez v0, :cond_0

    .line 693
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_2

    .line 702
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 708
    :goto_1
    monitor-exit v1

    .line 709
    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_1

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v2, "Container is NOT loaded, add to queue"

    .line 694
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "GaGtmHelper"

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Max pending events reached. Dropping event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public serializeQueueToFile()V
    .locals 12

    .prologue
    .line 258
    sget-object v9, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v9

    .line 259
    :try_start_0
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 264
    :goto_0
    iget-object v8, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-eqz v8, :cond_2

    .line 272
    iget-object v8, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .local v5, "manager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .local v4, "info":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .line 276
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 278
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .local v0, "appVersion":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-nez v8, :cond_4

    :goto_2
    const/4 v3, 0x0

    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 292
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    :try_start_3
    iget-object v8, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "GTM_buffered_events"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 294
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 297
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .local v7, "oos":Ljava/io/ObjectOutputStream;
    :try_start_4
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v8

    if-nez v8, :cond_5

    :goto_3
    const/4 v8, 0x0

    .line 300
    :try_start_5
    invoke-virtual {v7, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 303
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_6

    .line 306
    :goto_4
    invoke-virtual {v7, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 309
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_7

    .line 312
    :goto_5
    iget-object v8, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v7, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 319
    if-nez v7, :cond_8

    .line 326
    :goto_6
    if-nez v3, :cond_9

    move-object v6, v7

    .line 333
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    :cond_0
    :goto_7
    :try_start_6
    monitor-exit v9

    .line 334
    return-void

    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v5    # "manager":Landroid/content/pm/PackageManager;
    :cond_1
    const-string/jumbo v8, "GaGtmHelper"

    const-string/jumbo v10, "serializeQueueToFile"

    .line 260
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v8

    .line 265
    :cond_2
    :try_start_7
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 268
    :goto_8
    monitor-exit v9

    return-void

    :cond_3
    const-string/jumbo v8, "GaGtmHelper"

    const-string/jumbo v10, "No buffered events to serialize to file."

    .line 266
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 281
    .local v0, "appVersion":Ljava/lang/String;
    .restart local v5    # "manager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v0, ""

    .line 280
    .local v0, "appVersion":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string/jumbo v8, "GaGtmHelper"

    .line 283
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Current appVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    :cond_5
    :try_start_8
    const-string/jumbo v8, "GaGtmHelper"

    const-string/jumbo v10, "Write version"

    .line 298
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    .line 330
    :catch_1
    move-exception v2

    move-object v6, v7

    .line 314
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .local v2, "e":Ljava/io/IOException;
    :goto_9
    :try_start_9
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v8

    if-nez v8, :cond_a

    .line 319
    :goto_a
    if-nez v6, :cond_b

    .line 326
    :goto_b
    if-eqz v3, :cond_0

    .line 328
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 330
    :catch_2
    move-exception v8

    goto :goto_7

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    :cond_6
    :try_start_b
    const-string/jumbo v8, "GaGtmHelper"

    const-string/jumbo v10, "Write app version"

    .line 304
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 330
    :catch_3
    move-exception v2

    move-object v6, v7

    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    goto :goto_9

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    :cond_7
    const-string/jumbo v8, "GaGtmHelper"

    const-string/jumbo v10, "Write pending events to file"

    .line 310
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    .line 330
    :catchall_1
    move-exception v8

    move-object v6, v7

    .line 319
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    :goto_c
    if-nez v6, :cond_c

    .line 326
    :goto_d
    if-nez v3, :cond_d

    .line 330
    :goto_e
    :try_start_c
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 321
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    :cond_8
    :try_start_d
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_6

    .line 323
    :catch_4
    move-exception v8

    goto/16 :goto_6

    .line 328
    :cond_9
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_f
    move-object v6, v7

    .line 330
    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    goto/16 :goto_7

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v8

    goto :goto_f

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_f
    const-string/jumbo v8, "GaGtmHelper"

    .line 315
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IOException="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_a

    .line 330
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v8

    goto :goto_c

    .line 321
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_b
    :try_start_10
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_b

    .line 323
    :catch_6
    move-exception v8

    goto :goto_b

    .line 321
    .end local v2    # "e":Ljava/io/IOException;
    :cond_c
    :try_start_11
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_d

    .line 323
    :catch_7
    move-exception v10

    goto :goto_d

    .line 328
    :cond_d
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_e

    .line 330
    :catch_8
    move-exception v10

    goto :goto_e

    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v8

    move-object v6, v7

    .end local v7    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_c

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    :catch_9
    move-exception v2

    goto :goto_9
.end method

.method public setContainerDefaults()V
    .locals 9

    .prologue
    .line 811
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 815
    :goto_0
    iget-object v6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-eqz v6, :cond_1

    .line 822
    iget-object v6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v6}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 824
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    if-eqz v0, :cond_3

    const-string/jumbo v6, "gagtm-dispatchPeriod"

    .line 832
    invoke-virtual {v0, v6}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v1, v6

    .line 833
    .local v1, "gaDispatchPeriod":I
    if-lez v1, :cond_5

    .line 838
    :goto_1
    iget-object v6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v5

    .line 839
    .local v5, "googleAnalytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_6

    .line 842
    :goto_2
    invoke-virtual {v5, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    const-string/jumbo v6, "gagtm-exceptionMaxReportedRows"

    .line 847
    invoke-virtual {v0, v6}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v2, v6

    .line 849
    .local v2, "gaExceptionMaxReportedRows":I
    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxReportedRows(I)V

    const-string/jumbo v6, "gagtm-exceptionMaxTraversedRows"

    .line 852
    invoke-virtual {v0, v6}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v3, v6

    .line 854
    .local v3, "gaExceptionMaxTraversedRows":I
    invoke-static {v3}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxTraversedRows(I)V

    const-string/jumbo v6, "gagtm-exceptionPackageNames"

    .line 857
    invoke-virtual {v0, v6}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 858
    .local v4, "gaExceptionPackageNames":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setEnabledPackageNames(Ljava/lang/String;)V

    .line 859
    return-void

    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    .end local v1    # "gaDispatchPeriod":I
    .end local v2    # "gaExceptionMaxReportedRows":I
    .end local v3    # "gaExceptionMaxTraversedRows":I
    .end local v4    # "gaExceptionPackageNames":Ljava/lang/String;
    .end local v5    # "googleAnalytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_0
    const-string/jumbo v6, "GaGtmHelper"

    const-string/jumbo v7, "setContainerDefaults"

    .line 812
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 816
    :cond_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 819
    :goto_3
    return-void

    :cond_2
    const-string/jumbo v6, "GaGtmHelper"

    const-string/jumbo v7, "container holder is null exiting"

    .line 817
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 825
    .restart local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    :cond_3
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 828
    :goto_4
    return-void

    :cond_4
    const-string/jumbo v6, "GaGtmHelper"

    const-string/jumbo v7, "container is null exiting"

    .line 826
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .restart local v1    # "gaDispatchPeriod":I
    :cond_5
    const/16 v1, 0x708

    .line 836
    goto :goto_1

    .restart local v5    # "googleAnalytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    :cond_6
    const-string/jumbo v6, "GaGtmHelper"

    .line 840
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "gaDispatchPeriod:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
