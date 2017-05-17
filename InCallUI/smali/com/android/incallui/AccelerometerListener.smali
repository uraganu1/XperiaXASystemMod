.class public final Lcom/android/incallui/AccelerometerListener;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AccelerometerListener$OrientationListener;,
        Lcom/android/incallui/AccelerometerListener$1;,
        Lcom/android/incallui/AccelerometerListener$2;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;

.field private mOrientation:I

.field private mPendingOrientation:I

.field private mSensor:Landroid/hardware/Sensor;

.field mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/AccelerometerListener;)Lcom/android/incallui/AccelerometerListener$OrientationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/incallui/AccelerometerListener;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/incallui/AccelerometerListener;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/incallui/AccelerometerListener;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/AccelerometerListener;DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/incallui/AccelerometerListener;->onSensorEvent(DDD)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/AccelerometerListener$OrientationListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/incallui/AccelerometerListener$OrientationListener;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/android/incallui/AccelerometerListener$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AccelerometerListener$1;-><init>(Lcom/android/incallui/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 145
    new-instance v0, Lcom/android/incallui/AccelerometerListener$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/AccelerometerListener$2;-><init>(Lcom/android/incallui/AccelerometerListener;)V

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p2, p0, Lcom/android/incallui/AccelerometerListener;->mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;

    .line 68
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 69
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    .line 66
    return-void
.end method

.method private onSensorEvent(DDD)V
    .locals 13
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 120
    const-wide/16 v8, 0x0

    cmpl-double v5, p1, v8

    if-eqz v5, :cond_0

    const-wide/16 v8, 0x0

    cmpl-double v5, p3, v8

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const-wide/16 v8, 0x0

    cmpl-double v5, p5, v8

    if-eqz v5, :cond_0

    .line 123
    invoke-static/range {p1 .. p4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 125
    .local v6, "xy":D
    move-wide/from16 v0, p5

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 127
    .local v2, "angle":D
    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v2

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double v2, v8, v10

    .line 128
    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    cmpl-double v5, v2, v8

    if-lez v5, :cond_2

    const/4 v4, 0x1

    .line 130
    .local v4, "orientation":I
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/incallui/AccelerometerListener;->setOrientation(I)V

    .line 115
    return-void

    .line 128
    .end local v4    # "orientation":I
    :cond_2
    const/4 v4, 0x2

    .restart local v4    # "orientation":I
    goto :goto_0
.end method

.method private setOrientation(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget v2, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    monitor-exit p0

    .line 91
    return-void

    .line 97
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget v2, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    if-eq v2, p1, :cond_2

    .line 102
    iput p1, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    .line 103
    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 105
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/16 v0, 0x64

    .line 107
    .local v0, "delay":I
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "delay":I
    .end local v1    # "m":Landroid/os/Message;
    :goto_1
    monitor-exit p0

    .line 87
    return-void

    .line 106
    .restart local v1    # "m":Landroid/os/Message;
    :cond_1
    const/16 v0, 0x1f4

    .restart local v0    # "delay":I
    goto :goto_0

    .line 110
    .end local v0    # "delay":I
    .end local v1    # "m":Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput v2, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 88
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public enable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 73
    const-string/jumbo v0, "AccelerometerListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    monitor-enter p0

    .line 75
    if-eqz p1, :cond_0

    .line 76
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/incallui/AccelerometerListener;->mOrientation:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I

    .line 78
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener;->mSensor:Landroid/hardware/Sensor;

    .line 79
    const/4 v3, 0x3

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 72
    return-void

    .line 81
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 82
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
