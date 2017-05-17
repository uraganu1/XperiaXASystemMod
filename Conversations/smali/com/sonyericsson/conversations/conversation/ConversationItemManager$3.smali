.class Lcom/sonyericsson/conversations/conversation/ConversationItemManager$3;
.super Ljava/lang/Object;
.source "ConversationItemManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/conversation/ConversationItemManager;
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
    .line 122
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$3;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$3;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$3;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$3;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v3}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get3(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$3;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v4}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get4(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v4

    .line 127
    iget-object v5, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$3;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v5}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-get6(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    move-result-object v5

    .line 126
    invoke-static {v2, v3, v4, v5}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap2(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonyericsson/conversations/starstatus/StarStatusApi;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-set1(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;Ljava/util/List;)Ljava/util/List;

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/ConversationItemManager$3;->this$0:Lcom/sonyericsson/conversations/conversation/ConversationItemManager;

    invoke-static {v1}, Lcom/sonyericsson/conversations/conversation/ConversationItemManager;->-wrap4(Lcom/sonyericsson/conversations/conversation/ConversationItemManager;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/ImConversationStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    const-string/jumbo v1, "Failed to get im conversation items"

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
