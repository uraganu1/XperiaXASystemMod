.class Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;
.super Ljava/lang/Object;
.source "CommonCodeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VoiceMailEntry"
.end annotation


# static fields
.field private static final MIN_TIME_INTERVAL:J = 0x1388L


# instance fields
.field private mLastTime:J

.field private final mLock:Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;

.field private mNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;)Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mLock:Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->getVoicemailNumber(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;-><init>(Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mLock:Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mNumber:Ljava/util/Map;

    .line 321
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mLastTime:J

    .line 323
    return-void
.end method

.method private getVoicemailNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sub"    # I

    .prologue
    .line 352
    invoke-static {p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getVoiceMailNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVoicemailNumber(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 356
    if-nez p1, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mNumber:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 361
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->getVoicemailNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mNumber:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 363
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->getVoicemailNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mLastTime:J

    .line 355
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mNumber:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 366
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->getVoicemailNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private reload(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry$1;-><init>(Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry$1;->start()V

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mLock:Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;->lock()V

    .line 338
    return-void
.end method


# virtual methods
.method public declared-synchronized getNumber(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 330
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mLastTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->reload(Landroid/content/Context;)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->mNumber:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
