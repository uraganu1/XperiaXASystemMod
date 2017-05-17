.class public Lcom/sonymobile/rcs/utils/WakeLockUtils;
.super Ljava/lang/Object;
.source "WakeLockUtils.java"


# static fields
.field private static logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/utils/WakeLockUtils;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/utils/WakeLockUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/sonymobile/rcs/utils/WakeLockUtils;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized acquireWakeLock(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const-class v2, Lcom/sonymobile/rcs/utils/WakeLockUtils;

    monitor-enter v2

    .line 33
    :try_start_0
    sget-object v1, Lcom/sonymobile/rcs/utils/WakeLockUtils;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    .line 40
    :cond_0
    :goto_0
    sget-object v1, Lcom/sonymobile/rcs/utils/WakeLockUtils;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    :cond_1
    :goto_1
    monitor-exit v2

    .line 48
    return-void

    .line 33
    :cond_2
    if-eqz p0, :cond_0

    :try_start_1
    const-string/jumbo v1, "power"

    .line 35
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/rcs/utils/WakeLockUtils;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 38
    sget-object v1, Lcom/sonymobile/rcs/utils/WakeLockUtils;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 41
    :cond_3
    :try_start_2
    sget-object v1, Lcom/sonymobile/rcs/utils/WakeLockUtils;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 43
    sget-object v1, Lcom/sonymobile/rcs/utils/WakeLockUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sonymobile/rcs/utils/WakeLockUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    sget-object v1, Lcom/sonymobile/rcs/utils/WakeLockUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Acquired wakelock, tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static hasLock()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    sget-object v1, Lcom/sonymobile/rcs/utils/WakeLockUtils;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/utils/WakeLockUtils;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized releaseWakeLock(Ljava/lang/String;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/sonymobile/rcs/utils/WakeLockUtils;

    monitor-enter v1

    .line 56
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/utils/WakeLockUtils;->hasLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 64
    return-void

    .line 57
    :cond_1
    :try_start_1
    sget-object v0, Lcom/sonymobile/rcs/utils/WakeLockUtils;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 59
    sget-object v0, Lcom/sonymobile/rcs/utils/WakeLockUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/rcs/utils/WakeLockUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/sonymobile/rcs/utils/WakeLockUtils;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Released wakelock, tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
