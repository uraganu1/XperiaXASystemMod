.class Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$4;
.super Ljava/lang/Object;
.source "InlineCameraFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->onClick(Landroid/view/View;)V
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
    .line 880
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-set3(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Z)Z

    .line 883
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-wrap3(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;Z)V

    .line 881
    return-void
.end method
