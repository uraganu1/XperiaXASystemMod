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
.field private static final GA_DEFAULT_DISPATCH_PERIOD:I = 0x708

.field private static final GTM_BUFFERED_EVENTS_FILENAME:Ljava/lang/String; = "GTM_buffered_events"

.field private static final GTM_BUFFERED_EVENTS_VERSION:I = 0x0

.field private static final GTM_KEY_DEVICE_BUILD_ID:Ljava/lang/String; = "gagtm-deviceBuildId"

.field private static final GTM_KEY_DEVICE_BUILD_MODEL:Ljava/lang/String; = "gagtm-deviceBuildModel"

.field private static final GTM_KEY_DEVICE_BUILD_TYPE:Ljava/lang/String; = "gagtm-deviceBuildType"

.field private static final GTM_KEY_DEVICE_CUSTOMER_ID:Ljava/lang/String; = "gagtm-deviceCustomerId"

.field private static final GTM_KEY_DEVICE_CUSTOMIZATION:Ljava/lang/String; = "gagtm-deviceCustomization"

.field private static final GTM_KEY_DEVICE_CUSTOMIZATION_REVISION:Ljava/lang/String; = "gagtm-deviceCustomizationRevision"

.field private static final GTM_KEY_DEVICE_NETWORK_MCC:Ljava/lang/String; = "gagtm-deviceNetworkMcc"

.field private static final GTM_KEY_DEVICE_NETWORK_MNC:Ljava/lang/String; = "gagtm-deviceNetworkMnc"

.field private static final GTM_KEY_DEVICE_SIM_MCC:Ljava/lang/String; = "gagtm-deviceSimMcc"

.field private static final GTM_KEY_DEVICE_SIM_MNC:Ljava/lang/String; = "gagtm-deviceSimMnc"

.field private static final GTM_KEY_EVENT:Ljava/lang/String; = "event"

.field private static final GTM_KEY_EVENT_ACTION:Ljava/lang/String; = "gagtm-eventAction"

.field private static final GTM_KEY_EVENT_CATEGORY:Ljava/lang/String; = "gagtm-eventCategory"

.field private static final GTM_KEY_EVENT_LABEL:Ljava/lang/String; = "gagtm-eventLabel"

.field private static final GTM_KEY_EVENT_VALUE:Ljava/lang/String; = "gagtm-eventValue"

.field private static final GTM_KEY_EXCEPTION_DESCRIPTION:Ljava/lang/String; = "gagtm-exceptionDescription"

.field private static final GTM_KEY_GA_DISPATCH_PERIOD:Ljava/lang/String; = "gagtm-dispatchPeriod"

.field private static final GTM_KEY_GA_EXCEPTION_MAX_REPORTED_ROWS:Ljava/lang/String; = "gagtm-exceptionMaxReportedRows"

.field private static final GTM_KEY_GA_EXCEPTION_MAX_TRAVERSED_ROWS:Ljava/lang/String; = "gagtm-exceptionMaxTraversedRows"

.field private static final GTM_KEY_GA_EXCEPTION_PACKAGE_NAMES:Ljava/lang/String; = "gagtm-exceptionPackageNames"

.field private static final GTM_KEY_GA_FORCE_LOCAL_DISPATCH:Ljava/lang/String; = "gagtm-forceLocalDispatch"

.field private static final GTM_KEY_SCREEN_NAME:Ljava/lang/String; = "gagtm-screenName"

.field private static final GTM_KEY_TIMING_CATEGORY:Ljava/lang/String; = "gagtm-timingCategory"

.field private static final GTM_KEY_TIMING_LABEL:Ljava/lang/String; = "gagtm-timingLabel"

.field private static final GTM_KEY_TIMING_VALUE:Ljava/lang/String; = "gagtm-timingValue"

.field private static final GTM_KEY_TIMING_VAR:Ljava/lang/String; = "gagtm-timingVar"

.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final MAX_BUFFERED_PENDING_EVENTS:I = 0x32

.field private static final SYSTEM_BUILD_CUSTOMER_ID:Ljava/lang/String; = "ro.somc.customerid"

.field private static final SYSTEM_BUILD_CUSTOMIZATION:Ljava/lang/String; = "ro.semc.version.cust"

.field private static final SYSTEM_BUILD_CUSTOMIZATION_REVISION:Ljava/lang/String; = "ro.semc.version.cust_revision"

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
    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 120
    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    const/4 v0, 0x2

    .line 125
    iput v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    .line 127
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .line 130
    iput-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    .line 131
    iput-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    .line 132
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    .line 137
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 250
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "GaGtmUtils constructor"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 0

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

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->flushDataLayerQueueLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    return-object v0
.end method

