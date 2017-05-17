.class Lcom/sonyericsson/conversations/ui/MessageListFragment$8;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/messages/DeleteMessagesTask$DeleteMessagesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->deleteMessages(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessagesDeleteCancelled()V
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onCancelDelete()V

    .line 784
    return-void
.end method

.method public onMessagesDeleteFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 779
    const-string/jumbo v0, "Failed to delete messages"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 780
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap1(Lcom/sonyericsson/conversations/ui/MessageListFragment;I)V

    .line 778
    return-void
.end method

.method public onMessagesDeleted(IZ)V
    .locals 1
    .param p1, "nbrOfDeletedMessages"    # I
    .param p2, "lastXmsMessageDeleted"    # Z

    .prologue
    .line 771
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap1(Lcom/sonyericsson/conversations/ui/MessageListFragment;I)V

    .line 772
    if-eqz p2, :cond_0

    .line 773
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->triggerLastXmsInConversationDeletedCallback()V

    .line 770
    :cond_0
    return-void
.end method

.method public preMessagesDelete()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->-wrap2(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    .line 764
    return-void
.end method
