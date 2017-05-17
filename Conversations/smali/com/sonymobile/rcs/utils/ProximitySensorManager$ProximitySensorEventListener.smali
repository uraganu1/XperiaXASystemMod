.class Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;
.super Ljava/lang/Object;
.source "ProximitySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/utils/ProximitySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProximitySensorEventListener"
.end annotation


# instance fields
.field private final mFarStateListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;

.field private final mMaxValue:F

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "proximitySensor"    # Landroid/hardware/Sensor;
    .param p3, "listener"    # Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 75
    iput-object p2, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->mProximitySensor:Landroid/hardware/Sensor;

    .line 76
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->mMaxValue:F

    .line 77
    iput-object p3, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->mFarStateListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;

    .line 79
    return-void
.end method

.method private getStateFromValue(F)Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;
    .locals 1
    .param p1, "value"    # F

    .prologue
    const/high16 v0, 0x40a00000    # 5.0f

    .line 123
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;->FAR:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;->NEAR:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    goto :goto_1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 85
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    if-nez v2, :cond_1

    .line 91
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v3

    .line 96
    .local v1, "value":F
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->getStateFromValue(F)Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    move-result-object v0

    .line 98
    .local v0, "state":Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;
    sget-object v2, Lcom/sonymobile/rcs/utils/ProximitySensorManager$1;->$SwitchMap$com$sonymobile$rcs$utils$ProximitySensorManager$ProximityState:[I

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 110
    :goto_0
    :pswitch_0
    return-void

    .line 103
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->mFarStateListener:Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;

    invoke-interface {v2}, Lcom/sonymobile/rcs/utils/ProximitySensorManager$FarStateListener;->onFar()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized register()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 115
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregister()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 120
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
