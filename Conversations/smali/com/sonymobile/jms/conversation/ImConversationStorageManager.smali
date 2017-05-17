.class public final Lcom/sonymobile/jms/conversation/ImConversationStorageManager;
.super Ljava/lang/Object;
.source "ImConversationStorageManager.java"


# static fields
.field private static final IMCONVERSATION_PROJECTION:[Ljava/lang/String;

.field private static final OBSERVER_LOCK:Ljava/lang/Object;

.field private static final ORDER_BY_TIMESTAMP_DESC:Ljava/lang/String;

.field private static final SELECTION_CONVERSATIONS:Ljava/lang/String;


# instance fields
.field private mAppCtx:Landroid/content/Context;

.field private mGroupConversationSubjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/jms/conversation/ImGroupConversationId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

.field private mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

.field private mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

.field private mNrOfRegisteredObservers:I

.field private mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

.field private mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    .line 47
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_date"

    aput-object v1, v0, v3

    const-string/jumbo v1, "timestamp_sent"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const-string/jumbo v1, "status"

    aput-object v1, v0, v5

    const-string/jumbo v1, "mime_type"

    aput-object v1, v0, v6

    const-string/jumbo v1, "message_id"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string/jumbo v2, "contact"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "total_size"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "chat_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->IMCONVERSATION_PROJECTION:[Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") OR ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "))) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "is_spam"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->SELECTION_CONVERSATIONS:Ljava/lang/String;

    const-string/jumbo v0, "_date"

    const-string/jumbo v1, " DESC"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->ORDER_BY_TIMESTAMP_DESC:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->OBSERVER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/sonymobile/jms/contact/ImContactManager;Lcom/sonymobile/jms/message/ImMessageStorageManager;Lcom/sonymobile/jms/file/ImFileManager;Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;Lcom/sonymobile/rcs/provider/messaging/RichMessaging;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "imContactManager"    # Lcom/sonymobile/jms/contact/ImContactManager;
    .param p3, "imMessageStorageManager"    # Lcom/sonymobile/jms/message/ImMessageStorageManager;
    .param p4, "imFileManager"    # Lcom/sonymobile/jms/file/ImFileManager;
    .param p5, "rcsEventsLogApi"    # Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;
    .param p6, "rcsRichMessaging"    # Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mAppCtx:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    .line 98
    iput-object p3, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    .line 99
    iput-object p4, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    .line 100
    iput-object p5, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    .line 101
    iput-object p6, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mGroupConversationSubjects:Ljava/util/Map;

    .line 104
    return-void
.end method

