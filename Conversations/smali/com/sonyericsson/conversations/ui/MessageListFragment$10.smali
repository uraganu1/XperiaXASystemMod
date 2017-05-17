.class Lcom/sonyericsson/conversations/ui/MessageListFragment$10;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->deleteMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field final synthetic val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .param p2, "val$deleteStarred"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 811
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 813
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get3(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get3(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setClickable(Z)V

    .line 815
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get6(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$10$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$10$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment$10;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V

    .line 824
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-get6(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->deleteMessage()V

    .line 812
    :cond_1
    return-void
.end method
