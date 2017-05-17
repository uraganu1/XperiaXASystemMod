.class public Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;
.super Ljava/lang/Object;
.source "GaGtmExceptionParser.java"


# static fields
.field private static volatile mAppVersion:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static volatile mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile mEnabledPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static volatile mMaxReportedRows:I

.field private static volatile mMaxTraversedRows:I

.field private static mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    sput-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    const/16 v0, 0xa

    .line 41
    sput v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    const/16 v0, 0x14

    .line 46
    sput v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    const-string/jumbo v0, ""

    .line 48
    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mAppVersion:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mStartTime:J

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private static createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "depth"    # I

    .prologue
    .line 286
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "retval":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    .line 291
    if-le p1, v2, :cond_1

    const-string/jumbo v2, "... "

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 311
    :goto_1
    return-object v1

    .end local v1    # "retval":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v2, "GaGtmHelper"

    const-string/jumbo v3, "createThrowableDescription"

    .line 287
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    .restart local v1    # "retval":Ljava/lang/StringBuilder;
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 297
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    .line 303
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, " Cause: "

    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .local v2, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 335
    :goto_0
    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 331
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x78

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "("

    .line 332
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 14
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .local v6, "retval":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 349
    .local v9, "stackTraceIndex":I
    const/4 v2, 0x0

    .line 350
    .local v2, "done":Z
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .local v8, "stackTraceElementArray":[Ljava/lang/StackTraceElement;
    const/4 v10, 0x0

    .local v10, "stackTraceLength":I
    const/4 v0, 0x0

    .local v0, "addedRows":I
    const/4 v3, 0x0

    .line 357
    .local v3, "firstInterestingRow":I
    sget-object v12, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 358
    :try_start_0
    sget v4, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    .line 359
    .local v4, "maxReportedRows":I
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    sget-object v12, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 362
    :try_start_1
    sget v5, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 363
    .local v5, "maxStackDepth":I
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    if-nez v8, :cond_1

    const-string/jumbo v11, " Stack trace was null"

    .line 413
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_0
    return-object v6

    .line 359
    .end local v4    # "maxReportedRows":I
    .end local v5    # "maxStackDepth":I
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 363
    .restart local v4    # "maxReportedRows":I
    :catchall_1
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    .line 367
    .restart local v5    # "maxStackDepth":I
    :cond_1
    array-length v10, v8

    const-string/jumbo v11, " S:"

    .line 368
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const/4 v2, 0x0

    .line 372
    :goto_0
    if-eqz v2, :cond_3

    .line 394
    :cond_2
    const/4 v2, 0x0

    .line 395
    move v9, v3

    .line 396
    :goto_1
    if-nez v2, :cond_0

    if-ge v9, v5, :cond_0

    if-ge v0, v4, :cond_0

    if-ge v9, v10, :cond_0

    .line 398
    aget-object v7, v8, v9

    .line 400
    .local v7, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-nez v7, :cond_6

    .line 409
    const/4 v2, 0x1

    goto :goto_1

    .line 372
    .end local v7    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_3
    if-ge v9, v5, :cond_2

    if-ge v9, v10, :cond_2

    .line 374
    aget-object v7, v8, v9

    .line 376
    .restart local v7    # "stackTraceElement":Ljava/lang/StackTraceElement;
    if-nez v7, :cond_5

    .line 389
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 379
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "classname":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->packageNameIsEnabled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 381
    move v3, v9

    .line 382
    const/4 v2, 0x1

    .line 383
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string/jumbo v11, "GaGtmHelper"

    .line 384
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "firstInterestingRow="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 402
    .end local v1    # "classname":Ljava/lang/String;
    :cond_6
    invoke-static {v8, v9}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 405
    add-int/lit8 v0, v0, 0x1

    .line 406
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public static enableExceptionParsing(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 152
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    sput-object p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mContext:Landroid/content/Context;

    .line 154
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 164
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 172
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mAppVersion:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    new-instance v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$1;

    invoke-direct {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$1;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 208
    return-void

    .line 156
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v2, "setEnabledPackageNames is empty!"

    .line 157
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 162
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v2, "enableExceptionParsing was called twice but it should normally not be done!"

    .line 165
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static generateCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    :goto_0
    if-nez p0, :cond_2

    .line 227
    :cond_0
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 230
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "GaGtmHelper"

    const-string/jumbo v3, "GenerateCrash"

    .line 222
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 239
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 243
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 225
    :cond_2
    if-eqz p1, :cond_0

    .line 234
    :try_start_1
    invoke-static {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->getStackTraceHash(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "hash":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateNormalCrash(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "hash":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "GaGtmHelper"

    const-string/jumbo v3, "Thread or throwable was null"

    .line 228
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .restart local v1    # "throwable":Ljava/lang/Throwable;
    :cond_4
    const-string/jumbo v2, "GaGtmHelper"

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "internal exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static generateNormalCrash(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "hash"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "description":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "H:"

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " T:"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->replaceAllNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, v3}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :goto_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushException(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    :goto_2
    return-void

    .end local v0    # "description":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v1, "GaGtmHelper"

    const-string/jumbo v2, "generateNormalCrash"

    .line 253
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v0    # "description":Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v1, "GaGtmHelper"

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uncaughtException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "GaGtmHelper"

    const-string/jumbo v2, "about to push exception"

    .line 271
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "GaGtmHelper"

    const-string/jumbo v2, "done pushing"

    .line 275
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static getRawStackTraceHashString(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 9
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v2, "retval":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .local v4, "stackTraceElementArray":[Ljava/lang/StackTraceElement;
    const/4 v6, 0x0

    .local v6, "stackTraceLength":I
    const/4 v5, 0x0

    .line 503
    .local v5, "stackTraceIndex":I
    const/4 v1, 0x0

    .line 506
    .local v1, "done":Z
    sget-object v8, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 507
    :try_start_0
    sget-object v7, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->replaceAllNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 515
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    .line 520
    :goto_0
    if-nez v4, :cond_2

    .line 525
    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :goto_2
    if-eqz v1, :cond_3

    .line 546
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 508
    .end local v0    # "cause":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 516
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 522
    :cond_2
    array-length v6, v4

    goto :goto_1

    :cond_3
    const/16 v7, 0x14

    .line 528
    if-ge v5, v7, :cond_0

    if-ge v5, v6, :cond_0

    .line 530
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v3, v7, v5

    .line 532
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-nez v3, :cond_4

    .line 542
    const/4 v1, 0x1

    goto :goto_2

    .line 534
    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private static getStackTraceHash(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v6, 0x0

    .line 468
    invoke-static {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->getRawStackTraceHashString(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "hashString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 471
    .local v0, "hash":I
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 475
    :goto_0
    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->intToByteArray(I)[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "retval":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, ""

    .line 481
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 487
    :goto_1
    return-object v2

    .end local v2    # "retval":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "GaGtmHelper"

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hashString:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v2    # "retval":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "GaGtmHelper"

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hashString base64:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static intToByteArray(I)[B
    .locals 3
    .param p0, "integer"    # I

    .prologue
    const/4 v1, 0x4

    .line 555
    new-array v0, v1, [B

    .local v0, "ret":[B
    const/4 v1, 0x3

    .line 556
    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 557
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 558
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    .line 559
    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 560
    return-object v0
.end method

.method private static packageNameIsEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 449
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 451
    :try_start_0
    sget-object v2, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 456
    monitor-exit v3

    return v4

    .line 451
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 452
    .local v0, "enabledPackageName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    monitor-exit v3

    const/4 v2, 0x1

    return v2

    .line 456
    .end local v0    # "enabledPackageName":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    .line 457
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static replaceAllNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 569
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 570
    .local v1, "length":I
    move-object v2, p0

    .local v2, "retval":Ljava/lang/String;
    const/4 v0, 0x0

    .line 572
    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 585
    return-object v2

    .line 574
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 580
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 572
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 581
    :cond_2
    move-object v2, p0

    goto :goto_2
.end method

.method public static setEnabledPackageNames(Ljava/lang/String;)V
    .locals 7
    .param p0, "arrayOfPackageNames"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    :goto_0
    sget-object v4, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 72
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    const-string/jumbo v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    .line 76
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 77
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 89
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 96
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    return-void

    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v3, "GaGtmHelper"

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEnabledPackageNames "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    .restart local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, " "

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 85
    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 96
    .end local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 82
    .restart local v1    # "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    .restart local v2    # "value":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .end local v2    # "value":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    .line 91
    .local v0, "i":I
    :goto_2
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    const-string/jumbo v5, "GaGtmHelper"

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "] \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static setMaxReportedRows(I)V
    .locals 3
    .param p0, "maxRows"    # I

    .prologue
    .line 105
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :goto_0
    if-eqz p0, :cond_2

    .line 118
    :cond_0
    :goto_1
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    sput p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    return-void

    :cond_1
    const-string/jumbo v0, "GaGtmHelper"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxReportedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 p0, 0xa

    .line 113
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GaGtmHelper"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value was 0, setMaxReportedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setMaxTraversedRows(I)V
    .locals 3
    .param p0, "maxRows"    # I

    .prologue
    .line 128
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :goto_0
    if-eqz p0, :cond_2

    .line 141
    :cond_0
    :goto_1
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    sput p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    return-void

    :cond_1
    const-string/jumbo v0, "GaGtmHelper"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxTraversedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 p0, 0x14

    .line 136
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GaGtmHelper"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value was 0, setMaxReportedRows:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;
    .locals 9
    .param p0, "stackTraceElementArray"    # [Ljava/lang/StackTraceElement;
    .param p1, "stackTraceIndex"    # I

    .prologue
    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v1, "retval":Ljava/lang/StringBuilder;
    aget-object v2, p0, p1

    .line 432
    .local v2, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".java"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fileName":Ljava/lang/String;
    const-string/jumbo v3, " "

    .line 434
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%02d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    return-object v1
.end method
