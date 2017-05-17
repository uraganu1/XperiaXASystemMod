.class Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 10
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get9(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get7(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    move-result-object v8

    .line 350
    .local v8, "oldState":Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Closed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-set3(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;)Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    .line 351
    sget-object v0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->OpenAfterClosed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    if-ne v8, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get10(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get3(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get2(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get4(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v4

    .line 353
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get0(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Z

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get6(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/util/Size;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get5(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/Toast;

    .line 352
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->open(Landroid/view/TextureView;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ZLandroid/util/Size;Landroid/widget/Toast;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v9

    .line 347
    return-void

    .line 348
    .end local v8    # "oldState":Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->close()V

    .line 335
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "error"    # I

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Camera encountered an error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->close()V

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-wrap1(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)V

    .line 340
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 319
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get9(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get7(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    move-result-object v0

    .line 321
    .local v0, "oldState":Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    sget-object v3, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Open:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-static {v1, v3}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-set3(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;)Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    .line 322
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-set0(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 324
    sget-object v1, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->CloseAfterOpened:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    if-ne v0, v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 318
    return-void

    .line 329
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$1;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->createCameraPreviewSession()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 319
    .end local v0    # "oldState":Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
