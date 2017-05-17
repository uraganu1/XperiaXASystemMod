.class Lcom/sonyericsson/conversations/ui/MessageBubbleView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessageBubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getContentAnimator(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get4(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$5;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->-get3(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/MessageStatusController;->setMessage(Lcom/sonyericsson/conversations/model/Message;)V

    .line 649
    return-void
.end method
