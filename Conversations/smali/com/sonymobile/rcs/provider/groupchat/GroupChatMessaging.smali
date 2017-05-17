.class public Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;
.super Ljava/lang/Object;
.source "GroupChatMessaging.java"


# static fields
.field private static instance:Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;


# instance fields
.field private cr:Landroid/content/ContentResolver;

.field private databaseUri:Landroid/net/Uri;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->instance:Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessagingData;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->databaseUri:Landroid/net/Uri;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->cr:Landroid/content/ContentResolver;

    .line 79
    return-void
.end method

.method private addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "contact"    # Ljava/lang/String;
    .param p4, "status"    # I

    .prologue
    const/4 v5, 0x0

    .line 98
    invoke-static {p3}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 99
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "chat_id"

    .line 104
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "message_id"

    .line 105
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "contact"

    .line 106
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "status"

    .line 107
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "read_status"

    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "timestamp_delivered"

    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "timestamp_displayed"

    .line 110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->databaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    .local v0, "uri":Landroid/net/Uri;
    return-object v0

    .line 100
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Add new entry: chatID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", messageID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", contact="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->instance:Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    .line 58
    return-void

    .line 56
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->instance:Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->instance:Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    return-object v0
.end method

.method private setGroupChatMessageDeliveryStatus(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "contact"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x7

    .line 165
    if-eq p2, v1, :cond_0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "read_status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " !=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->setOutgoingChatMessageStatus(Ljava/lang/String;)V

    .line 172
    return-void

    :cond_0
    const-string/jumbo v1, "timestamp_delivered"

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private setGroupChatMessageReadStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "contact"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 181
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "read_status"

    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "timestamp_delivered"

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "read_status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " !=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->setOutgoingChatMessageStatus(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private setOutgoingChatMessageStatus(Ljava/lang/String;)V
    .locals 8
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 247
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "status"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "message_id=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\' AND NOT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 262
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 260
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 254
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getMessageType(Ljava/lang/String;)I

    move-result v7

    .local v7, "msgType":I
    const/4 v0, 0x4

    .line 255
    if-ne v7, v0, :cond_3

    .line 257
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->updateOutgoingMessageStatus(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x13

    .line 255
    if-eq v7, v0, :cond_2

    goto :goto_1
.end method


# virtual methods
.method public addGroupChatStatusEntry(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "msgID"    # Ljava/lang/String;
    .param p3, "chatID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 134
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    .local v0, "contact":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferHttpSupported()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x21

    .line 129
    invoke-direct {p0, p3, p1, v0, v2}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const/16 v2, 0xe

    .line 127
    invoke-direct {p0, p3, p1, v0, v2}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_0
.end method

.method public getOutgoingChatMessageStatus(Ljava/lang/String;)I
    .locals 11
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x21

    const/16 v9, 0xe

    const/4 v8, 0x7

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 218
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "status"

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(message_id=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\')"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 234
    :cond_0
    return v9

    .line 221
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eq v0, v10, :cond_3

    .line 227
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 236
    return v8

    .line 224
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 225
    return v10

    .line 228
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 229
    return v9
.end method

.method public setGroupChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "contact"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "displayed"

    .line 144
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "delivered"

    .line 146
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "error"

    .line 148
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x2

    .line 151
    invoke-direct {p0, p1, v0, p3}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->setGroupChatMessageDeliveryStatus(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->setGroupChatMessageReadStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    .line 147
    invoke-direct {p0, p1, v0, p3}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->setGroupChatMessageDeliveryStatus(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "failed"

    .line 148
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "forbidden"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public updateFileTransferChatId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "chat_id"

    .line 241
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "message_id"

    .line 242
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "chat_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 244
    return-void
.end method
