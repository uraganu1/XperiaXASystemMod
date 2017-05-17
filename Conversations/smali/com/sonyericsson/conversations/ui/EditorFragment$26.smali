.class Lcom/sonyericsson/conversations/ui/EditorFragment$26;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->runSendAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$startXCoordinateEditContainer:F

.field final synthetic val$startXCoordinatePileView:F

.field final synthetic val$startXCoordinateSendButton:F


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;FFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p2, "val$startXCoordinateEditContainer"    # F
    .param p3, "val$startXCoordinateSendButton"    # F
    .param p4, "val$startXCoordinatePileView"    # F

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->val$startXCoordinateEditContainer:F

    iput p3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->val$startXCoordinateSendButton:F

    iput p4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->val$startXCoordinatePileView:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->val$startXCoordinateEditContainer:F

    .line 2193
    iget v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->val$startXCoordinateSendButton:F

    iget v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->val$startXCoordinatePileView:F

    const/4 v4, 0x0

    .line 2192
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/EditorFragment;FFFZ)V

    .line 2191
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->val$startXCoordinateEditContainer:F

    .line 2187
    iget v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->val$startXCoordinateSendButton:F

    iget v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->val$startXCoordinatePileView:F

    const/4 v4, 0x1

    .line 2186
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap0(Lcom/sonyericsson/conversations/ui/EditorFragment;FFFZ)V

    .line 2185
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2197
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2181
    return-void
.end method
