.class public abstract Lcom/sonymobile/rcs/utils/PeriodicRefresher;
.super Ljava/lang/Object;
.source "PeriodicRefresher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/utils/PeriodicRefresher$1;,
        Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;,
        Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private alarmIntent:Landroid/app/PendingIntent;

.field private alarmReceiver:Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mRegisterTask:Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;

.field private pollingPeriod:I

.field private timerStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;-><init>(Lcom/sonymobile/rcs/utils/PeriodicRefresher;Lcom/sonymobile/rcs/utils/PeriodicRefresher$1;)V

    iput-object v0, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->alarmReceiver:Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;

    .line 63
    iput-boolean v3, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->timerStarted:Z

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->action:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->alarmIntent:Landroid/app/PendingIntent;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/rcs/utils/PeriodicRefresher;)Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/rcs/utils/PeriodicRefresher;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->mRegisterTask:Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonymobile/rcs/utils/PeriodicRefresher;Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;)Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/rcs/utils/PeriodicRefresher;
    .param p1, "x1"    # Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->mRegisterTask:Lcom/sonymobile/rcs/utils/PeriodicRefresher$RegisterTask;

    return-object p1
.end method


# virtual methods
.method public abstract periodicProcessing()V
.end method

.method public startTimer(I)V
    .locals 2
    .param p1, "expirePeriod"    # I

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 98
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->startTimer(ID)V

    .line 99
    return-void
.end method

.method public declared-synchronized startTimer(ID)V
    .locals 6
    .param p1, "expirePeriod"    # I
    .param p2, "delta"    # D

    .prologue
    monitor-enter p0

    .line 109
    if-lez p1, :cond_0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->stopTimer()V

    .line 121
    int-to-double v2, p1

    mul-double/2addr v2, p2

    double-to-int v1, v2

    iput v1, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->pollingPeriod:I

    .line 122
    iget-object v1, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->alarmReceiver:Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;

    new-instance v3, Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->action:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 134
    .local v0, "am":Landroid/app/AlarmManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    const/4 v1, 0x2

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->pollingPeriod:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 143
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->timerStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 144
    return-void

    .line 111
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :goto_2
    monitor-exit p0

    .line 114
    return-void

    .line 112
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Timer is deactivated"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 123
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start timer at period="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->pollingPeriod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s (expiration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "am":Landroid/app/AlarmManager;
    :cond_3
    const/4 v1, 0x2

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->pollingPeriod:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stopTimer()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v2, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->timerStarted:Z

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->timerStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 166
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->alarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 169
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->alarmReceiver:Lcom/sonymobile/rcs/utils/PeriodicRefresher$KeepAlive;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    :goto_1
    monitor-exit p0

    .line 175
    return-void

    :cond_1
    monitor-exit p0

    .line 152
    return-void

    .line 156
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Stop timer"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 174
    :catch_0
    move-exception v1

    .line 171
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v2, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/sonymobile/rcs/utils/PeriodicRefresher;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "IllegalArgumentException caught while unregistering broadcase receiver"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
