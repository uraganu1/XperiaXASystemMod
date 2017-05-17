.class Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "InlineCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get4(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-set2(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Z)Z

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get10(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;->removeMessages(I)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get11(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get5(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-set3(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Z)Z

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-wrap3(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Z)V

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get8(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get2(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 208
    :cond_1
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 202
    return-void
.end method
