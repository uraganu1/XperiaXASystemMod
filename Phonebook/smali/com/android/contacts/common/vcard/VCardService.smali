.class public Lcom/android/contacts/common/vcard/VCardService;
.super Landroid/app/Service;
.source "VCardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;,
        Lcom/android/contacts/common/vcard/VCardService$MyBinder;
    }
.end annotation


# static fields
.field private static final ALLOW_LONG_FILE_NAME:Z = false

.field public static final CACHE_FILE_PREFIX:Ljava/lang/String; = "import_tmp_"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MSG_SET_AVAILABLE_EXPORT_DESTINATION:I = 0x5

.field static final TYPE_EXPORT:I = 0x2

.field static final TYPE_IMPORT:I = 0x1


# instance fields
.field private mBinder:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

.field private mCallingActivity:Ljava/lang/String;

.field private mCurrentJobId:I

.field private mErrorReason:Ljava/lang/String;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mExtensionsToConsider:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileIndexMaximum:I

.field private mFileIndexMinimum:I

.field private mFileNameExtension:Ljava/lang/String;

.field private mFileNamePrefix:Ljava/lang/String;

.field private mFileNameSuffix:Ljava/lang/String;

.field private final mRemainingScannerConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mReservedDestination:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningJobMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/contacts/common/vcard/ProcessorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDirectory:Ljava/io/File;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 0
    .param p1, "client"    # Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/VCardService;->removeConnectionClient(Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/contacts/common/vcard/VCardService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 104
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    .line 123
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mTargetDirectory:Ljava/io/File;

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    .line 60
    return-void
.end method

