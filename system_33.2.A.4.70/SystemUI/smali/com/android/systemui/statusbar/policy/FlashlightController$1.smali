.class Lcom/android/systemui/statusbar/policy/FlashlightController$1;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method

.method private setCameraAvailable(Z)V
    .locals 4
    .param p1, "available"    # Z

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    monitor-enter v2

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get3(Lcom/android/systemui/statusbar/policy/FlashlightController;)Z

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 206
    .local v0, "changed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-set1(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 208
    if-eqz v0, :cond_1

    .line 209
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FlashlightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchAvailabilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-wrap0(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V

    .line 202
    :cond_1
    return-void

    .line 205
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 204
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setTorchMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    monitor-enter v2

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get2(Lcom/android/systemui/statusbar/policy/FlashlightController;)Z

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    .line 218
    .local v0, "changed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 220
    if-eqz v0, :cond_1

    .line 221
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FlashlightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchModeChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-wrap1(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V

    .line 214
    :cond_1
    return-void

    .line 217
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 216
    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get1(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->setCameraAvailable(Z)V

    .line 198
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->setTorchMode(Z)V

    .line 195
    :cond_0
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get1(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->setCameraAvailable(Z)V

    .line 188
    :cond_0
    return-void
.end method