.method private ensureContainerLoadedLocked()V
    .locals 5

    .prologue
    .line 488
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    iget v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/TagManager;->loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 494
    new-instance v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    iget v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    .line 562
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "ensureContainerLoaded"

    .line 489
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private flushDataLayerQueueLocked()V
    .locals 5

    .prologue
    .line 565
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v1

    .line 571
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 577
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "flushDataLayerQueueLocked"

    .line 566
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 572
    :cond_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 575
    :goto_2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "GaGtmHelper"

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
    .line 476
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    if-eqz v0, :cond_0

    .line 484
    :goto_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    return-object v0

    :cond_0
    const-class v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .line 477
    monitor-enter v1

    .line 478
    :try_start_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    if-eqz v0, :cond_1

    .line 481
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 479
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
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 343
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v3, "GTM_buffered_events"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 351
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "deserializeQueueFromFile"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "File is empty skip"

    .line 352
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 364
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 369
    :goto_2
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 378
    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "GTM_buffered_events"

    invoke-virtual {v0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v4

    .line 379
    :try_start_2
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/io/OptionalDataException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 383
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 384
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 388
    :goto_4
    if-eqz v0, :cond_6

    .line 409
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_a

    .line 430
    :goto_5
    if-nez v3, :cond_b

    .line 437
    :goto_6
    if-nez v4, :cond_c

    .line 446
    :cond_3
    :goto_7
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "GTM_buffered_events"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 447
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    .line 452
    :goto_8
    if-eqz v2, :cond_18

    .line 456
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 459
    :goto_9
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v1

    .line 460
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 462
    :goto_a
    :try_start_4
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1a

    .line 468
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 469
    return-void

    .line 367
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    move-object v1, v0

    .line 366
    goto :goto_2

    :cond_4
    const-string/jumbo v0, "GaGtmHelper"

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current appVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    :try_start_5
    const-string/jumbo v5, "GaGtmHelper"

    .line 385
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Read version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 441
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    .line 414
    :goto_b
    :try_start_6
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    if-nez v4, :cond_d

    .line 430
    :goto_c
    if-nez v1, :cond_e

    .line 437
    :goto_d
    if-eqz v3, :cond_3

    .line 439
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    .line 441
    :catch_2
    move-exception v0

    goto :goto_7

    .line 389
    :cond_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 392
    check-cast v0, Ljava/lang/String;

    .line 393
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    .line 397
    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 404
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    move-object v0, v2

    :goto_f
    move-object v2, v0

    .line 408
    goto/16 :goto_5

    :cond_7
    const-string/jumbo v5, "GaGtmHelper"

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Read bufferedAppVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_e

    .line 441
    :catch_3
    move-exception v0

    .line 418
    :goto_10
    :try_start_9
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v1

    if-nez v1, :cond_f

    .line 430
    :goto_11
    if-nez v3, :cond_10

    .line 437
    :goto_12
    if-eqz v4, :cond_3

    .line 439
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_7

    .line 441
    :catch_4
    move-exception v0

    goto/16 :goto_7

    .line 399
    :cond_8
    :try_start_b
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 402
    check-cast v0, Ljava/util/LinkedList;

    goto :goto_f

    :cond_9
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "Bad app version. Skip"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_f

    :cond_a
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "Bad format version. Skip"

    .line 410
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_12
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_5

    .line 441
    :catch_5
    move-exception v0

    .line 422
    :goto_13
    :try_start_c
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-result v1

    if-nez v1, :cond_11

    .line 430
    :goto_14
    if-nez v3, :cond_12

    .line 437
    :goto_15
    if-eqz v4, :cond_3

    .line 439
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_7

    .line 441
    :catch_6
    move-exception v0

    goto/16 :goto_7

    .line 432
    :cond_b
    :try_start_e
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_6

    .line 434
    :catch_7
    move-exception v0

    goto/16 :goto_6

    .line 439
    :cond_c
    :try_start_f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_7

    .line 441
    :catch_8
    move-exception v0

    goto/16 :goto_7

    :cond_d
    :try_start_10
    const-string/jumbo v4, "GaGtmHelper"

    .line 415
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FileNotFoundException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_c

    .line 441
    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v3, v1

    .line 430
    :goto_16
    if-nez v3, :cond_15

    .line 437
    :goto_17
    if-nez v4, :cond_16

    .line 441
    :goto_18
    throw v0

    .line 432
    :cond_e
    :try_start_11
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_d

    .line 434
    :catch_9
    move-exception v0

    goto/16 :goto_d

    :cond_f
    :try_start_12
    const-string/jumbo v1, "GaGtmHelper"

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OptionalDataException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/OptionalDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_11

    .line 441
    :catchall_1
    move-exception v0

    goto :goto_16

    .line 432
    :cond_10
    :try_start_13
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    goto/16 :goto_12

    .line 434
    :catch_a
    move-exception v0

    goto/16 :goto_12

    :cond_11
    :try_start_14
    const-string/jumbo v1, "GaGtmHelper"

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_14

    .line 432
    :cond_12
    :try_start_15
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    goto/16 :goto_15

    .line 434
    :catch_b
    move-exception v0

    goto/16 :goto_15

    .line 441
    :catch_c
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    .line 426
    :goto_19
    :try_start_16
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    move-result v1

    if-nez v1, :cond_13

    .line 430
    :goto_1a
    if-nez v3, :cond_14

    .line 437
    :goto_1b
    if-eqz v4, :cond_3

    .line 439
    :try_start_17
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    goto/16 :goto_7

    .line 441
    :catch_d
    move-exception v0

    goto/16 :goto_7

    :cond_13
    :try_start_18
    const-string/jumbo v1, "GaGtmHelper"

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ClassNotFoundException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto :goto_1a

    .line 432
    :cond_14
    :try_start_19
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    goto :goto_1b

    .line 434
    :catch_e
    move-exception v0

    goto :goto_1b

    .line 432
    :cond_15
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    goto/16 :goto_17

    .line 434
    :catch_f
    move-exception v1

    goto/16 :goto_17

    .line 439
    :cond_16
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    goto/16 :goto_18

    .line 441
    :catch_10
    move-exception v1

    goto/16 :goto_18

    :cond_17
    const-string/jumbo v1, "GaGtmHelper"

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Buffer file deleted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 454
    :cond_18
    return-void

    :cond_19
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "Push buffered events"

    .line 457
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 463
    :cond_1a
    :try_start_1c
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 466
    :goto_1c
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto/16 :goto_a

    .line 468
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    throw v0

    :cond_1b
    :try_start_1d
    const-string/jumbo v4, "GaGtmHelper"

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    goto :goto_1c

    .line 441
    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_16

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto/16 :goto_16

    :catch_11
    move-exception v0

    move-object v3, v2

    goto/16 :goto_19

    :catch_12
    move-exception v0

    goto/16 :goto_19

    :catch_13
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_13

    :catch_14
    move-exception v0

    move-object v3, v2

    goto/16 :goto_13

    :catch_15
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_10

    :catch_16
    move-exception v0

    move-object v3, v2

    goto/16 :goto_10

    :catch_17
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_b

    :catch_18
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto/16 :goto_b
.end method

.method public getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 2

    .prologue
    .line 584
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 586
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;IZ)Z
    .locals 7

    .prologue
    .line 238
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

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    if-nez v0, :cond_1

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    .line 194
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    .line 207
    iput p3, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    .line 208
    iput p5, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    .line 209
    iput-object p6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .line 210
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    .line 212
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->ensureContainerLoadedLocked()V

    .line 214
    if-nez p4, :cond_4

    .line 218
    :goto_1
    monitor-exit v1

    .line 220
    return v4

    .line 187
    :cond_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    :goto_2
    monitor-exit v1

    return v3

    :cond_2
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v2, "Ignoring call to init, already called."

    .line 188
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    const-string/jumbo v0, "GaGtmHelper"

    .line 195
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

    .line 199
    if-eqz p6, :cond_0

    const-string/jumbo v0, "GaGtmHelper"

    .line 200
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

    .line 215
    :cond_4
    new-instance v0, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-direct {v0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    .line 216
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->subscribeGaSettingChanges()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public pushAppView(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 595
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x4

    .line 599
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

    .line 601
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    .line 596
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

.method public pushEndSession()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 663
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x2

    .line 667
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "event"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "endSession"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 668
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "pushEndSession"

    .line 664
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 614
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/16 v0, 0xa

    .line 620
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

    .line 624
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    .line 615
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

    .prologue
    const/4 v3, 0x0

    .line 677
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x4

    .line 681
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

    .line 683
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    .line 678
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
    .locals 14

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x5

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    const-string/jumbo v7, ""

    const-string/jumbo v4, ""

    const-string/jumbo v3, ""

    const-string/jumbo v6, ""

    const-string/jumbo v5, ""

    .line 729
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 735
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "ro.semc.version.cust"

    invoke-static {v0, v8}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 736
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "ro.semc.version.cust_revision"

    invoke-static {v0, v8}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "ro.somc.customerid"

    invoke-static {v0, v8}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    .line 746
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 751
    :try_start_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v12, :cond_5

    .line 762
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_8

    .line 774
    :cond_0
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v12, :cond_9

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 776
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    const/4 v2, 0x3

    .line 777
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :goto_3
    move-object v5, v0

    move-object v6, v1

    .line 785
    :cond_2
    :goto_4
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_5
    const/16 v1, 0x14

    .line 797
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v10, "gagtm-deviceBuildModel"

    aput-object v10, v1, v2

    const/4 v2, 0x1

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v10, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v10, "gagtm-deviceBuildId"

    aput-object v10, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string/jumbo v2, "gagtm-deviceBuildType"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string/jumbo v2, "gagtm-deviceCustomization"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    aput-object v9, v1, v0

    const/16 v0, 0x8

    const-string/jumbo v2, "gagtm-deviceCustomizationRevision"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    aput-object v8, v1, v0

    const/16 v0, 0xa

    const-string/jumbo v2, "gagtm-deviceCustomerId"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    aput-object v7, v1, v0

    const/16 v0, 0xc

    const-string/jumbo v2, "gagtm-deviceSimMcc"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    aput-object v3, v1, v0

    const/16 v0, 0xe

    const-string/jumbo v2, "gagtm-deviceSimMnc"

    aput-object v2, v1, v0

    const/16 v0, 0xf

    aput-object v4, v1, v0

    const/16 v0, 0x10

    const-string/jumbo v2, "gagtm-deviceNetworkMcc"

    aput-object v2, v1, v0

    const/16 v0, 0x11

    aput-object v5, v1, v0

    const/16 v0, 0x12

    const-string/jumbo v2, "gagtm-deviceNetworkMnc"

    aput-object v2, v1, v0

    const/16 v0, 0x13

    aput-object v6, v1, v0

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 808
    return-void

    :cond_3
    :try_start_7
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v8, "pushInitDefaultsToDataLayer"

    .line 730
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 744
    :catch_0
    move-exception v0

    .line 741
    :try_start_8
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_4

    move-object v8, v1

    move-object v9, v2

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v8, "GaGtmHelper"

    .line 742
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SystemProperty exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v8, v1

    move-object v9, v2

    goto/16 :goto_1

    .line 753
    :cond_5
    :try_start_9
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 754
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v12, :cond_7

    :cond_6
    const/4 v1, 0x0

    const/4 v10, 0x3

    .line 755
    invoke-virtual {v2, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v1

    const/4 v3, 0x3

    .line 757
    :try_start_a
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v2

    :goto_6
    move-object v3, v1

    move-object v4, v2

    .line 761
    goto/16 :goto_2

    .line 754
    :cond_7
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v13, :cond_6

    move-object v1, v3

    move-object v2, v4

    goto :goto_6

    :cond_8
    const-string/jumbo v1, "GaGtmHelper"

    const-string/jumbo v2, "SIM state is not ready"

    .line 763
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 770
    :catch_1
    move-exception v1

    .line 767
    :goto_7
    :try_start_c
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GaGtmHelper"

    .line 768
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unexpected exception reading SIM info:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 775
    :cond_9
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v0

    if-eq v0, v13, :cond_1

    move-object v0, v5

    move-object v1, v6

    goto/16 :goto_3

    .line 783
    :catch_2
    move-exception v0

    .line 780
    :goto_8
    :try_start_e
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "GaGtmHelper"

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unexpected exception reading network info:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v1, "GaGtmHelper"

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Pushing to data layer deviceBuildModel:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "deviceBuildId: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, ", deviceBuildType:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "deviceCustomization:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "deviceCustomizationRevision:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "deviceCustomerId: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, ", deviceSimMcc: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "deviceSimMnc: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, ", deviceNetworkMcc: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, ", "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "deviceNetworkMnc: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_5

    .line 783
    :catch_3
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    goto/16 :goto_8

    .line 770
    :catch_4
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_7
.end method

.method public pushStartSession()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 652
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x2

    .line 656
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "event"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "startSession"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 657
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "pushStartSession"

    .line 653
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pushTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 637
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/16 v0, 0xa

    .line 642
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "event"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "timing"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gagtm-timingCategory"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "gagtm-timingValue"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "gagtm-timingVar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p4, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "gagtm-timingLabel"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object p5, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 646
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushTiming category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " var="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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
    .line 692
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 693
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    if-nez v0, :cond_0

    .line 697
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 703
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_2

    .line 706
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 712
    :goto_1
    monitor-exit v1

    .line 713
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_1

    .line 712
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

    .line 698
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "GaGtmHelper"

    .line 707
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
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 260
    sget-object v4, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 261
    :try_start_0
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 278
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 280
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 294
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "GTM_buffered_events"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v3

    .line 296
    :try_start_4
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 299
    :try_start_5
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_3
    const/4 v2, 0x0

    .line 302
    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 305
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 308
    :goto_4
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 311
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 314
    :goto_5
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 321
    if-nez v1, :cond_8

    .line 328
    :goto_6
    if-nez v3, :cond_9

    .line 335
    :cond_0
    :goto_7
    :try_start_6
    monitor-exit v4

    .line 336
    return-void

    :cond_1
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "serializeQueueToFile"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 267
    :cond_2
    :try_start_7
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 270
    :goto_8
    monitor-exit v4

    return-void

    :cond_3
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "No buffered events to serialize to file."

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 283
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "GaGtmHelper"

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current appVersion="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :cond_5
    :try_start_8
    const-string/jumbo v2, "GaGtmHelper"

    const-string/jumbo v5, "Write version"

    .line 300
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 332
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 316
    :goto_9
    :try_start_9
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v3

    if-nez v3, :cond_a

    .line 321
    :goto_a
    if-nez v1, :cond_b

    .line 328
    :goto_b
    if-eqz v2, :cond_0

    .line 330
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    .line 332
    :catch_2
    move-exception v0

    goto :goto_7

    :cond_6
    :try_start_b
    const-string/jumbo v2, "GaGtmHelper"

    const-string/jumbo v5, "Write app version"

    .line 306
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 332
    :catchall_1
    move-exception v0

    .line 321
    :goto_c
    if-nez v1, :cond_c

    .line 328
    :goto_d
    if-nez v3, :cond_d

    .line 332
    :goto_e
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_7
    :try_start_d
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v2, "Write pending events to file"

    .line 312
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    .line 323
    :cond_8
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    .line 325
    :catch_3
    move-exception v0

    goto :goto_6

    .line 330
    :cond_9
    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_7

    .line 332
    :catch_4
    move-exception v0

    goto/16 :goto_7

    :cond_a
    :try_start_10
    const-string/jumbo v3, "GaGtmHelper"

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_a

    .line 332
    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_c

    .line 323
    :cond_b
    :try_start_11
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_b

    .line 325
    :catch_5
    move-exception v0

    goto :goto_b

    .line 323
    :cond_c
    :try_start_12
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_d

    .line 325
    :catch_6
    move-exception v1

    goto :goto_d

    .line 330
    :cond_d
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_e

    .line 332
    :catch_7
    move-exception v1

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_9

    :catch_9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_9
.end method

.method public setContainerDefaults()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 815
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 819
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-eqz v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v2

    .line 828
    if-eqz v2, :cond_4

    const-string/jumbo v0, "gagtm-dispatchPeriod"

    .line 836
    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 837
    if-lez v0, :cond_6

    .line 842
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v3

    .line 843
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 846
    :goto_2
    invoke-virtual {v3, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    const-string/jumbo v0, "gagtm-forceLocalDispatch"

    .line 849
    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 851
    :goto_3
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 854
    :goto_4
    if-nez v0, :cond_a

    :cond_0
    :goto_5
    const-string/jumbo v0, "gagtm-exceptionMaxReportedRows"

    .line 865
    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 867
    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxReportedRows(I)V

    const-string/jumbo v0, "gagtm-exceptionMaxTraversedRows"

    .line 870
    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 872
    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxTraversedRows(I)V

    const-string/jumbo v0, "gagtm-exceptionPackageNames"

    .line 875
    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setEnabledPackageNames(Ljava/lang/String;)V

    .line 877
    return-void

    :cond_1
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v2, "setContainerDefaults"

    .line 816
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 820
    :cond_2
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 823
    :goto_6
    return-void

    :cond_3
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "container holder is null exiting"

    .line 821
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 829
    :cond_4
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 832
    :goto_7
    return-void

    :cond_5
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "container is null exiting"

    .line 830
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_6
    const/16 v0, 0x708

    .line 840
    goto :goto_1

    :cond_7
    const-string/jumbo v4, "GaGtmHelper"

    .line 844
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gaDispatchPeriod:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    move v0, v1

    .line 849
    goto :goto_3

    :cond_9
    const-string/jumbo v1, "GaGtmHelper"

    .line 852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gaForceLocalDispatch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 855
    :cond_a
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "gaForceLocalDispatch will be ignored, consider removing it from your container"

    .line 856
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method
