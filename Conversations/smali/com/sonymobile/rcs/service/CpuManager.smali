.class public Lcom/sonymobile/rcs/service/CpuManager;
.super Ljava/lang/Object;
.source "CpuManager.java"


# static fields
.field private static powerLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/sonymobile/rcs/service/CpuManager;->powerLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/service/CpuManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 52
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sonymobile/rcs/service/CpuManager;->powerLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/service/CpuManager;->powerLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isCpuAlwaysOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string/jumbo v2, "RcsCore"

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/rcs/service/CpuManager;->powerLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    sget-object v1, Lcom/sonymobile/rcs/service/CpuManager;->powerLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 64
    iget-object v1, p0, Lcom/sonymobile/rcs/service/CpuManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/sonymobile/rcs/service/CpuManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "Always-on CPU activated"

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
