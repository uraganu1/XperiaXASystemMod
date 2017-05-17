.class Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;
.super Ljava/lang/Object;
.source "ProximitySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProximitySensorEventListener"
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_calllog_ProximitySensorManager$StateSwitchesValues:[I = null

.field private static final FAR_THRESHOLD:F = 5.0f


# instance fields
.field private mLastState:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

.field private final mListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;

.field private final mMaxValue:F

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mWaitingForFarState:Z


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_calllog_ProximitySensorManager$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->-com_sonyericsson_android_socialphonebook_calllog_ProximitySensorManager$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->-com_sonyericsson_android_socialphonebook_calllog_ProximitySensorManager$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->values()[Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->FAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->NEAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->-com_sonyericsson_android_socialphonebook_calllog_ProximitySensorManager$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "proximitySensor"    # Landroid/hardware/Sensor;
    .param p3, "listener"    # Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 94
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mProximitySensor:Landroid/hardware/Sensor;

    .line 95
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mMaxValue:F

    .line 96
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;

    .line 98
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->FAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

    .line 92
    return-void
.end method

.method private getStateFromValue(F)Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 142
    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->FAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->NEAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    goto :goto_0
.end method

.method private unregisterWithoutNotification()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

    .line 180
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 133
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    if-nez v2, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-nez v2, :cond_1

    return-void

    .line 107
    :cond_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v3

    .line 109
    .local v1, "value":F
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->getStateFromValue(F)Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    move-result-object v0

    .line 110
    .local v0, "state":Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_2

    monitor-exit p0

    return-void

    .line 114
    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    .line 116
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->FAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    if-ne v2, v3, :cond_3

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 121
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->-getcom_sonyericsson_android_socialphonebook_calllog_ProximitySensorManager$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 110
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 123
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;->onNear()V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;

    invoke-interface {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;->onFar()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized register()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 158
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    .line 172
    .local v0, "lastState":Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->FAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 175
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->FAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    if-eq v0, v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;->onFar()V

    .line 165
    :cond_0
    return-void

    .line 167
    .end local v0    # "lastState":Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterWhenFar()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;->FAR:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;

    if-ne v0, v1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 148
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
