.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$12;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;->openConversation(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

.field final synthetic val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .param p2, "val$conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$12;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 786
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 787
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get3(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$12;->val$conversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onConversationOpen(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    goto :goto_0
.end method
