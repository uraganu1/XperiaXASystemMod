.class Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$5;
.super Ljava/lang/Object;
.source "InlineCameraFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->startFlipCameraEffect(Z)V
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
    .line 953
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 956
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get12(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/view/TextureView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 957
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 958
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;->-get12(Lcom/sonyericsson/conversations/ui/camera/InlineCameraFragment;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setAlpha(F)V

    .line 955
    .end local v0    # "alpha":F
    :cond_0
    return-void
.end method
