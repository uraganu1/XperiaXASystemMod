.class public Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;
.super Landroid/os/AsyncTask;
.source "DeleteConversationsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;,
        Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
        "<",
        "Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;",
        ">;>;"
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

.field private final mDeleteAllInConversationIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteConversationsListener:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;

.field private final mDeleteNonStarredInConversationIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->values()[Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->JOYN_GROUP_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->NO_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_AND_JOYN_ONE2ONE_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->XMS_CONVERSATION:Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->-com_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "deleteConversationsListener"    # Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;",
            "Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "deleteAllInConversationIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    .local p3, "deleteNonStarredInConversationIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteAllInConversationIds:Ljava/util/List;

    .line 120
    iput-object p3, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteNonStarredInConversationIds:Ljava/util/List;

    .line 121
    iput-object p4, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteConversationsListener:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;

    .line 122
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    .line 116
    return-void
.end method

.method private deleteAllMessagesInImConversations(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "mImConversationIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "imConversationId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 269
    .local v0, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteConversation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    goto :goto_0

    .line 275
    .end local v0    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private deleteAllMessagesInXmsConversations(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "threadIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    const/4 v8, 0x0

    .line 247
    iget-object v5, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 248
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 249
    .local v4, "threadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    const/4 v2, 0x0

    .line 250
    .local v2, "nbrDeleted":I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "thread_id in ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .local v3, "selectionBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v5, 0x2710

    if-ge v1, v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 253
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v5}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 254
    const-string/jumbo v6, ","

    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    :cond_0
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 257
    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    sget-object v5, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->GROUP_CONTENT_URI:Landroid/net/Uri;

    .line 259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 258
    invoke-virtual {v0, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    sget-object v5, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 263
    .end local v1    # "i":I
    .end local v3    # "selectionBuilder":Ljava/lang/StringBuilder;
    :cond_1
    return v2
.end method

.method private deleteConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 1
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Lcom/sonymobile/jms/ImApiHolder;->getApis()Lcom/sonymobile/jms/ImApis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/ImApis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->deleteImConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    .line 285
    return-void
.end method

.method private deleteConversation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 1
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Lcom/sonymobile/jms/ImApiHolder;->getApis()Lcom/sonymobile/jms/ImApis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/ImApis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->deleteImConversation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    .line 279
    return-void
.end method

.method private deleteConversationWallpaper(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 6
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 231
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v1

    .line 232
    .local v1, "wallpaperManager":Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->isWallpaperSupportedFor(Lcom/sonyericsson/conversations/conversation/ConversationId$Type;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    return-void

    .line 237
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 236
    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->deleteWallpaper(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v2, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to delete wallpaper for conversation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    invoke-interface {p1}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v4

    .line 240
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteConversations(Ljava/util/List;Z)Ljava/util/List;
    .locals 12
    .param p2, "deleteAllMessages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v5, "imConversationIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v6, "threadIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conversationId$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 178
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v4

    .line 179
    .local v4, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;

    move-result-object v2

    .line 181
    .local v2, "conversationType":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    invoke-static {}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->-getcom_sonyericsson_conversations_conversation_ConversationId$TypeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/ConversationId$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 200
    :cond_1
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v7

    .line 201
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 200
    invoke-interface {v7, v8}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->removeNotificationsForConversation(Ljava/lang/String;)V

    .line 202
    if-eqz p2, :cond_0

    .line 203
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteConversationWallpaper(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    goto :goto_0

    .line 183
    :pswitch_1
    if-eqz v4, :cond_2

    .line 184
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_2
    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 187
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    :pswitch_2
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :pswitch_3
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    .end local v2    # "conversationType":Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    .end local v4    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :cond_3
    if-eqz p2, :cond_4

    .line 208
    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteAllMessagesInXmsConversations(Ljava/util/List;)I

    .line 209
    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteAllMessagesInImConversations(Ljava/util/List;)I

    .line 211
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getStarStatusManager()Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi;->deleteConversationStarStatuses(Ljava/util/Collection;)V

    .line 213
    move-object v3, v6

    .line 218
    .local v3, "fullyDeletedXmsConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    :goto_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteDraftMessages(Ljava/util/List;)V

    .line 220
    return-object v3

    .line 215
    .end local v3    # "fullyDeletedXmsConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    :cond_4
    invoke-direct {p0, v6}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteNonStarredMessagesInXmsConversations(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 216
    .restart local v3    # "fullyDeletedXmsConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteNonStarredMessagesInImConversations(Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private deleteDraftMessages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getDraftsManager()Lcom/sonyericsson/conversations/draft/DraftsApi;

    move-result-object v2

    .line 225
    .local v2, "draftsApi":Lcom/sonyericsson/conversations/draft/DraftsApi;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conversationId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 226
    .local v0, "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    invoke-interface {v2, v0}, Lcom/sonyericsson/conversations/draft/DraftsApi;->deleteDrafts(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    goto :goto_0

    .line 223
    .end local v0    # "conversationId":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_0
    return-void
.end method

.method private deleteNonStarredImMessages(Landroid/database/Cursor;Lcom/sonymobile/jms/conversation/ImConversationId;)I
    .locals 12
    .param p1, "msgs"    # Landroid/database/Cursor;
    .param p2, "imId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 396
    const/4 v8, 0x0

    .line 397
    .local v8, "numDelete":I
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonyericsson/conversations/Apis;->getStarStatusManager()Lcom/sonyericsson/conversations/starstatus/StarStatusApi;

    move-result-object v9

    .line 398
    .local v9, "starStatusApi":Lcom/sonyericsson/conversations/starstatus/StarStatusApi;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v10

    .line 399
    .local v10, "storageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    invoke-static {}, Lcom/sonymobile/jms/ImApiHolder;->getApis()Lcom/sonymobile/jms/ImApis;

    move-result-object v11

    invoke-interface {v11}, Lcom/sonymobile/jms/ImApis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v0

    .line 401
    .local v0, "conversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 403
    :try_start_0
    invoke-interface {v10, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v7

    .line 404
    .local v7, "msgUri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "msgKey":Ljava/lang/String;
    invoke-interface {v10, v7}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asImUserMessageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "msgId":Ljava/lang/String;
    invoke-interface {v9, v4}, Lcom/sonyericsson/conversations/starstatus/StarStatusApi;->getStarStatus(Ljava/lang/String;)Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    move-result-object v5

    .line 408
    .local v5, "msgStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    invoke-interface {v10, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v6

    .line 409
    .local v6, "msgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    sget-object v11, Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;->STARRED:Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;

    if-eq v5, v11, :cond_0

    sget-object v11, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-eq v6, v11, :cond_1

    .line 410
    sget-object v11, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v6, v11, :cond_0

    .line 411
    :cond_1
    invoke-interface {v0, p2, v3}, Lcom/sonymobile/jms/conversation/ImConversationApi;->deleteImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 416
    .end local v3    # "msgId":Ljava/lang/String;
    .end local v4    # "msgKey":Ljava/lang/String;
    .end local v5    # "msgStatus":Lcom/sonyericsson/conversations/starstatus/StarStatusApi$ImStarStatus;
    .end local v6    # "msgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .end local v7    # "msgUri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v11, "Couldn\'t delete IM message"

    invoke-static {v11, v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 414
    .end local v1    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_1
    move-exception v2

    .line 415
    .local v2, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v11, "Couldn\'t delete IM message"

    invoke-static {v11, v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 420
    .end local v2    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :cond_2
    return v8
.end method

.method private deleteNonStarredMessagesInImConversations(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v9

    invoke-interface {v9}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v8

    .line 351
    .local v8, "storageApi":Lcom/sonymobile/jms/message/ImMessageStorageApi;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "imId$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/jms/conversation/ImConversationId;

    .line 354
    .local v2, "imId":Lcom/sonymobile/jms/conversation/ImConversationId;
    const/4 v5, 0x0

    .line 355
    .local v5, "numDelete":I
    const/4 v6, 0x0

    .line 357
    .local v6, "numInConverstaion":I
    const/4 v4, 0x0

    .line 359
    .local v4, "msgs":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 360
    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveMessages(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 368
    .local v4, "msgs":Landroid/database/Cursor;
    :goto_1
    if-eqz v4, :cond_0

    .line 372
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 374
    :try_start_1
    invoke-direct {p0, v4, v2}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteNonStarredImMessages(Landroid/database/Cursor;Lcom/sonymobile/jms/conversation/ImConversationId;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 376
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 379
    if-ne v6, v5, :cond_0

    if-lez v5, :cond_0

    .line 381
    :try_start_2
    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 382
    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V

    .line 386
    :goto_2
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/sonymobile/jms/conversation/ImConversationStorageException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    const-string/jumbo v9, "Couldn\'t delete IM conversation"

    invoke-static {v9, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 362
    .end local v0    # "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    .local v4, "msgs":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->retrieveMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Landroid/database/Cursor;
    :try_end_3
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .local v4, "msgs":Landroid/database/Cursor;
    goto :goto_1

    .line 364
    .local v4, "msgs":Landroid/database/Cursor;
    :catch_1
    move-exception v1

    .line 365
    .local v1, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not retreive im messages for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/conversations/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    .end local v1    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .local v4, "msgs":Landroid/database/Cursor;
    :catchall_0
    move-exception v9

    .line 376
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 375
    throw v9

    .line 384
    :cond_2
    :try_start_4
    invoke-interface {v2}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteConversation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    :try_end_4
    .catch Lcom/sonymobile/jms/conversation/ImConversationStorageException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 392
    .end local v2    # "imId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v4    # "msgs":Landroid/database/Cursor;
    .end local v5    # "numDelete":I
    .end local v6    # "numInConverstaion":I
    :cond_3
    return-object v7
.end method

.method private deleteNonStarredMessagesInXmsConversations(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "conversationIds":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    const/4 v8, 0x0

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v2, "emptied":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 304
    return-object v2

    .line 307
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    const-string/jumbo v7, "("

    .line 307
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 309
    const-string/jumbo v7, "star_status"

    .line 307
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 310
    const-string/jumbo v7, "!="

    .line 307
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 311
    const/4 v7, 0x1

    .line 307
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 312
    const-string/jumbo v7, " OR "

    .line 307
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 313
    const-string/jumbo v7, "star_status"

    .line 307
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 314
    const-string/jumbo v7, " IS NULL) AND thread_id IN ("

    .line 307
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 315
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v6}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v8

    .line 307
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 316
    .local v5, "selection":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 317
    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/conversations/conversation/ConversationId;

    invoke-interface {v6}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_1
    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "sel":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 323
    .local v1, "cr":Landroid/content/ContentResolver;
    sget-object v6, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v4, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 325
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 326
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 327
    .local v0, "cid":Lcom/sonyericsson/conversations/conversation/ConversationId;
    iget-object v6, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/sonyericsson/conversations/model/MessageUtil;->getNumberOfXmsMessages(Landroid/content/Context;J)I

    move-result v6

    if-nez v6, :cond_2

    .line 328
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 332
    .end local v0    # "cid":Lcom/sonyericsson/conversations/conversation/ConversationId;
    :cond_3
    return-object v2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/AsyncTaskResult;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
            "<",
            "Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, "fullyDeletedXmsConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/conversation/ConversationId;>;"
    new-instance v0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;-><init>()V

    .line 136
    .local v0, "deleteResult":Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteAllInConversationIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteAllInConversationIds:Ljava/util/List;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteConversations(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 137
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteNonStarredInConversationIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteNonStarredInConversationIds:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->deleteConversations(Ljava/util/List;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/ImConversationStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;->-get0(Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;)Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteAllInConversationIds:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 148
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteAllInConversationIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;->-set0(Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;I)I

    .line 150
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteAllInConversationIds:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->removeConversationFromCache(Ljava/util/List;)V

    .line 151
    iget-object v3, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mConversationManager:Lcom/sonyericsson/conversations/conversation/ConversationManager;

    iget-object v4, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteNonStarredInConversationIds:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->removeConversationFromCache(Ljava/util/List;)V

    .line 153
    new-instance v3, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v3, v0}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Object;)V

    return-object v3

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Lcom/sonymobile/jms/conversation/ImConversationStorageException;
    new-instance v3, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    invoke-direct {v3, v1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;-><init>(Ljava/lang/Exception;)V

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->doInBackground([Ljava/lang/Void;)Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
            "<",
            "Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "result":Lcom/sonyericsson/conversations/util/AsyncTaskResult;, "Lcom/sonyericsson/conversations/util/AsyncTaskResult<Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteConversationsListener:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;

    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;->onConversationsDeleteCancelled(Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;)V

    .line 157
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->onCancelled(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V

    return-void
.end method

.method protected onPostExecute(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/util/AsyncTaskResult",
            "<",
            "Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "result":Lcom/sonyericsson/conversations/util/AsyncTaskResult;, "Lcom/sonyericsson/conversations/util/AsyncTaskResult<Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteConversationsListener:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;->onConversationsDeleteFailure(Ljava/lang/Exception;)V

    .line 162
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteConversationsListener:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/AsyncTaskResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;

    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;->onConversationsDeleted(Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 162
    check-cast p1, Lcom/sonyericsson/conversations/util/AsyncTaskResult;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->onPostExecute(Lcom/sonyericsson/conversations/util/AsyncTaskResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteConversationsListener:Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask;->mDeleteAllInConversationIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/conversation/DeleteConversationsTask$DeleteConversationsListener;->onPreConversationsDelete(I)V

    .line 126
    return-void
.end method
