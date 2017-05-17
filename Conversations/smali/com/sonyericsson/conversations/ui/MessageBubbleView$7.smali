.class Lcom/sonyericsson/conversations/ui/MessageBubbleView$7;
.super Ljava/lang/Object;
.source "MessageBubbleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageBubbleView;->animateStackedTimestamp(Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

.field final synthetic val$lp:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .param p2, "val$lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$7;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$7;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 747
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$7;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 748
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$7;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get5(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$7;->val$lp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    return-void
.end method
