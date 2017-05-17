.class Lcom/sonyericsson/conversations/ui/camera/CameraHolder$2;
.super Ljava/lang/Object;
.source "CameraHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->openCamera()V
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
    .line 170
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get3(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get2(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get8(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v3

    .line 175
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getMainLooperHandler()Landroid/os/Handler;

    move-result-object v4

    .line 174
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-wrap1(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)V

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-get9(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$2;->this$0:Lcom/sonyericsson/conversations/ui/camera/CameraHolder;

    sget-object v3, Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;->Closed:Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;

    invoke-static {v1, v3}, Lcom/sonyericsson/conversations/ui/camera/CameraHolder;->-set3(Lcom/sonyericsson/conversations/ui/camera/CameraHolder;Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;)Lcom/sonyericsson/conversations/ui/camera/CameraHolder$CameraState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