.method private asImFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/file/ImFile;
    .locals 7
    .param p1, "fileUri"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "fileSize"    # J
    .param p5, "fileName"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sonymobile/jms/file/ImFileManager;->asRemoteFile(Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 137
    .local v5, "file":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/jms/file/ImFileManager;->asLocalFile(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v0

    return-object v0
.end method

.method private getDirectionFromRcsEventStatus(I)Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .locals 2
    .param p1, "rcsEventStatus"    # I

    .prologue
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Detected unsupported ImConversation entry event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    return-object v0

    .line 146
    :pswitch_0
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    return-object v0

    .line 148
    :pswitch_1
    sget-object v0, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    return-object v0

    .line 144
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mAppCtx:Landroid/content/Context;

    .line 108
    iput-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    .line 109
    iput-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    .line 110
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mGroupConversationSubjects:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 111
    iput-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mGroupConversationSubjects:Ljava/util/Map;

    .line 112
    return-void
.end method

.method deleteImConversation(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)V
    .locals 4
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "ImConversation \'"

    .line 513
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->deleteGroupChatConversation(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/sonymobile/jms/conversation/ImConversationStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to delete ImConversation \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/conversation/ImConversationStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method deleteImConversation(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 4
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "ImConversation \'"

    .line 502
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->deleteMessagingLogForContact(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/sonymobile/jms/conversation/ImConversationStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to delete ImConversation \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/conversation/ImConversationStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;
    .locals 5
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mGroupConversationSubjects:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    .local v1, "subject":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 165
    :goto_0
    return-object v1

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mGroupConversationSubjects:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v1    # "subject":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/database/SQLException;
    new-instance v2, Lcom/sonymobile/jms/conversation/ImConversationStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to get subject for ImConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/conversation/ImConversationStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method isLeftByLocalUser(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Z
    .locals 5
    .param p1, "imGroupConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getGroupChatStatus(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 176
    .local v1, "rcsGroupChatStatus":I
    sparse-switch v1, :sswitch_data_0

    .line 182
    const/4 v2, 0x0

    return v2

    .line 180
    :sswitch_0
    const/4 v2, 0x1

    return v2

    .line 182
    .end local v1    # "rcsGroupChatStatus":I
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/database/SQLException;
    new-instance v2, Lcom/sonymobile/jms/conversation/ImConversationStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to determine if ImConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is teminated by local user!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/conversation/ImConversationStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 176
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x22 -> :sswitch_0
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method registerImConversationObserver(Landroid/database/ContentObserver;)V
    .locals 4
    .param p1, "imConversationObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 523
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->OBSERVER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 526
    iget v0, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mNrOfRegisteredObservers:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mNrOfRegisteredObservers:I

    const-string/jumbo v0, "\' ImMessageObserver \'"

    .line 527
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v2, " ,number of registered observers("

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget v2, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mNrOfRegisteredObservers:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v2, ") \'"

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 529
    monitor-exit v1

    .line 530
    return-void

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method retrieveImConversations()Ljava/util/Iterator;
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/ImConversationStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "enter"

    .line 191
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    const/16 v49, 0x0

    .line 194
    .local v49, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->IMCONVERSATION_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->SELECTION_CONVERSATIONS:Ljava/lang/String;

    sget-object v7, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->ORDER_BY_TIMESTAMP_DESC:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v49

    .line 198
    .local v49, "cursor":Landroid/database/Cursor;
    if-eqz v49, :cond_1

    const-string/jumbo v2, "_date"

    .line 202
    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v47

    .local v47, "TIMESTAMP_COLUMN_IDX":I
    const-string/jumbo v2, "timestamp_sent"

    .line 203
    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    .local v45, "SENT_TIMESTAMP_COLUMN_IDX":I
    const-string/jumbo v2, "type"

    .line 204
    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .local v48, "TYPE_COLUMN_IDX":I
    const-string/jumbo v2, "status"

    .line 205
    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .local v46, "STATUS_COLUMN_IDX":I
    const-string/jumbo v2, "contact"

    .line 206
    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .local v39, "CONTACT_COLUMN_IDX":I
    const-string/jumbo v2, "_data"

    .line 207
    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .local v40, "DATA_COLUMN_IDX":I
    const-string/jumbo v2, "name"

    .line 208
    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .local v44, "NAME_COLUMN_IDX":I
    const-string/jumbo v2, "chat_id"

    .line 209
    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .local v38, "CHAT_ID_COLUMN_IDX":I
    const-string/jumbo v2, "mime_type"

    .line 210
    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v43

    .local v43, "MIMETYPE_COLUMN_IDX":I
    const-string/jumbo v2, "message_id"

    .line 211
    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .local v42, "MESSAGE_ID_COLUMN_IDX":I
    const-string/jumbo v2, "total_size"

    .line 212
    move-object/from16 v0, v49

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 214
    .local v41, "FILE_SIZE_COLUMN_IDX":I
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v53, "imConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversation;>;"
    new-instance v52, Ljava/util/HashSet;

    invoke-direct/range {v52 .. v52}, Ljava/util/HashSet;-><init>()V

    .line 229
    .local v52, "imConversationIds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v49 .. v49}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 473
    new-instance v2, Lcom/sonymobile/jms/conversation/ImConversationStorageManager$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager$1;-><init>(Lcom/sonymobile/jms/conversation/ImConversationStorageManager;)V

    move-object/from16 v0, v53

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string/jumbo v2, "Found "

    .line 483
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, " conversations."

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 485
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 494
    if-nez v49, :cond_4

    .line 495
    :goto_1
    return-object v2

    .line 199
    .end local v38    # "CHAT_ID_COLUMN_IDX":I
    .end local v39    # "CONTACT_COLUMN_IDX":I
    .end local v40    # "DATA_COLUMN_IDX":I
    .end local v41    # "FILE_SIZE_COLUMN_IDX":I
    .end local v42    # "MESSAGE_ID_COLUMN_IDX":I
    .end local v43    # "MIMETYPE_COLUMN_IDX":I
    .end local v44    # "NAME_COLUMN_IDX":I
    .end local v45    # "SENT_TIMESTAMP_COLUMN_IDX":I
    .end local v46    # "STATUS_COLUMN_IDX":I
    .end local v47    # "TIMESTAMP_COLUMN_IDX":I
    .end local v48    # "TYPE_COLUMN_IDX":I
    .end local v52    # "imConversationIds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    .end local v53    # "imConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversation;>;"
    :cond_1
    new-instance v2, Lcom/sonymobile/jms/conversation/ImConversationStorageException;

    const-string/jumbo v3, "Failed to retrieve ImConversations!"

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/conversation/ImConversationStorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    .end local v49    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v50

    .line 488
    .local v50, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/sonymobile/jms/conversation/ImConversationStorageException;

    const-string/jumbo v3, "Failed to retrieve ImConversations!"

    move-object/from16 v0, v50

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/conversation/ImConversationStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    .end local v50    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 494
    if-nez v49, :cond_5

    .line 495
    :goto_2
    throw v2

    .line 230
    .restart local v38    # "CHAT_ID_COLUMN_IDX":I
    .restart local v39    # "CONTACT_COLUMN_IDX":I
    .restart local v40    # "DATA_COLUMN_IDX":I
    .restart local v41    # "FILE_SIZE_COLUMN_IDX":I
    .restart local v42    # "MESSAGE_ID_COLUMN_IDX":I
    .restart local v43    # "MIMETYPE_COLUMN_IDX":I
    .restart local v44    # "NAME_COLUMN_IDX":I
    .restart local v45    # "SENT_TIMESTAMP_COLUMN_IDX":I
    .restart local v46    # "STATUS_COLUMN_IDX":I
    .restart local v47    # "TIMESTAMP_COLUMN_IDX":I
    .restart local v48    # "TYPE_COLUMN_IDX":I
    .restart local v49    # "cursor":Landroid/database/Cursor;
    .restart local v52    # "imConversationIds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    .restart local v53    # "imConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversation;>;"
    :cond_2
    :try_start_2
    move-object/from16 v0, v49

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    .line 231
    .local v54, "rcsType":I
    packed-switch v54, :pswitch_data_0

    .line 466
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Detected unsupported ImConversation entry type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v54

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 488
    .end local v38    # "CHAT_ID_COLUMN_IDX":I
    .end local v39    # "CONTACT_COLUMN_IDX":I
    .end local v40    # "DATA_COLUMN_IDX":I
    .end local v41    # "FILE_SIZE_COLUMN_IDX":I
    .end local v42    # "MESSAGE_ID_COLUMN_IDX":I
    .end local v43    # "MIMETYPE_COLUMN_IDX":I
    .end local v44    # "NAME_COLUMN_IDX":I
    .end local v45    # "SENT_TIMESTAMP_COLUMN_IDX":I
    .end local v46    # "STATUS_COLUMN_IDX":I
    .end local v47    # "TIMESTAMP_COLUMN_IDX":I
    .end local v48    # "TYPE_COLUMN_IDX":I
    .end local v49    # "cursor":Landroid/database/Cursor;
    .end local v52    # "imConversationIds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    .end local v53    # "imConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversation;>;"
    .end local v54    # "rcsType":I
    :catch_1
    move-exception v51

    .line 491
    .local v51, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :try_start_3
    new-instance v2, Lcom/sonymobile/jms/conversation/ImConversationStorageException;

    const-string/jumbo v3, "Failed to retrieve ImConversations!"

    move-object/from16 v0, v51

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/conversation/ImConversationStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    .end local v51    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .restart local v38    # "CHAT_ID_COLUMN_IDX":I
    .restart local v39    # "CONTACT_COLUMN_IDX":I
    .restart local v40    # "DATA_COLUMN_IDX":I
    .restart local v41    # "FILE_SIZE_COLUMN_IDX":I
    .restart local v42    # "MESSAGE_ID_COLUMN_IDX":I
    .restart local v43    # "MIMETYPE_COLUMN_IDX":I
    .restart local v44    # "NAME_COLUMN_IDX":I
    .restart local v45    # "SENT_TIMESTAMP_COLUMN_IDX":I
    .restart local v46    # "STATUS_COLUMN_IDX":I
    .restart local v47    # "TIMESTAMP_COLUMN_IDX":I
    .restart local v48    # "TYPE_COLUMN_IDX":I
    .restart local v49    # "cursor":Landroid/database/Cursor;
    .restart local v52    # "imConversationIds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    .restart local v53    # "imConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversation;>;"
    .restart local v54    # "rcsType":I
    :pswitch_1
    :try_start_4
    move-object/from16 v0, v49

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v13

    .line 236
    .local v13, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 242
    .local v4, "localTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 243
    .local v6, "sentTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "mimeType":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 246
    .local v9, "msgId":Ljava/lang/String;
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v8

    .line 247
    .local v8, "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 249
    .local v11, "content":Ljava/lang/String;
    new-instance v12, Lcom/sonymobile/jms/conversation/ImConversation;

    sget-object v16, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual/range {v3 .. v11}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asIncomingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v18

    const/16 v17, 0x0

    move-wide v14, v4

    invoke-direct/range {v12 .. v18}, Lcom/sonymobile/jms/conversation/ImConversation;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Direction;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage;)V

    move-object/from16 v0, v53

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 258
    .end local v4    # "localTimestamp":J
    .end local v6    # "sentTimestamp":J
    .end local v8    # "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v9    # "msgId":Ljava/lang/String;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "content":Ljava/lang/String;
    .end local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :pswitch_2
    move-object/from16 v0, v49

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v13

    .line 260
    .restart local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 266
    .restart local v4    # "localTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 267
    .restart local v6    # "sentTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 268
    .restart local v10    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 270
    .restart local v9    # "msgId":Ljava/lang/String;
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v8

    .line 271
    .restart local v8    # "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 273
    .restart local v11    # "content":Ljava/lang/String;
    new-instance v12, Lcom/sonymobile/jms/conversation/ImConversation;

    sget-object v16, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual/range {v3 .. v11}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asOutgoingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v18

    const/16 v17, 0x0

    move-wide v14, v4

    invoke-direct/range {v12 .. v18}, Lcom/sonymobile/jms/conversation/ImConversation;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Direction;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage;)V

    move-object/from16 v0, v53

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 282
    .end local v4    # "localTimestamp":J
    .end local v6    # "sentTimestamp":J
    .end local v8    # "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v9    # "msgId":Ljava/lang/String;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "content":Ljava/lang/String;
    .end local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    :pswitch_3
    move-object/from16 v0, v49

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v13

    .line 284
    .restart local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 290
    .restart local v4    # "localTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 291
    .restart local v6    # "sentTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 292
    .restart local v10    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 294
    .restart local v9    # "msgId":Ljava/lang/String;
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v8

    .line 295
    .restart local v8    # "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    move-object/from16 v0, v49

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 296
    .local v20, "fileName":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 297
    .local v18, "fileSize":J
    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 299
    .local v16, "fileUri":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/jms/conversation/ImConversation;

    sget-object v3, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v21, v0

    move-object/from16 v15, p0

    move-object/from16 v17, v10

    invoke-direct/range {v15 .. v20}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->asImFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v28

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    invoke-virtual/range {v21 .. v28}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asIncomingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v28

    const/16 v27, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v13

    move-wide/from16 v24, v4

    move-object/from16 v26, v3

    invoke-direct/range {v22 .. v28}, Lcom/sonymobile/jms/conversation/ImConversation;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Direction;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage;)V

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 311
    .end local v4    # "localTimestamp":J
    .end local v6    # "sentTimestamp":J
    .end local v8    # "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v9    # "msgId":Ljava/lang/String;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v16    # "fileUri":Ljava/lang/String;
    .end local v18    # "fileSize":J
    .end local v20    # "fileName":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, v49

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v13

    .line 313
    .restart local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 319
    .restart local v4    # "localTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 320
    .restart local v6    # "sentTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 321
    .restart local v10    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 323
    .restart local v9    # "msgId":Ljava/lang/String;
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v8

    .line 324
    .restart local v8    # "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    move-object/from16 v0, v49

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 325
    .restart local v20    # "fileName":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 326
    .restart local v18    # "fileSize":J
    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 328
    .restart local v16    # "fileUri":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/jms/conversation/ImConversation;

    sget-object v3, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v21, v0

    move-object/from16 v15, p0

    move-object/from16 v17, v10

    invoke-direct/range {v15 .. v20}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->asImFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v28

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    invoke-virtual/range {v21 .. v28}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asOutgoingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v28

    const/16 v27, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v13

    move-wide/from16 v24, v4

    move-object/from16 v26, v3

    invoke-direct/range {v22 .. v28}, Lcom/sonymobile/jms/conversation/ImConversation;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Direction;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage;)V

    move-object/from16 v0, v53

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 339
    .end local v4    # "localTimestamp":J
    .end local v6    # "sentTimestamp":J
    .end local v8    # "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v9    # "msgId":Ljava/lang/String;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v16    # "fileUri":Ljava/lang/String;
    .end local v18    # "fileSize":J
    .end local v20    # "fileName":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v13

    .line 341
    .restart local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 344
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 347
    .restart local v4    # "localTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 348
    .restart local v6    # "sentTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 349
    .restart local v10    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 350
    .restart local v9    # "msgId":Ljava/lang/String;
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;

    move-result-object v27

    .line 351
    .local v27, "subject":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v8

    .line 352
    .restart local v8    # "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 354
    .restart local v11    # "content":Ljava/lang/String;
    new-instance v22, Lcom/sonymobile/jms/conversation/ImConversation;

    sget-object v26, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual/range {v3 .. v11}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asIncomingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v28

    move-object/from16 v23, v13

    move-wide/from16 v24, v4

    invoke-direct/range {v22 .. v28}, Lcom/sonymobile/jms/conversation/ImConversation;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Direction;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 363
    .end local v4    # "localTimestamp":J
    .end local v6    # "sentTimestamp":J
    .end local v8    # "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v9    # "msgId":Ljava/lang/String;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "content":Ljava/lang/String;
    .end local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v27    # "subject":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v13

    .line 365
    .restart local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 370
    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 371
    .restart local v4    # "localTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 372
    .restart local v6    # "sentTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 373
    .restart local v10    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 374
    .restart local v9    # "msgId":Ljava/lang/String;
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;

    move-result-object v27

    .line 375
    .restart local v27    # "subject":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v8

    .line 376
    .restart local v8    # "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    move-object/from16 v0, v49

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 377
    .restart local v20    # "fileName":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 378
    .restart local v18    # "fileSize":J
    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 380
    .restart local v16    # "fileUri":Ljava/lang/String;
    new-instance v22, Lcom/sonymobile/jms/conversation/ImConversation;

    sget-object v26, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v29, v0

    move-object/from16 v15, p0

    move-object/from16 v17, v10

    invoke-direct/range {v15 .. v20}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->asImFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v36

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    invoke-virtual/range {v29 .. v36}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asIncomingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v28

    move-object/from16 v23, v13

    move-wide/from16 v24, v4

    invoke-direct/range {v22 .. v28}, Lcom/sonymobile/jms/conversation/ImConversation;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Direction;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 391
    .end local v4    # "localTimestamp":J
    .end local v6    # "sentTimestamp":J
    .end local v8    # "contact":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v9    # "msgId":Ljava/lang/String;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v16    # "fileUri":Ljava/lang/String;
    .end local v18    # "fileSize":J
    .end local v20    # "fileName":Ljava/lang/String;
    .end local v27    # "subject":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v13

    .line 393
    .restart local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 399
    .restart local v4    # "localTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 400
    .restart local v6    # "sentTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 401
    .restart local v10    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 402
    .restart local v9    # "msgId":Ljava/lang/String;
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;

    move-result-object v27

    .line 404
    .restart local v27    # "subject":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 406
    .restart local v11    # "content":Ljava/lang/String;
    new-instance v22, Lcom/sonymobile/jms/conversation/ImConversation;

    sget-object v26, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v29, v0

    const/16 v34, 0x0

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v37, v11

    invoke-virtual/range {v29 .. v37}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asOutgoingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v28

    move-object/from16 v23, v13

    move-wide/from16 v24, v4

    invoke-direct/range {v22 .. v28}, Lcom/sonymobile/jms/conversation/ImConversation;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Direction;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 415
    .end local v4    # "localTimestamp":J
    .end local v6    # "sentTimestamp":J
    .end local v9    # "msgId":Ljava/lang/String;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "content":Ljava/lang/String;
    .end local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v27    # "subject":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v13

    .line 417
    .restart local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 423
    .restart local v4    # "localTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 424
    .restart local v6    # "sentTimestamp":J
    move-object/from16 v0, v49

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 425
    .restart local v10    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 426
    .restart local v9    # "msgId":Ljava/lang/String;
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;

    move-result-object v27

    .line 428
    .restart local v27    # "subject":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 429
    .restart local v20    # "fileName":Ljava/lang/String;
    move-object/from16 v0, v49

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 430
    .restart local v18    # "fileSize":J
    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 432
    .restart local v16    # "fileUri":Ljava/lang/String;
    new-instance v22, Lcom/sonymobile/jms/conversation/ImConversation;

    sget-object v26, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    move-object/from16 v29, v0

    move-object/from16 v15, p0

    move-object/from16 v17, v10

    invoke-direct/range {v15 .. v20}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->asImFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v36

    const/16 v34, 0x0

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    move-object/from16 v35, v9

    invoke-virtual/range {v29 .. v36}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asOutgoingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v28

    move-object/from16 v23, v13

    move-wide/from16 v24, v4

    invoke-direct/range {v22 .. v28}, Lcom/sonymobile/jms/conversation/ImConversation;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Direction;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 443
    .end local v4    # "localTimestamp":J
    .end local v6    # "sentTimestamp":J
    .end local v9    # "msgId":Ljava/lang/String;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v16    # "fileUri":Ljava/lang/String;
    .end local v18    # "fileSize":J
    .end local v20    # "fileName":Ljava/lang/String;
    .end local v27    # "subject":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v13

    .line 445
    .restart local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    move-object/from16 v0, v52

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 450
    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 451
    .restart local v4    # "localTimestamp":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mImMessageStorageManager:Lcom/sonymobile/jms/message/ImMessageStorageManager;

    invoke-virtual {v2, v13}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getMostRecentImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v28

    .line 453
    .local v28, "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    invoke-interface {v13}, Lcom/sonymobile/jms/conversation/ImConversationId;->asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->getSubject(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Ljava/lang/String;

    move-result-object v27

    .line 455
    .restart local v27    # "subject":Ljava/lang/String;
    if-nez v28, :cond_3

    .line 459
    new-instance v22, Lcom/sonymobile/jms/conversation/ImConversation;

    move-object/from16 v0, v49

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->getDirectionFromRcsEventStatus(I)Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v26

    move-object/from16 v23, v13

    move-wide/from16 v24, v4

    invoke-direct/range {v22 .. v28}, Lcom/sonymobile/jms/conversation/ImConversation;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Direction;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 456
    :cond_3
    new-instance v22, Lcom/sonymobile/jms/conversation/ImConversation;

    invoke-interface/range {v28 .. v28}, Lcom/sonymobile/jms/message/ImUserMessage;->getDirection()Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v26

    move-object/from16 v23, v13

    move-wide/from16 v24, v4

    invoke-direct/range {v22 .. v28}, Lcom/sonymobile/jms/conversation/ImConversation;-><init>(Lcom/sonymobile/jms/conversation/ImConversationId;JLcom/sonymobile/jms/message/ImUserMessage$Direction;Ljava/lang/String;Lcom/sonymobile/jms/message/ImUserMessage;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 495
    .end local v4    # "localTimestamp":J
    .end local v13    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v27    # "subject":Ljava/lang/String;
    .end local v28    # "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    .end local v54    # "rcsType":I
    :cond_4
    invoke-interface/range {v49 .. v49}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .end local v38    # "CHAT_ID_COLUMN_IDX":I
    .end local v39    # "CONTACT_COLUMN_IDX":I
    .end local v40    # "DATA_COLUMN_IDX":I
    .end local v41    # "FILE_SIZE_COLUMN_IDX":I
    .end local v42    # "MESSAGE_ID_COLUMN_IDX":I
    .end local v43    # "MIMETYPE_COLUMN_IDX":I
    .end local v44    # "NAME_COLUMN_IDX":I
    .end local v45    # "SENT_TIMESTAMP_COLUMN_IDX":I
    .end local v46    # "STATUS_COLUMN_IDX":I
    .end local v47    # "TIMESTAMP_COLUMN_IDX":I
    .end local v48    # "TYPE_COLUMN_IDX":I
    .end local v49    # "cursor":Landroid/database/Cursor;
    .end local v52    # "imConversationIds":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/conversation/ImConversationId;>;"
    .end local v53    # "imConversations":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/conversation/ImConversation;>;"
    :cond_5
    invoke-interface/range {v49 .. v49}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method unregisterImConversationObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "imConversationObserver"    # Landroid/database/ContentObserver;

    .prologue
    .line 533
    sget-object v1, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->OBSERVER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 535
    iget v0, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mNrOfRegisteredObservers:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mNrOfRegisteredObservers:I

    const-string/jumbo v0, "\' ImConversationObserver \'"

    .line 536
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v2, " ,number of unregistered observers("

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget v2, p0, Lcom/sonymobile/jms/conversation/ImConversationStorageManager;->mNrOfRegisteredObservers:I

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v2, ") \'"

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 538
    monitor-exit v1

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
