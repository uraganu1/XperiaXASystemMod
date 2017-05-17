.class Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$4;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->performDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;
    .param p2, "val$lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$4;->this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    iput-object p2, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 290
    iget-object v1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$4;->this$0:Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;

    invoke-static {v0}, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;->-get2(Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/SwipeDismissTouchListener$4;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    return-void
.end method
