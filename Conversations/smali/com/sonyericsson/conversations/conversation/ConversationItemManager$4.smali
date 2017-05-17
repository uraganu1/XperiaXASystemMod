.class Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;
.super Ljava/lang/Object;
.source "ConversationItemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->reloadAllConversationItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, "xmsCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v4}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get2(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/draft/DraftsApi;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap1(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Lcom/sonyericsson/conversations/draft/DraftsApi;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-set0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Ljava/util/List;)Ljava/util/List;

    .line 247
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v3}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap0(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 248
    .local v1, "xmsCursor":Landroid/database/Cursor;
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v3, v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap3(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-set2(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Ljava/util/List;)Ljava/util/List;

    .line 250
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get3(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v4}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get3(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v4

    .line 252
    iget-object v5, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v5}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get4(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v6}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get6(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    move-result-object v6

    .line 251
    invoke-static {v3, v4, v5, v6}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap2(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonyericsson/conversations/starstatus/StarStatusApi;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-set1(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/ImConversationStorageException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    if-eqz v1, :cond_1

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 261
    .end local v1    # "xmsCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$4;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap4(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V

    .line 243
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    :try_start_1
    const-string/jumbo v2, "Failed to get conversation items for joyn"

    invoke-static {v2, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    if-eqz v1, :cond_1

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 256
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    :catchall_0
    move-exception v2

    .line 257
    if-eqz v1, :cond_2

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_2
    throw v2
.end method
