.class public Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;
.super Ljava/lang/Object;
.source "ProximitySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$State;,
        Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;
    }
.end annotation


# instance fields
.field private mManagerEnabled:Z

.field private final mProximitySensorListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const-string/jumbo v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 189
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 190
    .local v0, "proximitySensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 192
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->mProximitySensorListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;

    .line 186
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;

    invoke-direct {v2, v1, v0, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$Listener;)V

    .line 194
    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->mProximitySensorListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;

    goto :goto_0
.end method


# virtual methods
.method public disable(Z)V
    .locals 1
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->mProximitySensorListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->mManagerEnabled:Z

    if-eqz v0, :cond_0

    .line 230
    if-eqz p1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->mProximitySensorListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->unregisterWhenFar()V

    .line 235
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->mManagerEnabled:Z

    .line 228
    :cond_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->mProximitySensorListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->unregister()V

    goto :goto_0
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->mProximitySensorListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->mManagerEnabled:Z

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->mProximitySensorListener:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager$ProximitySensorEventListener;->register()V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorManager;->mManagerEnabled:Z

    goto :goto_0
.end method
