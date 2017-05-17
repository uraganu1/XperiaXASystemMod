.class public Lcom/sonymobile/conversations/transaction/RetryScheduler;
.super Ljava/lang/Object;
.source "RetryScheduler.java"


# static fields
.field private static mRetryAlarmEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonymobile/conversations/transaction/RetryScheduler;->mRetryAlarmEnabled:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelRetryAlarm(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 82
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.ACTION_ONALARM"

    .line 83
    const-class v4, Lcom/sonymobile/conversations/transaction/TransactionService;

    .line 82
    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v2, "service":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    .line 84
    invoke-static {p0, v6, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 86
    .local v1, "operation":Landroid/app/PendingIntent;
    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 87
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 88
    sput-boolean v6, Lcom/sonymobile/conversations/transaction/RetryScheduler;->mRetryAlarmEnabled:Z

    .line 81
    return-void
.end method

.method public static isRetryAlarmEnabled()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/sonymobile/conversations/transaction/RetryScheduler;->mRetryAlarmEnabled:Z

    return v0
.end method

.method public static setRetryAlarm(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v7

    .line 50
    const-wide v8, 0x7fffffffffffffffL

    .line 49
    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getPendingMessages(J)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    .end local v1    # "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v1, :cond_1

    .line 56
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 59
    const-string/jumbo v7, "due_time"

    .line 58
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 61
    .local v4, "retryAt":J
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.ACTION_ONALARM"

    .line 62
    const-class v8, Lcom/sonymobile/conversations/transaction/TransactionService;

    const/4 v9, 0x0

    .line 61
    invoke-direct {v6, v7, v9, p0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v6, "service":Landroid/content/Intent;
    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 63
    invoke-static {p0, v7, v6, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 66
    .local v3, "operation":Landroid/app/PendingIntent;
    const-string/jumbo v7, "alarm"

    .line 65
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 67
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 68
    const/4 v7, 0x1

    sput-boolean v7, Lcom/sonymobile/conversations/transaction/RetryScheduler;->mRetryAlarmEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v3    # "operation":Landroid/app/PendingIntent;
    .end local v4    # "retryAt":J
    .end local v6    # "service":Landroid/content/Intent;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_1
    return-void

    .line 51
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v7, "Get pending messages failed"

    invoke-static {v7, v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 75
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "e":Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v7

    .line 76
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 75
    throw v7
.end method
