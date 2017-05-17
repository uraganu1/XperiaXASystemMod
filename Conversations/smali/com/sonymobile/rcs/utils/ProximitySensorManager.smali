.class public Lcom/sonymobile/rcs/utils/ProximitySensorManager;
.super Ljava/lang/Object;
.source "ProximitySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/rcs/utils/ProximitySensorManager$1;,
        Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;,
        Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;,
        Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;
    }
.end annotation


# instance fields
.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private mManagerEnabled:Z

.field private final mProximitySensorListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v2, "sensor"

    .line 131
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    const/16 v2, 0x8

    .line 133
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 134
    .local v0, "proximitySensor":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 138
    new-instance v2, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;

    invoke-direct {v2, v1, v0, p2}, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;)V

    iput-object v2, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->mProximitySensorListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;

    .line 142
    :goto_0
    return-void

    .line 136
    :cond_0
    iput-object v3, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->mProximitySensorListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->mProximitySensorListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->mManagerEnabled:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->mProximitySensorListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->unregister()V

    .line 170
    iput-boolean v2, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->mManagerEnabled:Z

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "SensorListener - Unregister "

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->mProximitySensorListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->mManagerEnabled:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->mProximitySensorListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->register()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->mManagerEnabled:Z

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v1, "SensorListener - register "

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method
