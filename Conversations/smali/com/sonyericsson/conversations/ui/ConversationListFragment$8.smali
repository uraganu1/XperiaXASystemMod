.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get3(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onCloseSearchModeInConversationList()V

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get8(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get9(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get9(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-set2(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-wrap4(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Z)V

    .line 441
    return v2

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get11(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    return v2

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-set2(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-wrap4(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Z)V

    .line 419
    const/4 v0, 0x1

    return v0
.end method
