.class Lcom/sonyericsson/conversations/ui/camera/CameraHolder$3;
.super Ljava/lang/Object;
.source "CameraHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->closeCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

.field final synthetic val$cameraDevice:Landroid/hardware/camera2/CameraDevice;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/camera/CameraHolder;
    .param p2, "val$cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$3;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$3;->val$cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$3;->val$cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 199
    return-void
.end method
