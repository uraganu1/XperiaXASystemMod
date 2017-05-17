.class final Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;
.super Landroid/os/Handler;
.source "InlineCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    .line 234
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;-><init>(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 239
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get4(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get11(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$H;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get11(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    :cond_0
    return-void
.end method