.method private declared-synchronized cancelAllRequestsAndShutdown()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/vcard/ProcessorBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/vcard/ProcessorBase;->cancel(Z)Z

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 448
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 443
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private clearCache()V
    .locals 7

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardService;->fileList()[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 456
    .local v0, "fileName":Ljava/lang/String;
    const-string/jumbo v4, "import_tmp_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 458
    sget-object v4, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remove a temporary file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/vcard/VCardService;->deleteFile(Ljava/lang/String;)Z

    .line 455
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getAppropriateDestination(Ljava/io/File;)Ljava/lang/String;
    .locals 17
    .param p1, "destDirectory"    # Ljava/io/File;

    .prologue
    .line 489
    const/4 v4, 0x0

    .line 492
    .local v4, "fileIndexDigit":I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileIndexMaximum:I

    .local v11, "tmp":I
    :goto_0
    if-lez v11, :cond_0

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v11, v11, 0xa

    goto :goto_0

    .line 495
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "%s%0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "d%s"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "bodyFormat":Ljava/lang/String;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v13, v12, v14

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 500
    .local v8, "possibleBody":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x8

    if-gt v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_2

    .line 501
    :cond_1
    sget-object v12, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "This code does not allow any long file name."

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 503
    const-string/jumbo v13, "%s.%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 502
    const v13, 0x7f0902a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/contacts/common/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 504
    sget-object v12, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "File name becomes too long."

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v12, 0x0

    return-object v12

    .line 509
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileIndexMinimum:I

    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileIndexMaximum:I

    if-gt v5, v12, :cond_7

    .line 510
    const/4 v6, 0x1

    .line 511
    .local v6, "numberIsAvailable":Z
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v13, v12, v14

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "body":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "possibleExtension$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 516
    .local v9, "possibleExtension":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 517
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 518
    .local v7, "path":Ljava/lang/String;
    monitor-enter p0

    .line 520
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v12, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 521
    sget-object v12, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "%s is already being exported."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    const/4 v6, 0x0

    monitor-exit p0

    .line 531
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "possibleExtension":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v6, :cond_6

    .line 532
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v9    # "possibleExtension":Ljava/lang/String;
    :cond_5
    monitor-exit p0

    .line 526
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 527
    const/4 v6, 0x0

    .line 528
    goto :goto_2

    .line 518
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 509
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "possibleExtension":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 536
    .end local v1    # "body":Ljava/lang/String;
    .end local v6    # "numberIsAvailable":Z
    .end local v10    # "possibleExtension$iterator":Ljava/util/Iterator;
    :cond_7
    sget-object v12, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    .line 537
    const-string/jumbo v13, "Reached vCard number limit. Maybe there are too many vCard in the storage"

    .line 536
    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const v12, 0x7f09029f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/common/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 539
    const/4 v12, 0x0

    return-object v12
.end method

.method private initExporterParams()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 154
    const v5, 0x7f090045

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    .line 155
    const v5, 0x7f090046

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    .line 156
    const v5, 0x7f090047

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    .line 158
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    .line 159
    iget-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    const v5, 0x7f090048

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "additionalExtensions":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 164
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 165
    .local v1, "extension":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "trimed":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 167
    iget-object v7, p0, Lcom/android/contacts/common/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "extension":Ljava/lang/String;
    .end local v3    # "trimed":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 173
    .local v2, "resources":Landroid/content/res/Resources;
    const v4, 0x7f0a0007

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileIndexMinimum:I

    .line 174
    const v4, 0x7f0a0008

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/contacts/common/vcard/VCardService;->mFileIndexMaximum:I

    .line 153
    return-void
.end method

.method private declared-synchronized removeConnectionClient(Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;

    .prologue
    monitor-enter p0

    .line 404
    :try_start_0
    sget-object v0, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Removing custom MediaScannerConnectionClient."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 406
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 403
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopServiceIfAppropriate()V
    .locals 11

    .prologue
    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 345
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 355
    .local v4, "size":I
    new-array v5, v4, [I

    .line 356
    .local v5, "toBeRemoved":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 357
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 358
    .local v2, "jobId":I
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 359
    .local v3, "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ProcessorBase;->isDone()Z

    move-result v6

    if-nez v6, :cond_1

    .line 360
    sget-object v6, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "Found unfinished job (id: %d)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 365
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    aget v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    monitor-exit p0

    .line 367
    return-void

    .line 371
    .end local v1    # "j":I
    :cond_1
    :try_start_1
    aput v2, v5, v0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v2    # "jobId":I
    .end local v3    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 378
    .end local v0    # "i":I
    .end local v4    # "size":I
    .end local v5    # "toBeRemoved":[I
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 379
    sget-object v6, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "MediaScanner update is in progress."

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 380
    return-void

    .line 383
    :cond_4
    :try_start_2
    sget-object v6, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "No unfinished job. Stop this service."

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v6, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 385
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopSelf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 343
    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private declared-synchronized tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z
    .locals 3
    .param p1, "processor"    # Lcom/android/contacts/common/vcard/ProcessorBase;

    .prologue
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 267
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    sget-object v1, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to excetute a job."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized handleCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 10
    .param p1, "request"    # Lcom/android/contacts/common/vcard/CancelRequest;
    .param p2, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;

    .prologue
    monitor-enter p0

    .line 277
    :try_start_0
    iget v0, p1, Lcom/android/contacts/common/vcard/CancelRequest;->jobId:I

    .line 278
    .local v0, "jobId":I
    sget-object v5, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Received cancel request. (id: %d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 281
    .local v3, "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    iget-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 283
    if-eqz v3, :cond_2

    .line 284
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/contacts/common/vcard/ProcessorBase;->cancel(Z)Z

    .line 285
    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ProcessorBase;->getType()I

    move-result v4

    .line 286
    .local v4, "type":I
    if-eqz p2, :cond_0

    .line 287
    invoke-interface {p2, p1, v4}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onCancelRequest(Lcom/android/contacts/common/vcard/CancelRequest;I)V

    .line 289
    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 291
    check-cast v3, Lcom/android/contacts/common/vcard/ExportProcessor;

    .end local v3    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    invoke-virtual {v3}, Lcom/android/contacts/common/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/common/vcard/ExportRequest;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "path":Ljava/lang/String;
    sget-object v5, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    .line 293
    const-string/jumbo v6, "Cancel reservation for the path %s if appropriate"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 292
    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v5, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 295
    sget-object v5, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Not reserved."

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 276
    return-void

    .line 303
    .restart local v3    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_2
    :try_start_1
    const-string/jumbo v5, "notification"

    .line 302
    invoke-virtual {p0, v5}, Lcom/android/contacts/common/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 304
    .local v1, "nm":Landroid/app/NotificationManager;
    const-string/jumbo v5, "VCardServiceProgress"

    invoke-virtual {v1, v5, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 305
    sget-object v5, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Tried to remove unknown job (id: %d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "jobId":I
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v3    # "processor":Lcom/android/contacts/common/vcard/ProcessorBase;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized handleExportRequest(Lcom/android/contacts/common/vcard/ExportRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 7
    .param p1, "request"    # Lcom/android/contacts/common/vcard/ExportRequest;
    .param p2, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;

    .prologue
    monitor-enter p0

    .line 233
    :try_start_0
    new-instance v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    iget v3, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    iget-object v4, p0, Lcom/android/contacts/common/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/vcard/ExportProcessor;-><init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/vcard/VCardService;->tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p1, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, "path":Ljava/lang/String;
    sget-object v0, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Reserve the path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    sget-object v0, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    .line 239
    const-string/jumbo v1, "The path %s is already reserved. Reject export request"

    .line 238
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 239
    const/4 v3, 0x0

    aput-object v6, v2, v3

    .line 238
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-eqz p2, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 244
    const/4 v2, 0x0

    aput-object v6, v1, v2

    .line 243
    const v2, 0x7f0903a0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-interface {p2, p1, v0}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 246
    return-void

    .line 249
    :cond_1
    if-eqz p2, :cond_2

    .line 250
    :try_start_1
    iget v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, p1, v0}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportProcessed(Lcom/android/contacts/common/vcard/ExportRequest;I)V

    .line 252
    :cond_2
    iget v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "path":Ljava/lang/String;
    :cond_3
    :goto_0
    monitor-exit p0

    .line 232
    return-void

    .line 254
    :cond_4
    if-eqz p2, :cond_3

    .line 255
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p2, p1, v0}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/common/vcard/ExportRequest;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleFinishExportNotification(IZ)V
    .locals 7
    .param p1, "jobId"    # I
    .param p2, "successful"    # Z

    .prologue
    monitor-enter p0

    .line 419
    :try_start_0
    sget-object v3, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received vCard export finish notification (id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 420
    const-string/jumbo v4, "Result: "

    .line 419
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 420
    if-eqz p2, :cond_0

    const-string/jumbo v2, "success"

    .line 419
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ProcessorBase;

    .line 422
    .local v0, "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 423
    if-nez v0, :cond_1

    .line 424
    sget-object v2, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Tried to remove unknown job (id: %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .end local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 418
    return-void

    .line 420
    :cond_0
    :try_start_1
    const-string/jumbo v2, "failure"

    goto :goto_0

    .line 425
    .restart local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_1
    instance-of v2, v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    if-nez v2, :cond_2

    .line 426
    sget-object v2, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    .line 427
    const-string/jumbo v3, "Removed job (id: %s) isn\'t ExportProcessor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 429
    .restart local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    :cond_2
    :try_start_2
    check-cast v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    .end local v0    # "job":Lcom/android/contacts/common/vcard/ProcessorBase;
    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/common/vcard/ExportRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/common/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remove reserved path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized handleFinishImportNotification(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "successful"    # Z

    .prologue
    monitor-enter p0

    .line 411
    :try_start_0
    sget-object v1, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received vCard import finish notification (id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "). "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    const-string/jumbo v2, "Result: "

    .line 411
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 412
    if-eqz p2, :cond_0

    const-string/jumbo v0, "success"

    .line 411
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mRunningJobMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 414
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 410
    return-void

    .line 412
    :cond_0
    :try_start_1
    const-string/jumbo v0, "failure"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleImportRequest(Ljava/util/List;Lcom/android/contacts/common/vcard/VCardImportExportListener;Z)V
    .locals 8
    .param p2, "listener"    # Lcom/android/contacts/common/vcard/VCardImportExportListener;
    .param p3, "isFromNfc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportRequest;",
            ">;",
            "Lcom/android/contacts/common/vcard/VCardImportExportListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/vcard/ImportRequest;>;"
    monitor-enter p0

    .line 211
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 212
    .local v7, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 213
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/vcard/ImportRequest;

    .line 215
    .local v3, "request":Lcom/android/contacts/common/vcard/ImportRequest;
    new-instance v0, Lcom/android/contacts/common/vcard/ImportProcessor;

    iget v4, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    move-object v1, p0

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/common/vcard/ImportProcessor;-><init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardImportExportListener;Lcom/android/contacts/common/vcard/ImportRequest;IZ)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/vcard/VCardService;->tryExecute(Lcom/android/contacts/common/vcard/ProcessorBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    if-eqz p2, :cond_0

    .line 218
    iget v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, v3, v0, v6}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportProcessed(Lcom/android/contacts/common/vcard/ImportRequest;II)V

    .line 220
    :cond_0
    iget v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mCurrentJobId:I

    .line 212
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 222
    :cond_1
    if-eqz p2, :cond_2

    .line 223
    invoke-interface {p2, v3}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->onImportFailed(Lcom/android/contacts/common/vcard/ImportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "request":Lcom/android/contacts/common/vcard/ImportRequest;
    :cond_2
    monitor-exit p0

    .line 210
    return-void

    .end local v6    # "i":I
    .end local v7    # "size":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleRequestAvailableExportDestination(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 9
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "storagePath"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 318
    :try_start_0
    sget-object v4, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Received available export destination request."

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/vcard/VCardService;->mTargetDirectory:Ljava/io/File;

    .line 321
    .local v3, "targetDirectory":Ljava/io/File;
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/contacts/common/vcard/VCardService;->getAppropriateDestination(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 324
    const/4 v4, 0x0

    .line 325
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 324
    invoke-static {v4, v5, v6, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 332
    .local v1, "message":Landroid/os/Message;
    :goto_1
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    .line 317
    return-void

    .line 320
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "targetDirectory":Ljava/io/File;
    :cond_0
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3    # "targetDirectory":Ljava/io/File;
    goto :goto_0

    .line 329
    .restart local v2    # "path":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/common/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 327
    const/4 v5, 0x0

    .line 328
    const/4 v6, 0x5

    .line 329
    const v7, 0x7f0e0025

    const/4 v8, 0x0

    .line 327
    invoke-static {v5, v6, v7, v8, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "message":Landroid/os/Message;
    goto :goto_1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Failed to send reply for available export destination request."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "targetDirectory":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mBinder:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 148
    new-instance v0, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;-><init>(Lcom/android/contacts/common/vcard/VCardService;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->mBinder:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    .line 149
    sget-object v0, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "vCard Service is being created."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->initExporterParams()V

    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "VCardService is being destroyed."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->cancelAllRequestsAndShutdown()V

    .line 205
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->clearCache()V

    .line 206
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 202
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 179
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 181
    const-string/jumbo v2, "CALLING_ACTIVITY"

    .line 180
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    .line 193
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 183
    :cond_1
    iput-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->mCallingActivity:Ljava/lang/String;

    .line 184
    if-nez p1, :cond_0

    .line 189
    const-string/jumbo v1, "notification"

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 190
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0
.end method

.method declared-synchronized updateMediaScanner(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 389
    :try_start_0
    sget-object v1, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaScanner is being updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    sget-object v1, Lcom/android/contacts/common/vcard/VCardService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "MediaScanner update is requested after executor\'s being shut down. Ignoring the update request"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 394
    return-void

    .line 397
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;-><init>(Lcom/android/contacts/common/vcard/VCardService;Ljava/lang/String;)V

    .line 398
    .local v0, "client":Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;
    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 388
    return-void

    .end local v0    # "client":Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
