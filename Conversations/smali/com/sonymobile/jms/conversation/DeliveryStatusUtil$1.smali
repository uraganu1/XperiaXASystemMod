.class Lcom/sonymobile/jms/conversation/DeliveryStatusUtil$1;
.super Ljava/lang/Object;
.source "DeliveryStatusUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/jms/conversation/DeliveryStatusUtil;->tryToSetDeliveryStatusDisplayedToReadMsgsWithReportRequested(Lcom/sonymobile/jms/conversation/ImConversationApi;Lcom/sonymobile/jms/message/ImMessageStorageApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

.field final synthetic val$imMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;


# direct methods
.method constructor <init>(Lcom/sonymobile/jms/message/ImMessageStorageApi;Lcom/sonymobile/jms/conversation/ImConversationApi;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/DeliveryStatusUtil$1;->val$imMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    iput-object p2, p0, Lcom/sonymobile/jms/conversation/DeliveryStatusUtil$1;->val$imConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 32
    .local v4, "imMsgEntries":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/DeliveryStatusUtil$1;->val$imMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    invoke-interface {v7}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveIncomingReadMessagesWithReportRequested()Ljava/util/Collection;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 41
    .local v4, "imMsgEntries":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    return-void

    .line 40
    .end local v2    # "i$":Ljava/util/Iterator;
    .local v4, "imMsgEntries":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v7, "Failed to retrieve incoming read one2one messages with report requested!"

    .line 35
    invoke-static {v7, v1}, Lcom/sonymobile/jms/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 39
    return-void

    .line 41
    .end local v1    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .local v4, "imMsgEntries":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 42
    .local v5, "imMsgEntry":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;"
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 43
    .local v3, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/sonymobile/jms/message/ImUserMessage;

    .line 45
    .local v6, "imUserMsg":Lcom/sonymobile/jms/message/ImUserMessage;
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/jms/conversation/DeliveryStatusUtil$1;->val$imConversationApi:Lcom/sonymobile/jms/conversation/ImConversationApi;

    invoke-interface {v7, v3, v6}, Lcom/sonymobile/jms/conversation/ImConversationApi;->setMessageDeliveryStatusDisplayed(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    :try_end_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v7, "ImConversationId \'"

    .line 48
    invoke-static {v7}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' - Failed to set delivery status to displayed for msg \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-interface {v6}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' to \'"

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-interface {v6}, Lcom/sonymobile/jms/message/ImUserMessage;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    const-string/jumbo v8, "\' right now. Trying again later."

    invoke-virtual {v7, v8}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_0
.end method
