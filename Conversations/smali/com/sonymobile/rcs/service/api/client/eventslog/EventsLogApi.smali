.class public Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;
.super Lcom/sonymobile/rcs/service/api/client/ClientApi;
.source "EventsLogApi.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/service/api/client/ClientApi;-><init>(Landroid/content/Context;)V

    .line 421
    invoke-static {p1}, Lcom/sonymobile/rcs/provider/sharing/RichCall;->createInstance(Landroid/content/Context;)V

    .line 422
    invoke-static {p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->createInstance(Landroid/content/Context;)V

    .line 423
    invoke-static {p1}, Lcom/sonymobile/rcs/provider/ipcall/IPCall;->createInstance(Landroid/content/Context;)V

    .line 424
    invoke-static {p1}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->createInstance(Landroid/content/Context;)V

    .line 425
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public addQueuedFileTransfer(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 912
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->ctx:Landroid/content/Context;

    const-string/jumbo v1, "com.sonymobile.rcs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 914
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addQueuedFileTransfer(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addQueuedGroupChatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 899
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addQueuedGroupChatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addQueuedGroupFileTransfer(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->ctx:Landroid/content/Context;

    const-string/jumbo v1, "com.sonymobile.rcs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 943
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addQueuedGroupFileTransfer(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addQueuedOne2OneChatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 888
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addQueuedOne2OneChatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteGroupChatConversation(Ljava/lang/String;)I
    .locals 1
    .param p1, "chatId"    # Ljava/lang/String;

    .prologue
    .line 550
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->deleteGroupChatConversation(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteImEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 1038
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->deleteImEntry(Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public deleteMessagingLogForContact(Ljava/lang/String;)I
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 532
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->deleteContactHistory(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public markMessageAsCanceled(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 992
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markChatMessageCanceled(Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public markMessageAsFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 983
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markChatMessageFailed(Ljava/lang/String;)V

    .line 984
    return-void
.end method

.method public markMessageAsQueued(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1019
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markMessageQueued(Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method public markMessageAsRead(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "isRead"    # Z

    .prologue
    .line 772
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markMessageAsRead(Ljava/lang/String;Z)V

    .line 773
    return-void
.end method

.method public markMessageAsUndelivered(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1010
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markMessageUndelivered(Ljava/lang/String;)V

    .line 1011
    return-void
.end method

.method public markMessageQueuedAndUndelivered(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1028
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markMessageQueuedAndUndelivered(Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method public markMessagesAsDeliveryStatusProcessed(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 974
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markMessagesAsDeliveryStatusProcessed(Ljava/lang/String;)V

    .line 975
    return-void
.end method
