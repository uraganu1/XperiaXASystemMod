.class Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$3;
.super Ljava/lang/Object;
.source "InlineCameraFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 418
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 426
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 427
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get13(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get13(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get14(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;II)V

    .line 424
    :cond_1
    return-void
.end method
