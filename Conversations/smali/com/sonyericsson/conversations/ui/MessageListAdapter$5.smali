.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;->runSendAnimation(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/model/Message;ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

.field final synthetic val$bubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    .param p2, "val$bubble"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->val$bubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 679
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 680
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-set2(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 681
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get5(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get6(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->val$bubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->restoreViewOnAnimationCancelled()V

    .line 684
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-set0(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 678
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 689
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 690
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-set2(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 691
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get5(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get6(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->val$bubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setContactBadgeAlpha(F)V

    .line 694
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-set0(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 688
    return-void
.end method
