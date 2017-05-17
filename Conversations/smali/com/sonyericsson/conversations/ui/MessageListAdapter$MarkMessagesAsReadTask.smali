.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;
.super Lcom/sonymobile/forklift/HeavyTask;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkMessagesAsReadTask"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mJoynMessagesToMarkAsRead:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1241
    .local p3, "joynMessagesToMarkAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/JoynMessage;>;"
    invoke-direct {p0}, Lcom/sonymobile/forklift/HeavyTask;-><init>()V

    .line 1243
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;->mContext:Landroid/content/Context;

    .line 1244
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;->mJoynMessagesToMarkAsRead:Ljava/util/ArrayList;

    .line 1245
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 1242
    return-void
.end method


# virtual methods
.method protected onBackground()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 1250
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_0

    .line 1251
    const-string/jumbo v4, "MarkMessagesAsReadTask started"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1253
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;->mJoynMessagesToMarkAsRead:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1255
    .local v3, "numberOfUpdatedMessages":I
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 1254
    invoke-static {v4, v5}, Lcom/sonyericsson/conversations/model/MessageUtil;->markXmsMessagesAsRead(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1256
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;->mJoynMessagesToMarkAsRead:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "message$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 1257
    .local v1, "message":Lcom/sonyericsson/conversations/model/JoynMessage;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v4}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    .line 1259
    .local v0, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/MessageUtil;->markMessageAsRead(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonyericsson/conversations/model/JoynMessage;)V

    goto :goto_0

    .line 1261
    .end local v0    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v1    # "message":Lcom/sonyericsson/conversations/model/JoynMessage;
    :cond_1
    if-lez v3, :cond_2

    .line 1262
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v4

    .line 1263
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v5}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1262
    invoke-interface {v4, v5}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeNotificationsForConversation(Ljava/lang/String;)V

    .line 1264
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getNotificationManager()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 1266
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get7()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1267
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-set4(Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1269
    sget-boolean v4, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v4, :cond_3

    .line 1270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "markAllMessagesAsRead finished for threadID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1271
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v5}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v6

    .line 1270
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1249
    :cond_3
    return-void

    .line 1266
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1277
    const-string/jumbo v0, "Unable to mark Joyn message as read!"

    invoke-static {v0, p1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleTerminalCheckedException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1278
    invoke-static {}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-get7()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1279
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->-set4(Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;)Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1276
    return-void

    .line 1278
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
