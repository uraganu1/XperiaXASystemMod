.class public Lcom/android/mms/util/RateController;
.super Ljava/lang/Object;
.source "RateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/RateController$1;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/mms/util/RateController;

.field private static sMutexLock:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mAnswer:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static synthetic -set0(Lcom/android/mms/util/RateController;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/util/RateController;->mAnswer:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/android/mms/util/RateController;->sMutexLock:Ljava/util/concurrent/Semaphore;

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/mms/util/RateController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/RateController$1;-><init>(Lcom/android/mms/util/RateController;)V

    iput-object v0, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/mms/util/RateController;
    .locals 3

    .prologue
    const-class v1, Lcom/android/mms/util/RateController;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Uninitialized."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 90
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/mms/util/RateController;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v0, "Already initialized."

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 83
    :cond_0
    new-instance v0, Lcom/android/mms/util/RateController;

    invoke-direct {v0, p0}, Lcom/android/mms/util/RateController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 79
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized waitForAnswer()I
    .locals 4

    .prologue
    monitor-enter p0

    .line 138
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    const/16 v2, 0x4e20

    if-ge v1, v2, :cond_1

    .line 140
    :try_start_1
    const-string/jumbo v2, "Conversations"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Waiting for answer..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v1, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 143
    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/util/RateController;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_1
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    .line 148
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 144
    :catch_0
    move-exception v0

    .local v0, "_":Ljava/lang/InterruptedException;
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized isAllowedByUser()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    .line 118
    :try_start_0
    sget-object v3, Lcom/android/mms/util/RateController;->sMutexLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 120
    iget-object v3, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.android.mms.RATE_LIMIT_CONFIRMED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.mms.RATE_LIMIT_SURPASSED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    iget-object v3, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    invoke-direct {p0}, Lcom/android/mms/util/RateController;->waitForAnswer()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v3, v1, :cond_0

    .line 132
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    sget-object v2, Lcom/android/mms/util/RateController;->sMutexLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 130
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 131
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    .line 132
    :try_start_3
    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    sget-object v2, Lcom/android/mms/util/RateController;->sMutexLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 131
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final isLimitSurpassed()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long v8, v0, v2

    .line 102
    .local v8, "oneHourAgo":J
    iget-object v0, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 103
    sget-object v2, Landroid/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v4, "COUNT(*) AS rate"

    aput-object v4, v3, v11

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sent_time>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    .line 102
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 105
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 107
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    move v0, v10

    .line 111
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 108
    return v0

    :cond_0
    move v0, v11

    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 114
    :cond_2
    return v11

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 110
    throw v0
.end method

.method public final update()V
    .locals 4

    .prologue
    .line 94
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 95
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "sent_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 97
    sget-object v3, Landroid/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    .line 96
    invoke-static {v1, v2, v3, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 93
    return-void
.end method
