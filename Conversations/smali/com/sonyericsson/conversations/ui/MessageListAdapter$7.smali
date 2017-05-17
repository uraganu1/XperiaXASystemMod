.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;->prepareStackedSendAnimation(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/MessageBubbleView;Lcom/sonyericsson/conversations/model/Message;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$itemLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    .param p2, "val$itemLayout"    # Landroid/view/View;
    .param p3, "val$context"    # Landroid/content/Context;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$7;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$7;->val$itemLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 729
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 730
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$7;->val$itemLayout:Landroid/view/View;

    .line 731
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$7;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 730
    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 732
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$7;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get4(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$7;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get4(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    move-result-object v0

    .line 734
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;->GONE:Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;

    .line 733
    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setTimestampAndContactBadgeVisibility(Lcom/sonyericsson/conversations/ui/MessageBubbleView$StackedVisibility;)V

    .line 728
    :cond_0
    return-void
.end method
