.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$6;
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


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 702
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 703
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$6;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get0(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 701
    return-void
.end method
