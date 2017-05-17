.class public Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;
.super Ljava/lang/Object;
.source "GaGtmExceptionParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final MAX_CAUSE_DEPTH:I = 0x2

.field private static final MAX_MESSAGE_LENGTH:I = 0x78

.field private static final MAX_REPORTED_ROWS_DEFAULT:I = 0xa

.field private static final MAX_TRAVERSED_ROWS_DEFAULT:I = 0x14

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

    .line 35
    sput-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    const/16 v0, 0xa

    .line 42
    sput v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    const/16 v0, 0x14

    .line 47
    sput v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    const-string/jumbo v0, ""

    .line 49
    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mAppVersion:Ljava/lang/String;

    .line 51
    sput-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mStartTime:J

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private static createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    .line 286
    if-le p1, v1, :cond_1

    const-string/jumbo v1, "... "

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 306
    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "createThrowableDescription"

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 292
    if-nez v1, :cond_2

    .line 298
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v2, " Cause: "

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static createThrowableDescriptionShort(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    .line 316
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 322
    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 326
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x78

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "("

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static createThrowableDescriptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/StringBuilder;
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 352
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    sget v7, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    .line 354
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_1
    sget v8, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 358
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 360
    if-nez v6, :cond_1

    const-string/jumbo v0, " Stack trace was null"

    .line 408
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_0
    return-object v5

    .line 354
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 358
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 362
    :cond_1
    array-length v9, v6

    const-string/jumbo v0, " S:"

    .line 363
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    move v2, v4

    move v1, v4

    .line 367
    :goto_0
    if-eqz v2, :cond_3

    :cond_2
    move v1, v0

    move v0, v4

    .line 391
    :goto_1
    if-nez v4, :cond_0

    if-ge v1, v8, :cond_0

    if-ge v0, v7, :cond_0

    if-ge v1, v9, :cond_0

    .line 393
    aget-object v2, v6, v1

    .line 395
    if-nez v2, :cond_7

    move v4, v3

    .line 404
    goto :goto_1

    .line 367
    :cond_3
    if-ge v1, v8, :cond_2

    if-ge v1, v9, :cond_2

    .line 369
    aget-object v10, v6, v1

    .line 371
    if-nez v10, :cond_5

    .line 384
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    .line 375
    invoke-static {v10}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->packageNameIsEnabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 378
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    move v2, v3

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "GaGtmHelper"

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "firstInterestingRow="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v2, v3

    goto :goto_2

    .line 397
    :cond_7
    invoke-static {v6, v1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->stackElementString([Ljava/lang/StackTraceElement;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 400
    add-int/lit8 v0, v0, 0x1

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static enableExceptionParsing(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 151
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    sput-object p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mContext:Landroid/content/Context;

    .line 153
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    :goto_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 163
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 171
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

    .line 177
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    new-instance v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$1;

    invoke-direct {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser$1;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 207
    return-void

    .line 155
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v2, "setEnabledPackageNames is empty!"

    .line 156
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 161
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v2, "enableExceptionParsing was called twice but it should normally not be done!"

    .line 164
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 176
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static generateCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :goto_0
    if-nez p0, :cond_2

    .line 226
    :cond_0
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "GenerateCrash"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 236
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 240
    :goto_2
    return-void

    .line 224
    :cond_2
    if-eqz p1, :cond_0

    .line 233
    :try_start_1
    invoke-static {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateNormalCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "Thread or throwable was null"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "GaGtmHelper"

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "internal exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static generateNormalCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " T:"

    .line 257
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

    .line 264
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    :goto_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushException(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    :goto_2
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "generateNormalCrash"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "GaGtmHelper"

    .line 265
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

    .line 266
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "GaGtmHelper"

    const-string/jumbo v1, "done pushing"

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static intToByteArray(I)[B
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 461
    new-array v0, v0, [B

    const/4 v1, 0x3

    .line 462
    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 463
    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 464
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    .line 465
    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 466
    return-object v0
.end method

.method private static packageNameIsEnabled(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 444
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    monitor-exit v1

    return v3

    .line 446
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 447
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 451
    :catchall_0
    move-exception v0

    .line 452
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static replaceAllNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 475
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v2

    move-object v0, p0

    .line 478
    :goto_0
    if-lt v1, v3, :cond_0

    .line 491
    return-object v0

    .line 480
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 486
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 478
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p0

    .line 487
    goto :goto_2
.end method

.method public static setEnabledPackageNames(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    sget-object v2, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    .line 75
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 76
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    return-void

    :cond_0
    const-string/jumbo v0, "GaGtmHelper"

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnabledPackageNames "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 84
    invoke-interface {v3, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 81
    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "GaGtmHelper"

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "] \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_4
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mEnabledPackageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-lt v1, v0, :cond_3

    goto/16 :goto_2
.end method

.method public static setMaxReportedRows(I)V
    .locals 4

    .prologue
    const/16 v0, 0xa

    .line 104
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    :goto_0
    if-eqz p0, :cond_1

    .line 117
    :goto_1
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    sput p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxReportedRows:I

    .line 119
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    return-void

    :cond_0
    const-string/jumbo v1, "GaGtmHelper"

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMaxReportedRows:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    move p0, v0

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "GaGtmHelper"

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value was 0, setMaxReportedRows:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setMaxTraversedRows(I)V
    .locals 4

    .prologue
    const/16 v0, 0x14

    .line 127
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    :goto_0
    if-eqz p0, :cond_1

    .line 140
    :goto_1
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    sput p0, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->mMaxTraversedRows:I

    .line 142
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    return-void

    :cond_0
    const-string/jumbo v1, "GaGtmHelper"

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMaxTraversedRows:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    move p0, v0

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "GaGtmHelper"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value was 0, setMaxReportedRows:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    goto :goto_1

    .line 142
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

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    aget-object v1, p0, p1

    .line 427
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".java"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    .line 429
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    return-object v0
.end method
