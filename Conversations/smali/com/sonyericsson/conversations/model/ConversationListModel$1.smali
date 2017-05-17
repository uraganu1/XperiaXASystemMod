.class Lcom/sonyericsson/conversations/model/ConversationListModel$1;
.super Ljava/lang/Object;
.source "ConversationListModel.java"

# interfaces
.implements Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/model/ConversationListModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/model/ConversationListModel;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$1;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConversationsDeleteCancelled(Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;)V
    .locals 5
    .param p1, "result"    # Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$1;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    const-string/jumbo v1, "ConversationListModel_cancel_delete"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;->getNumberOfDeletedConversations()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    return-void
.end method

.method public onConversationsDeleteFailure(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v4, 0x0

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$1;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    const-string/jumbo v1, "ConversationListModel_post_delete"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    const-string/jumbo v0, "Failed to delete conversations"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$1;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/ConversationListModel;->-get0(Lcom/sonyericsson/conversations/model/ConversationListModel;)Landroid/content/Context;

    move-result-object v0

    .line 484
    const v1, 0x7f0b008b

    .line 483
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 480
    return-void
.end method

.method public onConversationsDeleted(Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;)V
    .locals 5
    .param p1, "result"    # Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$1;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    const-string/jumbo v1, "ConversationListModel_post_delete"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;->getNumberOfDeletedConversations()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    return-void
.end method

.method public onPreConversationsDelete(I)V
    .locals 5
    .param p1, "deleteConversationCount"    # I

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ConversationListModel$1;->this$0:Lcom/sonyericsson/conversations/model/ConversationListModel;

    const-string/jumbo v1, "ConversationListModel_pre_delete"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    return-void
.end method
