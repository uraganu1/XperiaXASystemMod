.class Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->createCameraPreviewSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

.field final synthetic val$previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/camera/CameraHolder;
    .param p2, "val$previewRequestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->val$previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 300
    const-string/jumbo v0, "Capture session configure error"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 11
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get1(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 262
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-set1(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get0(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->val$previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 271
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 270
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->val$previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-set2(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get4(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->setRepeatingRequest(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_2
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v8

    .line 283
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IllegalArgumentException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v10

    .line 288
    .local v10, "tmp":Landroid/view/Surface;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-wrap0(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)V

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get10(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get3(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get2(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/String;

    move-result-object v3

    .line 291
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get4(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get0(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Z

    move-result v5

    .line 292
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get6(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/util/Size;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get5(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/Toast;

    .line 290
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->open(Landroid/view/TextureView;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ZLandroid/util/Size;Landroid/widget/Toast;)V

    goto :goto_0

    .line 277
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "tmp":Landroid/view/Surface;
    :catch_1
    move-exception v9

    .line 278
    .local v9, "e":Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IllegalStateException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->handleCameraError()V

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-wrap1(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)V

    goto/16 :goto_0
.end method
