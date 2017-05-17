.class Lcom/sonyericsson/conversations/ui/MessageBubbleView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessageBubbleView.java"


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

.field final synthetic val$animateToState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .param p2, "val$animateToState"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$6;->val$animateToState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-set1(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Z)Z

    .line 724
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$6;->val$animateToState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->CLOSED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    if-ne v0, v1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get5(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setVisibility(I)V

    .line 722
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-set1(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Z)Z

    .line 734
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$6;->val$animateToState:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;->OPENED:Lcom/sonyericsson/conversations/ui/MessageBubbleView$TimestampAnimationState;

    if-ne v0, v1, :cond_0

    .line 738
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get5(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/MessageTimestampView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageTimestampView;->setVisibility(I)V

    .line 732
    :cond_0
    return-void
.end method
