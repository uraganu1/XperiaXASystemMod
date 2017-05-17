.class public final Lcom/sonymobile/jms/message/ImMessageStorageManager;
.super Ljava/lang/Object;
.source "ImMessageStorageManager.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImMessageStorageApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/message/ImMessageStorageManager$1;
    }
.end annotation


# static fields
.field private static final GROUP_MESSAGE_DELIVERY_PROJECTION:[Ljava/lang/String;

.field private static final IM_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final IM_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static final IM_MESSAGE_QUEUE_LOCK:Ljava/lang/Object;

.field private static final OBSERVER_LOCK:Ljava/lang/Object;

.field private static final ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

.field private static final ORDER_BY_TIMESTAMP_DESC:Ljava/lang/String;

.field private static final SELECTION_FILE_TRANSFERS:Ljava/lang/String;

.field private static final SELECTION_FILE_TRANSFER_BY_MSG_ID:Ljava/lang/String;

.field private static final SELECTION_GROUP_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_GROUP_SYSTEM_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_HAS_INCOMING_UNREAD_GROUP_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_HAS_INCOMING_UNREAD_ONE2ONE_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_INCOMING_FILE_TRANSFERS:Ljava/lang/String;

.field private static final SELECTION_INCOMING_READ_MESSAGES_WITH_UNSENT_READ_REPORT:Ljava/lang/String;

.field private static final SELECTION_INCOMING_UNREAD_GROUP_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_INCOMING_UNREAD_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_INCOMING_UNREAD_ONE2ONE_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_ONE2ONE_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_OUTGOING_FILE_TRANSFERS:Ljava/lang/String;

.field private static final SELECTION_QUEUED_FILE_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_QUEUED_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_QUEUED_ONE2ONE_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_QUEUED_TEXT_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_TEXT_MESSAGES:Ljava/lang/String;

.field private static final SELECTION_UNPROCESSED_UNDELIVERED_MESSAGES:Ljava/lang/String;


# instance fields
.field private mAppCtx:Landroid/content/Context;

.field private mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

.field private mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

.field private mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

.field private mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

.field private mMessageEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/message/ImUserMessageEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoingFileTransferProgress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

.field private mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

.field private mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xf

    .line 63
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id AS row_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "message_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const-string/jumbo v1, "status"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "timestamp_sent"

    aput-object v2, v0, v1

    const-string/jumbo v1, "timestamp_delivered"

    aput-object v1, v0, v6

    const-string/jumbo v1, "timestamp_displayed"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string/jumbo v2, "contact"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "total_size"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "chat_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "COUNT(*) AS "

    const-string/jumbo v2, "count"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 86
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "contact"

    aput-object v1, v0, v3

    const-string/jumbo v1, "status"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "read_status"

    aput-object v2, v0, v1

    const-string/jumbo v1, "timestamp_delivered"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string/jumbo v2, "timestamp_displayed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->GROUP_MESSAGE_DELIVERY_PROJECTION:[Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_QUEUED_MESSAGES:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_QUEUED_MESSAGES:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_QUEUED_TEXT_MESSAGES:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_QUEUED_MESSAGES:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_QUEUED_FILE_MESSAGES:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_QUEUED_MESSAGES:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_QUEUED_ONE2ONE_MESSAGES:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " IN("

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

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_INCOMING_FILE_TRANSFERS:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_OUTGOING_FILE_TRANSFERS:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_FILE_TRANSFERS:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_GROUP_SYSTEM_MESSAGES:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_ONE2ONE_MESSAGES:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_TEXT_MESSAGES:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_GROUP_MESSAGES:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "delivery_status"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND (("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")) OR ("

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

    const-string/jumbo v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_UNPROCESSED_UNDELIVERED_MESSAGES:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "read_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_INCOMING_UNREAD_MESSAGES:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "read_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_INCOMING_UNREAD_ONE2ONE_MESSAGES:Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "read_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_INCOMING_UNREAD_GROUP_MESSAGES:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "read_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_HAS_INCOMING_UNREAD_ONE2ONE_MESSAGES:Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "read_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_HAS_INCOMING_UNREAD_GROUP_MESSAGES:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "read_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_INCOMING_READ_MESSAGES_WITH_UNSENT_READ_REPORT:Ljava/lang/String;

    const-string/jumbo v0, "_date"

    const-string/jumbo v1, " ASC"

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

    const-string/jumbo v0, "_date"

    const-string/jumbo v1, " DESC"

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_DESC:Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_FILE_TRANSFERS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " AND ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_FILE_TRANSFER_BY_MSG_ID:Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_QUEUE_LOCK:Ljava/lang/Object;

    .line 251
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->OBSERVER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/sonymobile/jms/contact/ImContactManager;Lcom/sonymobile/jms/file/ImFileManager;Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;Lcom/sonymobile/jms/permission/ImPermissionManager;Lcom/sonymobile/jms/message/RcsMessageEventHandler;Lcom/sonymobile/jms/message/ImFileIconManager;Lcom/sonymobile/rcs/provider/messaging/RichMessaging;Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "imContactManager"    # Lcom/sonymobile/jms/contact/ImContactManager;
    .param p3, "imFileManager"    # Lcom/sonymobile/jms/file/ImFileManager;
    .param p4, "imUndeliveredMessageManager"    # Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;
    .param p5, "imPermissionManager"    # Lcom/sonymobile/jms/permission/ImPermissionManager;
    .param p6, "rcsMessageEventHandler"    # Lcom/sonymobile/jms/message/RcsMessageEventHandler;
    .param p7, "imImFileIconManager"    # Lcom/sonymobile/jms/message/ImFileIconManager;
    .param p8, "rcsRichMessaging"    # Lcom/sonymobile/rcs/provider/messaging/RichMessaging;
    .param p9, "rcsEventsLogApi"    # Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    .line 264
    iput-object p2, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    .line 265
    iput-object p3, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    .line 266
    iput-object p4, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    .line 267
    iput-object p7, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

    .line 268
    iput-object p8, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    .line 269
    iput-object p9, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    .line 270
    iput-object p6, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    .line 271
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mMessageEventListeners:Ljava/util/Set;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mOngoingFileTransferProgress:Ljava/util/Map;

    .line 273
    return-void
.end method

.method private asDirection(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string/jumbo v1, "type"

    .line 978
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 979
    .local v0, "rcsMessageType":I
    packed-switch v0, :pswitch_data_0

    .line 992
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown direction for message with type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 995
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    return-object v1

    .line 985
    :pswitch_1
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    return-object v1

    .line 990
    :pswitch_2
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    return-object v1

    .line 979
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
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
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private asGroupParticipantImFileMessageDeliveryStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string/jumbo v2, "read_status"

    .line 1317
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .local v1, "rcsPartialDisplayStatus":I
    const/4 v2, 0x1

    .line 1319
    if-eq v2, v1, :cond_0

    const-string/jumbo v2, "status"

    .line 1323
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .local v0, "rcsPartialDeliveryStatus":I
    const/4 v2, 0x7

    .line 1325
    if-eq v2, v0, :cond_1

    const/16 v2, 0x21

    .line 1328
    if-eq v2, v0, :cond_2

    .line 1332
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v2

    .line 1320
    .end local v0    # "rcsPartialDeliveryStatus":I
    :cond_0
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->DOWNLOADED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v2

    .line 1326
    .restart local v0    # "rcsPartialDeliveryStatus":I
    :cond_1
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->INVITATION_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v2

    .line 1329
    :cond_2
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->UNSUPPORTED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v2
.end method

.method private asGroupParticipantImTextMessageDeliveryStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string/jumbo v2, "read_status"

    .line 1298
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .local v1, "rcsPartialDisplayStatus":I
    const/4 v2, 0x1

    .line 1300
    if-eq v2, v1, :cond_0

    const-string/jumbo v2, "status"

    .line 1304
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .local v0, "rcsPartialDeliveryStatus":I
    const/4 v2, 0x7

    .line 1306
    if-eq v2, v0, :cond_1

    const/16 v2, 0x21

    .line 1309
    if-eq v2, v0, :cond_2

    .line 1313
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    return-object v2

    .line 1301
    .end local v0    # "rcsPartialDeliveryStatus":I
    :cond_0
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->DISPLAYED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    return-object v2

    .line 1307
    .restart local v0    # "rcsPartialDeliveryStatus":I
    :cond_1
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    return-object v2

    .line 1310
    :cond_2
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->UNSUPPORTED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    return-object v2
.end method

.method private asImSystemMessageType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "status"

    .line 1847
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1848
    .local v0, "rcsMsgStatus":I
    packed-switch v0, :pswitch_data_0

    .line 1854
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Detected unknown rcs system event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1850
    :pswitch_0
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_JOINED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    return-object v1

    .line 1852
    :pswitch_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_LEFT:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    return-object v1

    .line 1848
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private asImUserMessageId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string/jumbo v0, "message_id"

    .line 698
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private asRowId(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string/jumbo v0, "row_id"

    .line 721
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private asRowId(Landroid/net/Uri;)J
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v3, "row_id"

    .line 703
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 704
    .local v2, "rowId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 708
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4

    .line 705
    :cond_0
    new-instance v3, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to get row id from uri: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 708
    .end local v2    # "rowId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 710
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v3, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to get row id from uri \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to get row id from uri \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private asType(Landroid/net/Uri;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string/jumbo v2, "message_type"

    .line 652
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 658
    invoke-static {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v2

    return-object v2

    .line 654
    :cond_0
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to get type from uri \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .end local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to get type from uri \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "providerUri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 288
    if-eqz p2, :cond_0

    .line 291
    return-void

    .line 289
    :cond_0
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to get cursor from provider uri \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertImUserMessageUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asType(Landroid/net/Uri;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    .line 685
    .local v0, "messageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager$1;->$SwitchMap$com$sonymobile$jms$message$ImMessageStorageApi$ImMessageType:[I

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 690
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Uri is not an im user message uri \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    :pswitch_0
    return-void

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getImConversationSelection(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 294
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "contact"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chat_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMessageIdsOfIncomingFileMessages(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/util/List;
    .locals 11
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 801
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "message_id"

    aput-object v0, v2, v4

    .line 804
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_INCOMING_FILE_TRANSFERS:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImConversationSelection(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 809
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 811
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    const-string/jumbo v0, "message_id"

    .line 812
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 813
    .local v9, "msgIdIndex":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v10, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 825
    if-nez v6, :cond_1

    .line 826
    :goto_1
    return-object v10

    .line 815
    :cond_0
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 816
    .local v8, "msgId":Ljava/lang/String;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 826
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "msgId":Ljava/lang/String;
    .end local v9    # "msgIdIndex":I
    .end local v10    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 821
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Message ids for conversationId \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' could not be fetched from eventlog!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 825
    if-nez v6, :cond_2

    .line 826
    :goto_2
    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "msgIdIndex":I
    .restart local v10    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "msgIdIndex":I
    .end local v10    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private static getUnprocessedUndeliveredImUserMessagesSelection(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Ljava/lang/String;
    .locals 2
    .param p0, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_UNPROCESSED_UNDELIVERED_MESSAGES:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "contact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isGroupMessage(I)Z
    .locals 1
    .param p1, "rcsMessageType"    # I

    .prologue
    .line 1000
    sparse-switch p1, :sswitch_data_0

    .line 1008
    const/4 v0, 0x0

    return v0

    .line 1006
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 1000
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isImMessageAuthority(Ljava/lang/String;)Z
    .locals 1
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 318
    sget-object v0, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMessageRead(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "jmsCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x1

    const-string/jumbo v1, "read_status"

    .line 832
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private markImUserMessageAsDeliveryStatusProcessed(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "msg \'"

    .line 423
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->markMessagesAsDeliveryStatusProcessed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' could not be marked with delivery status processed in eventlog!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private retrieveImSystemMessageCursor(J)Landroid/database/Cursor;
    .locals 9
    .param p1, "rowId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "row_id"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 754
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 756
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 757
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    return-object v6

    .line 758
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message with row id \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\' could not be found in eventlog!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 764
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message with row id \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\' could not be retrieved from eventlog!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 767
    if-nez v6, :cond_1

    .line 768
    :goto_0
    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private retrieveImUserMessageCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "message_id"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 776
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 780
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 782
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 783
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    return-object v6

    .line 784
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message with id \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\' could not be found in eventlog!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 790
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message with id \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\' could not be retrieved from eventlog!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 793
    if-nez v6, :cond_1

    .line 794
    :goto_0
    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public addGroupChatSessionTerminatedByUserSystemMessage(Lcom/sonymobile/jms/conversation/ImGroupConversationId;Ljava/lang/String;)V
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .param p2, "rcsSessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "ImConversation \'"

    .line 474
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\' rcs group chat session \'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsRichMessaging:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    invoke-virtual {p1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const/4 v4, 0x5

    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addChatSessionTerminationByUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    const-string/jumbo v2, "Unable to add a rcs group chat session terminated by user system message to eventlog!"

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public asFileMessageStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Status;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string/jumbo v2, "read_status"

    .line 1064
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1065
    .local v1, "readStatusColIndex":I
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asDirection(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v2, v3, :cond_1

    :cond_0
    const-string/jumbo v2, "status"

    .line 1073
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1074
    .local v0, "rcsMsgStatus":I
    packed-switch v0, :pswitch_data_0

    .line 1138
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Detected unknown rcs message state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 1140
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1065
    .end local v0    # "rcsMsgStatus":I
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1070
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1077
    .restart local v0    # "rcsMsgStatus":I
    :pswitch_1
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1079
    :pswitch_2
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->STARTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1081
    :pswitch_3
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1083
    :pswitch_4
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1085
    :pswitch_5
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->IN_PROGRESS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1087
    :pswitch_6
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PAUSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1089
    :pswitch_7
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->CANCELED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1091
    :pswitch_8
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TERMINATED_BY_REMOTE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1093
    :pswitch_9
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ABORTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1095
    :pswitch_a
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1097
    :pswitch_b
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1099
    :pswitch_c
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1101
    :pswitch_d
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_LOW_SPACE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1103
    :pswitch_e
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_SIZE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1105
    :pswitch_f
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1107
    :pswitch_10
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->UPLOADED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1109
    :pswitch_11
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1111
    :pswitch_12
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1113
    :pswitch_13
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MISSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1115
    :pswitch_14
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PENDING:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1119
    :pswitch_15
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVER_NOTIFIED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1121
    :pswitch_16
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->REPORT_REQUESTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1123
    :pswitch_17
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->INITIATED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1125
    :pswitch_18
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_DOWNLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1127
    :pswitch_19
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_UPLOAD_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1129
    :pswitch_1a
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->NO_CHAT_SESSION:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1131
    :pswitch_1b
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MEDIA_SAVING_FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1134
    :pswitch_1c
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_FILE_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1136
    :pswitch_1d
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_SPAM_MESSAGE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v2

    .line 1074
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_1
        :pswitch_1
        :pswitch_16
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_14
        :pswitch_f
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_1c
        :pswitch_1d
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public asImConversationId(Landroid/database/Cursor;)Lcom/sonymobile/jms/conversation/ImConversationId;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "type"

    .line 1946
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1962
    :pswitch_0
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    const-string/jumbo v2, "The current position in the cursor does not contain an ImConversationId"

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const-string/jumbo v1, "chat_id"

    .line 1952
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/conversation/ImGroupConversationId;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    move-result-object v1

    return-object v1

    .line 1958
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    const-string/jumbo v2, "contact"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    .line 1960
    .local v0, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-static {v0}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;->fromImContactNumber(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v1

    return-object v1

    .line 1946
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
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
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public asImFileMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImFileMessage;
    .locals 20
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 1861
    invoke-virtual/range {p0 .. p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v2

    sget-object v9, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v2, v9, :cond_1

    const-string/jumbo v2, "message_id"

    .line 1865
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .local v16, "msgId":Ljava/lang/String;
    const-string/jumbo v2, "_date"

    .line 1866
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .local v10, "localTimestamp":J
    const-string/jumbo v2, "timestamp_sent"

    .line 1868
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .local v12, "sentTimestamp":J
    const-string/jumbo v2, "contact"

    .line 1871
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1873
    .local v8, "authorOrRecipientNumber":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asDirection(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v14

    .local v14, "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    const-string/jumbo v2, "type"

    .line 1874
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1875
    .local v19, "type":I
    if-nez v8, :cond_2

    :cond_0
    const/4 v15, 0x0

    .local v15, "authorOrRecipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    :goto_0
    const-string/jumbo v2, "mime_type"

    .line 1879
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "mimeType":Ljava/lang/String;
    const-string/jumbo v2, "total_size"

    .line 1880
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .local v4, "fileSize":J
    const-string/jumbo v2, "name"

    .line 1881
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "filename":Ljava/lang/String;
    const-string/jumbo v2, "_data"

    .line 1884
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1885
    .local v18, "fileUriString":Ljava/lang/String;
    if-nez v18, :cond_4

    .line 1889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sonymobile/jms/file/ImFileManager;->asRemoteFile(Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v17

    .line 1891
    .local v17, "imFile":Lcom/sonymobile/jms/file/ImFile;
    :goto_1
    new-instance v9, Lcom/sonymobile/jms/message/ImFileMessage;

    invoke-direct/range {v9 .. v17}, Lcom/sonymobile/jms/message/ImFileMessage;-><init>(JJLcom/sonymobile/jms/message/ImUserMessage$Direction;Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)V

    return-object v9

    .line 1862
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "fileSize":J
    .end local v6    # "filename":Ljava/lang/String;
    .end local v8    # "authorOrRecipientNumber":Ljava/lang/String;
    .end local v10    # "localTimestamp":J
    .end local v12    # "sentTimestamp":J
    .end local v14    # "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .end local v15    # "authorOrRecipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v16    # "msgId":Ljava/lang/String;
    .end local v17    # "imFile":Lcom/sonymobile/jms/file/ImFile;
    .end local v18    # "fileUriString":Ljava/lang/String;
    .end local v19    # "type":I
    :cond_1
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    const-string/jumbo v9, "The current position in the the cursor does not contain an ImFileMessage"

    invoke-direct {v2, v9}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1875
    .restart local v8    # "authorOrRecipientNumber":Ljava/lang/String;
    .restart local v10    # "localTimestamp":J
    .restart local v12    # "sentTimestamp":J
    .restart local v14    # "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .restart local v16    # "msgId":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->isGroupMessage(I)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v2, v8}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v15

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v14, v2, :cond_0

    goto :goto_2

    .line 1886
    .restart local v3    # "mimeType":Ljava/lang/String;
    .restart local v4    # "fileSize":J
    .restart local v6    # "filename":Ljava/lang/String;
    .restart local v15    # "authorOrRecipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    .restart local v18    # "fileUriString":Ljava/lang/String;
    :cond_4
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1887
    .local v7, "fileUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    invoke-virtual/range {v2 .. v7}, Lcom/sonymobile/jms/file/ImFileManager;->asLocalFile(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v17

    .restart local v17    # "imFile":Lcom/sonymobile/jms/file/ImFile;
    goto :goto_1
.end method

.method public asImFileMessageDeliveryStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "read_status"

    .line 1186
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .local v0, "rcsMsgReadStatus":I
    const/4 v2, 0x1

    .line 1188
    if-eq v2, v0, :cond_1

    :cond_0
    const-string/jumbo v2, "status"

    .line 1195
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1197
    .local v1, "rcsMsgStatus":I
    packed-switch v1, :pswitch_data_0

    .line 1233
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Detected unknown rcs message state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 1235
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->FAILED_INVITATION_DELIVERY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v2

    .line 1188
    .end local v1    # "rcsMsgStatus":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asDirection(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-ne v2, v3, :cond_0

    .line 1192
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->DOWNLOADED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v2

    .line 1214
    .restart local v1    # "rcsMsgStatus":I
    :pswitch_1
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->FAILED_INVITATION_DELIVERY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v2

    .line 1223
    :pswitch_2
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v2

    .line 1228
    :pswitch_3
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->INVITATION_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v2

    .line 1231
    :pswitch_4
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;->FAILED_DOWNLOAD:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    return-object v2

    .line 1197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public asImSystemMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImSystemMessage;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 1925
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager$1;->$SwitchMap$com$sonymobile$jms$message$ImMessageStorageApi$ImMessageType:[I

    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 1937
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The current position in the cursor does not contain any of the supported ImSystemMessage types"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string/jumbo v1, "_date"

    .line 1927
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1928
    .local v2, "timestamp":J
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    const-string/jumbo v4, "contact"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    .line 1930
    .local v0, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    new-instance v1, Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;

    invoke-direct {v1, v0, v2, v3}, Lcom/sonymobile/jms/message/ImJoinedChatSystemMessage;-><init>(Lcom/sonymobile/jms/contact/ImContactNumber;J)V

    return-object v1

    .end local v0    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v2    # "timestamp":J
    :pswitch_1
    const-string/jumbo v1, "_date"

    .line 1932
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1933
    .restart local v2    # "timestamp":J
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    const-string/jumbo v4, "contact"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    .line 1935
    .restart local v0    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    new-instance v1, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;

    invoke-direct {v1, v0, v2, v3}, Lcom/sonymobile/jms/message/ImLeftChatSystemMessage;-><init>(Lcom/sonymobile/jms/contact/ImContactNumber;J)V

    return-object v1

    .line 1925
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public asImTextMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImTextMessage;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1897
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v1

    sget-object v12, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    if-ne v1, v12, :cond_1

    const-string/jumbo v1, "message_id"

    .line 1901
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "msgId":Ljava/lang/String;
    const-string/jumbo v1, "_date"

    .line 1902
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .local v2, "localTimestamp":J
    const-string/jumbo v1, "timestamp_sent"

    .line 1904
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .local v4, "sentTimestamp":J
    const-string/jumbo v1, "contact"

    .line 1907
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1909
    .local v0, "authorOrRecipientNumber":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asDirection(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-result-object v6

    .local v6, "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    const-string/jumbo v1, "type"

    .line 1910
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1911
    .local v11, "type":I
    if-nez v0, :cond_2

    .local v7, "authorOrRecipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    :cond_0
    :goto_0
    const-string/jumbo v1, "mime_type"

    .line 1915
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "mimeType":Ljava/lang/String;
    const-string/jumbo v1, "_data"

    .line 1916
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1917
    .local v10, "text":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/jms/message/ImTextMessage;

    invoke-direct/range {v1 .. v10}, Lcom/sonymobile/jms/message/ImTextMessage;-><init>(JJLcom/sonymobile/jms/message/ImUserMessage$Direction;Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1898
    .end local v0    # "authorOrRecipientNumber":Ljava/lang/String;
    .end local v2    # "localTimestamp":J
    .end local v4    # "sentTimestamp":J
    .end local v6    # "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .end local v7    # "authorOrRecipient":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v8    # "msgId":Ljava/lang/String;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "type":I
    :cond_1
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    const-string/jumbo v12, "The current position in the cursor does not contain an ImTextMessage"

    invoke-direct {v1, v12}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1911
    .restart local v0    # "authorOrRecipientNumber":Ljava/lang/String;
    .restart local v2    # "localTimestamp":J
    .restart local v4    # "sentTimestamp":J
    .restart local v6    # "direction":Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .restart local v8    # "msgId":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_2
    invoke-direct {p0, v11}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->isGroupMessage(I)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v1, v0}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v7

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    if-eq v6, v1, :cond_0

    goto :goto_1
.end method

.method public asImTextMessageDeliveryStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "read_status"

    .line 1147
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .local v0, "rcsMsgReadStatus":I
    const/4 v2, 0x1

    .line 1149
    if-eq v2, v0, :cond_0

    const-string/jumbo v2, "status"

    .line 1153
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1155
    .local v1, "rcsMsgStatus":I
    packed-switch v1, :pswitch_data_0

    .line 1177
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Detected unknown rcs message state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 1179
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    return-object v2

    .line 1150
    .end local v1    # "rcsMsgStatus":I
    :cond_0
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->DISPLAYED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    return-object v2

    .line 1167
    .restart local v1    # "rcsMsgStatus":I
    :pswitch_1
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    return-object v2

    .line 1172
    :pswitch_2
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->NOT_DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    return-object v2

    .line 1175
    :pswitch_3
    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;->DELIVERED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    return-object v2

    .line 1155
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public asImUserMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    .line 513
    .local v0, "imMessageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager$1;->$SwitchMap$com$sonymobile$jms$message$ImMessageStorageApi$ImMessageType:[I

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 519
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    const-string/jumbo v2, "Message at cursor position is not a ImUserMessage"

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 515
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImFileMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v1

    return-object v1

    .line 517
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImTextMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v1

    return-object v1

    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public asImUserMessageId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertImUserMessageUri(Landroid/net/Uri;)V

    :try_start_0
    const-string/jumbo v2, "message_id"

    .line 669
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "msgId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 675
    return-object v1

    .line 671
    :cond_0
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to get user message id from uri \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v1    # "msgId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Failed to get user message id from uri \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public asIncomingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;
    .locals 11
    .param p1, "localTimestamp"    # J
    .param p3, "sentTimestamp"    # J
    .param p5, "author"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p6, "msgId"    # Ljava/lang/String;
    .param p7, "file"    # Lcom/sonymobile/jms/file/ImFile;

    .prologue
    .line 1259
    new-instance v1, Lcom/sonymobile/jms/message/ImFileMessage;

    sget-object v6, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/jms/message/ImFileMessage;-><init>(JJLcom/sonymobile/jms/message/ImUserMessage$Direction;Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)V

    return-object v1
.end method

.method public asIncomingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;
    .locals 11
    .param p1, "localTimestamp"    # J
    .param p3, "sentTimestamp"    # J
    .param p5, "author"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p6, "msgId"    # Ljava/lang/String;
    .param p7, "mimeType"    # Ljava/lang/String;
    .param p8, "text"    # Ljava/lang/String;

    .prologue
    .line 1247
    new-instance v1, Lcom/sonymobile/jms/message/ImTextMessage;

    sget-object v6, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->INCOMING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/sonymobile/jms/message/ImTextMessage;-><init>(JJLcom/sonymobile/jms/message/ImUserMessage$Direction;Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public asLocalTimestamp(Landroid/database/Cursor;)J
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string/jumbo v0, "_date"

    .line 1805
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public asOutgoingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;
    .locals 11
    .param p1, "localTimestamp"    # J
    .param p3, "sentTimestamp"    # J
    .param p5, "recipient"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p6, "msgId"    # Ljava/lang/String;
    .param p7, "file"    # Lcom/sonymobile/jms/file/ImFile;

    .prologue
    .line 1253
    new-instance v1, Lcom/sonymobile/jms/message/ImFileMessage;

    sget-object v6, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/sonymobile/jms/message/ImFileMessage;-><init>(JJLcom/sonymobile/jms/message/ImUserMessage$Direction;Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)V

    return-object v1
.end method

.method public asOutgoingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;
    .locals 11
    .param p1, "localTimestamp"    # J
    .param p3, "sentTimestamp"    # J
    .param p5, "recipient"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p6, "msgId"    # Ljava/lang/String;
    .param p7, "mimeType"    # Ljava/lang/String;
    .param p8, "text"    # Ljava/lang/String;

    .prologue
    .line 1241
    new-instance v1, Lcom/sonymobile/jms/message/ImTextMessage;

    sget-object v6, Lcom/sonymobile/jms/message/ImUserMessage$Direction;->OUTGOING:Lcom/sonymobile/jms/message/ImUserMessage$Direction;

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/sonymobile/jms/message/ImTextMessage;-><init>(JJLcom/sonymobile/jms/message/ImUserMessage$Direction;Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public asReceivedMessage(Lcom/sonymobile/jms/message/ImFileMessage;Landroid/net/Uri;)Lcom/sonymobile/jms/message/ImFileMessage;
    .locals 9
    .param p1, "nonReceivedImFileMessage"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p2, "receivedFileUri"    # Landroid/net/Uri;

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFilename()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/jms/file/ImFileManager;->asLocalFile(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v8

    .line 1274
    .local v8, "receivedImFile":Lcom/sonymobile/jms/file/ImFile;
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getLocalTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getSentTimestamp()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getAuthor()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asIncomingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v0

    return-object v0
.end method

.method public asRemoteMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/message/ImFileMessage;
    .locals 13
    .param p1, "localTimestamp"    # J
    .param p3, "sentTimestamp"    # J
    .param p5, "author"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p6, "msgId"    # Ljava/lang/String;
    .param p7, "mimeType"    # Ljava/lang/String;
    .param p8, "fileSize"    # J
    .param p10, "filename"    # Ljava/lang/String;

    .prologue
    .line 1265
    iget-object v4, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImFileManager:Lcom/sonymobile/jms/file/ImFileManager;

    move-object/from16 v0, p7

    move-wide/from16 v1, p8

    move-object/from16 v3, p10

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sonymobile/jms/file/ImFileManager;->asRemoteFile(Ljava/lang/String;JLjava/lang/String;)Lcom/sonymobile/jms/file/ImFile;

    move-result-object v12

    .local v12, "imFile":Lcom/sonymobile/jms/file/ImFile;
    move-object v5, p0

    move-wide v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 1266
    invoke-virtual/range {v5 .. v12}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asIncomingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v4

    return-object v4
.end method

.method public asTextMessageStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Status;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string/jumbo v1, "status"

    .line 1020
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1021
    .local v0, "rcsMsgStatus":I
    packed-switch v0, :pswitch_data_0

    .line 1056
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Detected unknown rcs message state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 1058
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1024
    :pswitch_1
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED_DELIVERY:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1026
    :pswitch_2
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1028
    :pswitch_3
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->CANCELED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1030
    :pswitch_4
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ABORTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1032
    :pswitch_5
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->ERROR:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1034
    :pswitch_6
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->TIMED_OUT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1036
    :pswitch_7
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1038
    :pswitch_8
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1040
    :pswitch_9
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->SENT:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1042
    :pswitch_a
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->RECEIVED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1044
    :pswitch_b
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->MISSED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1046
    :pswitch_c
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->PENDING:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1048
    :pswitch_d
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DELIVERED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1050
    :pswitch_e
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->REPORT_REQUESTED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1052
    :pswitch_f
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_SPAM_MESSAGE:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1054
    :pswitch_10
    sget-object v1, Lcom/sonymobile/jms/message/ImUserMessage$Status;->DECLINED_MAX_CHAT_SESSIONS:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    return-object v1

    .line 1021
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_1
        :pswitch_1
        :pswitch_e
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "type"

    .line 1825
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1826
    .local v0, "rcsMsgType":I
    packed-switch v0, :pswitch_data_0

    .line 1840
    :pswitch_0
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Detected unknown rcs type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1831
    :pswitch_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    return-object v1

    .line 1836
    :pswitch_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    return-object v1

    .line 1838
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImSystemMessageType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v1

    return-object v1

    .line 1826
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
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
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public asUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asType(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    .line 728
    .local v0, "messageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager$1;->$SwitchMap$com$sonymobile$jms$message$ImMessageStorageApi$ImMessageType:[I

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 742
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unsupported message type \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 731
    :pswitch_0
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "message_type"

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "message_id"

    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImUserMessageId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 737
    :pswitch_1
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "message_type"

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "row_id"

    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asRowId(Landroid/database/Cursor;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 728
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method clearOngoingFileTransferSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mOngoingFileTransferProgress:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    return-void
.end method

.method public createOutgoingMessage(Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;
    .locals 9
    .param p1, "file"    # Lcom/sonymobile/jms/file/ImFile;

    .prologue
    const/4 v6, 0x0

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v7, v6

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asOutgoingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Lcom/sonymobile/jms/file/ImFile;)Lcom/sonymobile/jms/message/ImFileMessage;

    move-result-object v0

    return-object v0
.end method

.method public createOutgoingMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string/jumbo v8, "text/plain"

    move-object v1, p0

    move-object v7, v6

    move-object v9, p1

    invoke-virtual/range {v1 .. v9}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asOutgoingMessage(JJLcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;

    move-result-object v0

    return-object v0
.end method

.method public deleteImUserMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "rowId "

    .line 875
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 877
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {v2, p1}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->deleteImEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_1

    .line 885
    return-void

    .line 884
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Landroid/database/SQLException;
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message with msg \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' could not be deleted from eventlog!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .end local v0    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 882
    .local v1, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message with msg \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' could not be deleted from eventlog!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public ensureFileIconRemoved(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 6
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 1630
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getMessageIdsOfIncomingFileMessages(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/util/List;

    move-result-object v3

    .line 1631
    .local v3, "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1638
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 1631
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1632
    .local v2, "msgId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ensureFileIconRemovedForMessageId(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1637
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "msgId":Ljava/lang/String;
    .end local v3    # "msgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v4, "Unable to ensure fileicon removed for ImConversation \'"

    .line 1635
    invoke-static {v4}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/jms/util/LogUtil;->flushAsWarning()V

    goto :goto_1
.end method

.method public ensureFileIconRemovedForMessageId(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/message/ImFileIconManager;->ensureFileIconRemovedForMessageId(Ljava/lang/String;)V

    .line 1626
    return-void
.end method

.method public getFileIcon(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/message/ImFileIconManager;->getFileIcon(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getFileMessageStatus(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage$Status;
    .locals 8
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string/jumbo v0, "msgId \'"

    .line 889
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v4, "\'"

    invoke-virtual {v0, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    const/4 v0, 0x3

    .line 890
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "status"

    aput-object v0, v2, v5

    const/4 v0, 0x1

    const-string/jumbo v4, "read_status"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v4, "type"

    aput-object v4, v2, v0

    .line 894
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "message_id"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 896
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 899
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 901
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 902
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asFileMessageStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage$Status;

    move-result-object v0

    .line 912
    if-nez v6, :cond_1

    .line 913
    :goto_0
    return-object v0

    .line 903
    :cond_0
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message with id \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' could not be fetched from eventlog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 909
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Message with id \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' could not be fetched from eventlog"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 912
    if-nez v6, :cond_2

    .line 913
    :goto_1
    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public getImGroupFileMessageDeliveryInfos(Ljava/lang/String;)Ljava/util/Set;
    .locals 20
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "msg \'"

    .line 1376
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1377
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "message_id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "selection":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1381
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessagingData;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sonymobile/jms/message/ImMessageStorageManager;->GROUP_MESSAGE_DELIVERY_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .local v15, "cursor":Landroid/database/Cursor;
    const-string/jumbo v2, "contact"

    .line 1383
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .local v14, "contactColIndex":I
    const-string/jumbo v2, "timestamp_delivered"

    .line 1384
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .local v18, "timestampDeliveredColIndex":I
    const-string/jumbo v2, "timestamp_displayed"

    .line 1386
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1388
    .local v19, "timestampDisplayedColIndex":I
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 1389
    .local v17, "imFileMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;>;"
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1404
    if-nez v15, :cond_1

    .line 1405
    :goto_1
    return-object v17

    .line 1390
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v8

    .line 1392
    .local v8, "groupParticipant":Lcom/sonymobile/jms/contact/ImContactNumber;
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1393
    .local v10, "deliveryTimestamp":J
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1394
    .local v12, "displayTimestamp":J
    new-instance v7, Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asGroupParticipantImFileMessageDeliveryStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;

    move-result-object v9

    invoke-direct/range {v7 .. v13}, Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;-><init>(Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImFileMessageDeliveryStatus;JJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1405
    .end local v8    # "groupParticipant":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v10    # "deliveryTimestamp":J
    .end local v12    # "displayTimestamp":J
    .end local v14    # "contactColIndex":I
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "imFileMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;>;"
    .end local v18    # "timestampDeliveredColIndex":I
    .end local v19    # "timestampDisplayedColIndex":I
    :catch_0
    move-exception v16

    .line 1400
    .local v16, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get group message delivery status from group chat provider for message \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v16    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1404
    if-nez v15, :cond_2

    .line 1405
    :goto_2
    throw v2

    .restart local v14    # "contactColIndex":I
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "imFileMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;>;"
    .restart local v18    # "timestampDeliveredColIndex":I
    .restart local v19    # "timestampDisplayedColIndex":I
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v14    # "contactColIndex":I
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "imFileMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImFileMessageDeliveryInfo;>;"
    .end local v18    # "timestampDeliveredColIndex":I
    .end local v19    # "timestampDisplayedColIndex":I
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public getImGroupTextMessageDeliveryInfos(Ljava/lang/String;)Ljava/util/Set;
    .locals 20
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "msg \'"

    .line 1338
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1339
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "message_id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "selection":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1343
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessagingData;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sonymobile/jms/message/ImMessageStorageManager;->GROUP_MESSAGE_DELIVERY_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .local v15, "cursor":Landroid/database/Cursor;
    const-string/jumbo v2, "contact"

    .line 1345
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .local v14, "contactColIndex":I
    const-string/jumbo v2, "timestamp_delivered"

    .line 1346
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .local v18, "timestampDeliveredColIndex":I
    const-string/jumbo v2, "timestamp_displayed"

    .line 1348
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1350
    .local v19, "timestampDisplayedColIndex":I
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 1351
    .local v17, "imTextMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;>;"
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1367
    if-nez v15, :cond_1

    .line 1368
    :goto_1
    return-object v17

    .line 1352
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/contact/ImContactManager;->createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v8

    .line 1354
    .local v8, "groupParticipant":Lcom/sonymobile/jms/contact/ImContactNumber;
    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1355
    .local v10, "deliveryTimestamp":J
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1356
    .local v12, "displayTimestamp":J
    new-instance v7, Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asGroupParticipantImTextMessageDeliveryStatus(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;

    move-result-object v9

    invoke-direct/range {v7 .. v13}, Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;-><init>(Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/jms/message/ImMessageStorageApi$ImTextMessageDeliveryStatus;JJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1368
    .end local v8    # "groupParticipant":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v10    # "deliveryTimestamp":J
    .end local v12    # "displayTimestamp":J
    .end local v14    # "contactColIndex":I
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "imTextMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;>;"
    .end local v18    # "timestampDeliveredColIndex":I
    .end local v19    # "timestampDisplayedColIndex":I
    :catch_0
    move-exception v16

    .line 1363
    .local v16, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get group message delivery status from group chat provider for message \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v16    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    .line 1367
    if-nez v15, :cond_2

    .line 1368
    :goto_2
    throw v2

    .restart local v14    # "contactColIndex":I
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "imTextMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;>;"
    .restart local v18    # "timestampDeliveredColIndex":I
    .restart local v19    # "timestampDisplayedColIndex":I
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v14    # "contactColIndex":I
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "imTextMessageDeliveryInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/message/ImTextMessageDeliveryInfo;>;"
    .end local v18    # "timestampDeliveredColIndex":I
    .end local v19    # "timestampDisplayedColIndex":I
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public getImMessageQueueLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_QUEUE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method getMessageEventListeners(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string/jumbo v3, "SessionEventListener("

    .line 378
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mMessageEventListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsVerbose()V

    .line 380
    iget-object v4, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mMessageEventListeners:Ljava/util/Set;

    monitor-enter v4

    .line 381
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mMessageEventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v3, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mMessageEventListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 387
    monitor-exit v4

    return-object v2

    .line 382
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 383
    .local v1, "listener":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Ljava/lang/Object;
    .end local v2    # "listeners":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v3

    .line 388
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getMostRecentImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;)Lcom/sonymobile/jms/message/ImUserMessage;
    .locals 9
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string/jumbo v0, "ImConversation \'"

    .line 1412
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_ONE2ONE_MESSAGES:Ljava/lang/String;

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " AND "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImConversationSelection(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1417
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1420
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_DESC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1422
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1423
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImUserMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1433
    if-nez v6, :cond_3

    .line 1434
    :goto_1
    return-object v0

    .line 1413
    .end local v1    # "providerUri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    sget-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_GROUP_MESSAGES:Ljava/lang/String;

    goto :goto_0

    .line 1433
    .restart local v1    # "providerUri":Landroid/net/Uri;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-nez v6, :cond_2

    .line 1434
    :goto_2
    return-object v8

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1429
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get most recent im-message could not be retrieved from eventlog for imConversation \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\'!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 1433
    if-nez v6, :cond_4

    .line 1434
    :goto_3
    throw v0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public getNumberOfUnreadImUserMessages(Lcom/sonymobile/jms/conversation/ImConversationId;)I
    .locals 8
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 2036
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 2037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_INCOMING_UNREAD_ONE2ONE_MESSAGES:Ljava/lang/String;

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " AND "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImConversationSelection(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2042
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2045
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2047
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 2048
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "count"

    .line 2049
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2056
    if-nez v6, :cond_1

    .line 2057
    :goto_1
    return v0

    .line 2037
    .end local v1    # "providerUri":Landroid/net/Uri;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    sget-object v0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_INCOMING_UNREAD_GROUP_MESSAGES:Ljava/lang/String;

    goto :goto_0

    .line 2057
    .restart local v1    # "providerUri":Landroid/net/Uri;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2052
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get the number of unread im-messages in eventlog for ImConversation \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\'!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 2056
    if-nez v6, :cond_2

    .line 2057
    :goto_2
    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public getOngoingFileTransferSize(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mOngoingFileTransferProgress:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getUnprocessedUndeliveredImUserMessagesAndMarkThemAsProcessed(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Ljava/util/List;
    .locals 12
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/message/ImUserMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 1743
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1744
    invoke-static {p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getUnprocessedUndeliveredImUserMessagesSelection(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Ljava/lang/String;

    move-result-object v3

    .line 1745
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1748
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImMessageQueueLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1749
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1751
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1752
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1753
    .local v10, "undeliveredImUserMessages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1758
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1761
    monitor-exit v11

    .line 1768
    if-nez v6, :cond_2

    .line 1769
    :goto_2
    return-object v10

    .line 1754
    .end local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImUserMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v9

    .line 1755
    .local v9, "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    invoke-interface {v9}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->ensureThatNoTimeoutTaskIsScheduled(Ljava/lang/String;)V

    .line 1756
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1769
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "msg":Lcom/sonymobile/jms/message/ImUserMessage;
    .end local v10    # "undeliveredImUserMessages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :catchall_0
    move-exception v0

    .line 1762
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v7

    .line 1764
    .local v7, "e":Landroid/database/SQLException;
    :try_start_3
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unprocessed undelivered messages could not be retrieved from eventlog for ImConversation \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\'!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_1
    move-exception v0

    .line 1768
    if-nez v6, :cond_3

    .line 1769
    :goto_3
    throw v0

    .line 1759
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    .restart local v10    # "undeliveredImUserMessages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :cond_1
    :try_start_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/message/ImUserMessage;

    invoke-interface {v0}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->markImUserMessageAsDeliveryStatusProcessed(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1769
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    .end local v10    # "undeliveredImUserMessages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public hasUnprocessedUndeliveredImUserMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Z
    .locals 9
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string/jumbo v0, "ImConversation \'"

    .line 1673
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1674
    invoke-static {p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getUnprocessedUndeliveredImUserMessagesSelection(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Ljava/lang/String;

    move-result-object v3

    .line 1675
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1678
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1680
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1681
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "count"

    .line 1682
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    move v0, v8

    .line 1689
    :goto_0
    if-nez v6, :cond_1

    .line 1690
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 1682
    goto :goto_0

    .line 1690
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1685
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to detemine the existence of unprocessed undelivered messages in eventlog for ImConversation \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\'!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 1689
    if-nez v6, :cond_2

    .line 1690
    :goto_2
    throw v0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public isFileMessageRead(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "jmsCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 2098
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->isMessageRead(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public isGroupMessage(Landroid/database/Cursor;)Z
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-string/jumbo v1, "type"

    .line 1014
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1015
    .local v0, "rcsMessageType":I
    invoke-direct {p0, v0}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->isGroupMessage(I)Z

    move-result v1

    return v1
.end method

.method public isTextMessageRead(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "jmsCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 2093
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->isMessageRead(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method public markImUserMessageAsCanceled(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImUserMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-interface {p2}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v1

    .local v1, "msgId":Ljava/lang/String;
    const-string/jumbo v2, "ImConversationId \'"

    .line 409
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' msg \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 412
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->markMessageAsCanceled(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v3, Lcom/sonymobile/jms/message/ImUserMessage$Status;->CANCELED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v2, p1, p2, v3}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 419
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/database/SQLException;
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' could not be marked as canceled in eventlog!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public markImUserMessageAsFailed(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;)V
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImUserMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-interface {p2}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v1

    .local v1, "msgId":Ljava/lang/String;
    const-string/jumbo v2, "ImConversationId \'"

    .line 394
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\' msg \'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {v2, v1}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->markMessageAsFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v3, Lcom/sonymobile/jms/message/ImUserMessage$Status;->FAILED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v2, p1, p2, v3}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 404
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/database/SQLException;
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' could not be marked as failed in eventlog!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public markImUserMessageAsQueued(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "msg \'"

    .line 525
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->markMessageAsQueued(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' could not be marked as queued in eventlog!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public markImUserMessageAsQueuedAndUndelivered(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "msg \'"

    .line 444
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->markMessageQueuedAndUndelivered(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' could not be marked as undelivered queued messages in eventlog!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public markImUserMessageAsRead(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 4
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "msg \'"

    .line 455
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->markMessageAsRead(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' could not be marked as read!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public markImUserMessageAsUndelivered(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "msg \'"

    .line 433
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 435
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {v1, p1}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->markMessageAsUndelivered(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/database/SQLException;
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' could not be marked as undelivered in eventlog!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public markUnprocessedUndeliveredImUserMessagesAsProcessed(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 11
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 1698
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1699
    invoke-static {p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getUnprocessedUndeliveredImUserMessagesSelection(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Ljava/lang/String;

    move-result-object v3

    .line 1700
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1703
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1705
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1706
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1707
    .local v10, "undeliveredMessageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1713
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1722
    if-nez v6, :cond_2

    .line 1726
    :goto_2
    return-void

    .end local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v0, "message_id"

    .line 1708
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1710
    .local v9, "msgId":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImUndeliveredMessageManager:Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;

    invoke-virtual {v0, v9}, Lcom/sonymobile/jms/message/ImUndeliveredMessageManager;->ensureThatNoTimeoutTaskIsScheduled(Ljava/lang/String;)V

    .line 1711
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1723
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "msgId":Ljava/lang/String;
    .end local v10    # "undeliveredMessageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 1718
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unprocessed undelivered messages could not be retrieved from eventlog for ImConversation \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\'!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 1722
    if-nez v6, :cond_3

    .line 1723
    :goto_3
    throw v0

    .line 1714
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10    # "undeliveredMessageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->markImUserMessageAsDeliveryStatusProcessed(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1723
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "undeliveredMessageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public onImFileMessageInvitationReceived(Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;)V
    .locals 1
    .param p1, "invitation"    # Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/message/ImFileIconManager;->onImFileMessageInvitationReceived(Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;)V

    .line 1622
    return-void
.end method

.method public queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)Ljava/lang/String;
    .locals 6
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v3, "ImConversation \'"

    .line 1484
    invoke-static {v3}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1487
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1491
    iget-object v3, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->addQueuedFileTransfer(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1494
    .local v2, "msgId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p2, v2}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1495
    iget-object v3, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v4, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v3, p1, p2, v4}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 1497
    return-object v2

    .line 1488
    .end local v2    # "msgId":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->addQueuedGroupFileTransfer(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/rcs/service/api/client/ClientApiException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .restart local v2    # "msgId":Ljava/lang/String;
    goto :goto_0

    .line 1497
    .end local v2    # "msgId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1500
    .local v0, "e":Landroid/database/SQLException;
    new-instance v3, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to queue file message on imConversation \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .end local v0    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 1503
    .local v1, "e":Lcom/sonymobile/rcs/service/api/client/ClientApiException;
    new-instance v3, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to queue file message on imConversation \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public queueMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)Ljava/lang/String;
    .locals 5
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;,
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    const-string/jumbo v2, "ImConversation \'"

    .line 1450
    invoke-static {v2}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1453
    :try_start_0
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1457
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->addQueuedOne2OneChatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1460
    .local v1, "msgId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V

    .line 1461
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsMessageEventHandler:Lcom/sonymobile/jms/message/RcsMessageEventHandler;

    sget-object v3, Lcom/sonymobile/jms/message/ImUserMessage$Status;->QUEUED:Lcom/sonymobile/jms/message/ImUserMessage$Status;

    invoke-virtual {v2, p1, p2, v3}, Lcom/sonymobile/jms/message/RcsMessageEventHandler;->onImUserMessageStatusUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonymobile/jms/message/ImUserMessage$Status;)V

    .line 1463
    return-object v1

    .line 1454
    .end local v1    # "msgId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mRcsEventsLogApi:Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/rcs/service/api/client/eventslog/EventsLogApi;->addQueuedGroupChatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "msgId":Ljava/lang/String;
    goto :goto_0

    .line 1463
    .end local v1    # "msgId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1466
    .local v0, "e":Landroid/database/SQLException;
    new-instance v2, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to queue text message on imConversation \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public registerFileIconListener(Lcom/sonymobile/jms/message/ImFileIconListener;)V
    .locals 1
    .param p1, "imFileIconListener"    # Lcom/sonymobile/jms/message/ImFileIconListener;

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/message/ImFileIconManager;->registerFileIconListener(Lcom/sonymobile/jms/message/ImFileIconListener;)V

    .line 1999
    return-void
.end method

.method public registerMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/jms/message/ImUserMessageEventListener;

    .prologue
    const-string/jumbo v0, "("

    .line 356
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mMessageEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, ") \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 358
    if-eqz p1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mMessageEventListeners:Ljava/util/Set;

    monitor-enter v1

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mMessageEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    return-void

    :cond_0
    const-string/jumbo v0, "Listener is not allowed to be null!"

    .line 359
    invoke-static {v0}, Lcom/sonymobile/jms/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 360
    return-void

    .line 364
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public retrieveFileMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImFileMessage;
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "msgId \'"

    .line 865
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 866
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveImUserMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v0

    .line 867
    .local v0, "message":Lcom/sonymobile/jms/message/ImUserMessage;
    instance-of v1, v0, Lcom/sonymobile/jms/message/ImFileMessage;

    if-eqz v1, :cond_0

    .line 871
    check-cast v0, Lcom/sonymobile/jms/message/ImFileMessage;

    .end local v0    # "message":Lcom/sonymobile/jms/message/ImUserMessage;
    return-object v0

    .line 868
    .restart local v0    # "message":Lcom/sonymobile/jms/message/ImUserMessage;
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a file message!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public retrieveImMessage(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asType(Landroid/net/Uri;)Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    .line 636
    .local v0, "messageType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager$1;->$SwitchMap$com$sonymobile$jms$message$ImMessageStorageApi$ImMessageType:[I

    invoke-virtual {v0}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 644
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Failed to retrieve message cursor from uri \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' message type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 639
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImUserMessageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveImUserMessageCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 642
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asRowId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveImSystemMessageCursor(J)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public retrieveImUserMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage;
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 841
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveImUserMessageCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 842
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImUserMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 844
    if-nez v0, :cond_0

    .line 845
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    .line 844
    if-nez v0, :cond_1

    .line 845
    :goto_1
    throw v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public retrieveIncomingReadMessagesWithReportRequested()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            "Lcom/sonymobile/jms/message/ImUserMessage;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "enter"

    .line 1643
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1644
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1647
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_INCOMING_READ_MESSAGES_WITH_UNSENT_READ_REPORT:Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1650
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1651
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1652
    .local v10, "msgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1664
    if-nez v6, :cond_1

    .line 1665
    :goto_1
    return-object v10

    .line 1653
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImConversationId(Landroid/database/Cursor;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v8

    .line 1654
    .local v8, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImUserMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v9

    .line 1655
    .local v9, "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1665
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v9    # "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    .end local v10    # "msgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :catch_0
    move-exception v7

    .line 1660
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    const-string/jumbo v2, "Incoming read one2one messages with unsent read report could not be retrieved from eventlog!"

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 1664
    if-nez v6, :cond_2

    .line 1665
    :goto_2
    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "msgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "msgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public retrieveIncomingUnreadMessages()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            "Lcom/sonymobile/jms/message/ImUserMessage;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "enter"

    .line 1777
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1778
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1781
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_INCOMING_UNREAD_MESSAGES:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1783
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1784
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1785
    .local v10, "unreadMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    if-nez v6, :cond_1

    .line 1798
    :goto_1
    return-object v10

    .line 1786
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImConversationId(Landroid/database/Cursor;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v8

    .line 1787
    .local v8, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImUserMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v9

    .line 1788
    .local v9, "imUserMsg":Lcom/sonymobile/jms/message/ImUserMessage;
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1798
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v9    # "imUserMsg":Lcom/sonymobile/jms/message/ImUserMessage;
    .end local v10    # "unreadMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :catch_0
    move-exception v7

    .line 1794
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    const-string/jumbo v2, "Incoming unread messages could not be retrieved from eventlog!"

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 1797
    if-nez v6, :cond_2

    .line 1798
    :goto_2
    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "unreadMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "unreadMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public retrieveMessages(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)Landroid/database/Cursor;
    .locals 8
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "Retrieve im-messages in group imConversation \'"

    .line 616
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_GROUP_MESSAGES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_GROUP_SYSTEM_MESSAGES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImConversationSelection(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 624
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v0, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    return-object v6

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 628
    .local v7, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to retrieve messages for group sesion \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public retrieveMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Landroid/database/Cursor;
    .locals 8
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "Retrieve im-messages in one2one imConversation \'"

    .line 548
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_ONE2ONE_MESSAGES:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImConversationSelection(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 555
    .local v6, "cursor":Landroid/database/Cursor;
    sget-object v0, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    return-object v6

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 559
    .local v7, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to retrieve messages for imConversation \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public retrieveMessagesContaining(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "searchString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "\'"

    const-string/jumbo v1, "\'\'"

    .line 600
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "%"

    const-string/jumbo v1, "%%"

    .line 601
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_TEXT_MESSAGES:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_DESC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v6

    .line 609
    .local v6, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    const-string/jumbo v1, "Failed to search for messages"

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retrieveOutgoingFileUris(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/util/Collection;
    .locals 10
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_OUTGOING_FILE_TRANSFERS:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImConversationSelection(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    .line 952
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v5

    .line 953
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 956
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 958
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 959
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v9, "outgoingFileUris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 971
    if-nez v6, :cond_1

    .line 972
    :goto_1
    return-object v9

    :cond_0
    const-string/jumbo v0, "_data"

    .line 961
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 963
    .local v8, "fileUriString":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 972
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "fileUriString":Ljava/lang/String;
    .end local v9    # "outgoingFileUris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    :catch_0
    move-exception v7

    .line 968
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    const-string/jumbo v4, "Outgoing file messages could not be retrieved from eventlog!"

    invoke-direct {v0, v4, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 971
    if-nez v6, :cond_2

    .line 972
    :goto_2
    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "outgoingFileUris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "outgoingFileUris":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public retrieveQueuedFileMessages()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            "Lcom/sonymobile/jms/message/ImUserMessage;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "enter"

    .line 1566
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1567
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1570
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_QUEUED_FILE_MESSAGES:Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1572
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1573
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .local v10, "queuedFileMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1586
    if-nez v6, :cond_1

    .line 1587
    :goto_1
    return-object v10

    .line 1575
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImConversationId(Landroid/database/Cursor;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v8

    .line 1576
    .local v8, "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImUserMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v9

    .line 1577
    .local v9, "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1587
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "imConversationId":Lcom/sonymobile/jms/conversation/ImConversationId;
    .end local v9    # "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    .end local v10    # "queuedFileMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :catch_0
    move-exception v7

    .line 1583
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    const-string/jumbo v2, "Queued file messages could not be retrieved from eventlog!"

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 1586
    if-nez v6, :cond_2

    .line 1587
    :goto_2
    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "queuedFileMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "queuedFileMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public retrieveQueuedMessages(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/util/List;
    .locals 9
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/message/ImUserMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 1510
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_QUEUED_MESSAGES:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImConversationSelection(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1513
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1516
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1518
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1519
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    .local v8, "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1530
    if-nez v6, :cond_1

    .line 1531
    :goto_1
    return-object v8

    .line 1521
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImUserMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1531
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :catch_0
    move-exception v7

    .line 1526
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Queued messages could not be retrieved from eventlog for imConversation \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\'!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 1530
    if-nez v6, :cond_2

    .line 1531
    :goto_2
    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "queuedMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public retrieveQueuedOne2OneMessages()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;",
            "Lcom/sonymobile/jms/message/ImUserMessage;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "enter"

    .line 1594
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1595
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1598
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_QUEUED_ONE2ONE_MESSAGES:Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1600
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1601
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1602
    .local v10, "queuedFileMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1614
    if-nez v6, :cond_1

    .line 1615
    :goto_1
    return-object v10

    .line 1603
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImConversationId(Landroid/database/Cursor;)Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v8

    .line 1604
    .local v8, "imConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImUserMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v9

    .line 1605
    .local v9, "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1615
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "imConversationId":Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .end local v9    # "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    .end local v10    # "queuedFileMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :catch_0
    move-exception v7

    .line 1611
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    const-string/jumbo v2, "Queued one2one messages could not be retrieved from eventlog!"

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 1614
    if-nez v6, :cond_2

    .line 1615
    :goto_2
    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "queuedFileMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v10    # "queuedFileMsgs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Lcom/sonymobile/jms/message/ImUserMessage;>;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public retrieveQueuedTextMessages(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/util/List;
    .locals 9
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/jms/message/ImTextMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "ImConversation \'"

    .line 1538
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->SELECTION_QUEUED_TEXT_MESSAGES:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->getImConversationSelection(Lcom/sonymobile/jms/conversation/ImConversationId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1541
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    .local v1, "providerUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1544
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1546
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    .line 1547
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    .local v8, "queuedTextMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImTextMessage;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1558
    if-nez v6, :cond_1

    .line 1559
    :goto_1
    return-object v8

    .line 1549
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->asImUserMessage(Landroid/database/Cursor;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/message/ImTextMessage;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1559
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "queuedTextMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImTextMessage;>;"
    :catch_0
    move-exception v7

    .line 1554
    .local v7, "e":Landroid/database/SQLException;
    :try_start_1
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Queued text messages could not be retrieved from eventlog for imConversation \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\'!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 1558
    if-nez v6, :cond_2

    .line 1559
    :goto_2
    throw v0

    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "queuedTextMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImTextMessage;>;"
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "queuedTextMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImTextMessage;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public retrieveTextMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImTextMessage;
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    const-string/jumbo v1, "msgId \'"

    .line 853
    invoke-static {v1}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 854
    invoke-virtual {p0, p1}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->retrieveImUserMessage(Ljava/lang/String;)Lcom/sonymobile/jms/message/ImUserMessage;

    move-result-object v0

    .line 855
    .local v0, "message":Lcom/sonymobile/jms/message/ImUserMessage;
    instance-of v1, v0, Lcom/sonymobile/jms/message/ImTextMessage;

    if-eqz v1, :cond_0

    .line 859
    check-cast v0, Lcom/sonymobile/jms/message/ImTextMessage;

    .end local v0    # "message":Lcom/sonymobile/jms/message/ImUserMessage;
    return-object v0

    .line 856
    .restart local v0    # "message":Lcom/sonymobile/jms/message/ImUserMessage;
    :cond_0
    new-instance v1, Lcom/sonymobile/jms/message/ImMessageStorageException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Message with message id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a text message!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public searchMessages(Ljava/util/Collection;)Landroid/database/Cursor;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .local p1, "msgIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v0, "Enter"

    .line 566
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->d(Ljava/lang/String;)V

    .line 567
    const/4 v6, 0x0

    .line 568
    .local v6, "addSeparator":Z
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "message_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 570
    .local v12, "selectionBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ")"

    .line 577
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mAppCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sonymobile/jms/message/ImMessageStorageManager;->IM_MESSAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/sonymobile/jms/message/ImMessageStorageManager;->ORDER_BY_TIMESTAMP_ASC:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 583
    .local v7, "cursor":Landroid/database/Cursor;
    sget-object v0, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v7}, Lcom/sonymobile/jms/message/ImMessageStorageManager;->assertCursorFromProviderExists(Landroid/net/Uri;Landroid/database/Cursor;)V

    const-string/jumbo v0, "Found "

    .line 584
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, " messages based message ids"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    return-object v7

    .line 570
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 571
    .local v10, "msgId":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 574
    :goto_1
    const/4 v6, 0x1

    const-string/jumbo v0, "\'"

    .line 575
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ","

    .line 572
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 586
    .end local v10    # "msgId":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 588
    .local v8, "e":Landroid/database/SQLException;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Failed to retrieve messages based on message ids! ["

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    .local v11, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "]"

    .line 593
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    new-instance v0, Lcom/sonymobile/jms/message/ImMessageStorageException;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/sonymobile/jms/message/ImMessageStorageException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 590
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 591
    .restart local v10    # "msgId":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public setAuthorAndRecipient(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/AbstractImUserMessage;)V
    .locals 1
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p2, "msg"    # Lcom/sonymobile/jms/message/AbstractImUserMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
        }
    .end annotation

    .prologue
    .line 1286
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->isGroupId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonymobile/jms/message/AbstractImUserMessage;->setAuthor(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    .line 1293
    invoke-interface {p1}, Lcom/sonymobile/jms/conversation/ImConversationId;->asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonymobile/jms/message/AbstractImUserMessage;->setRecipient(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    .line 1295
    :goto_0
    return-void

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImContactManager:Lcom/sonymobile/jms/contact/ImContactManager;

    invoke-virtual {v0}, Lcom/sonymobile/jms/contact/ImContactManager;->getMyImContactNumber()Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonymobile/jms/message/AbstractImUserMessage;->setAuthor(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    const/4 v0, 0x0

    .line 1290
    invoke-virtual {p2, v0}, Lcom/sonymobile/jms/message/AbstractImUserMessage;->setRecipient(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    goto :goto_0
.end method

.method public setMessageId(Lcom/sonymobile/jms/message/AbstractImUserMessage;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Lcom/sonymobile/jms/message/AbstractImUserMessage;
    .param p2, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/conversation/RcsSessionException;
        }
    .end annotation

    .prologue
    .line 1280
    invoke-static {p2}, Lcom/sonymobile/jms/util/RcsStackBugUtil;->assertMsgIdNotNull(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p1, p2}, Lcom/sonymobile/jms/message/AbstractImUserMessage;->setId(Ljava/lang/String;)V

    .line 1282
    return-void
.end method

.method setOngoingFileTransferSize(Ljava/lang/String;J)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "currentSize"    # J

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mOngoingFileTransferProgress:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    return-void
.end method

.method public unregisterFileIconListener(Lcom/sonymobile/jms/message/ImFileIconListener;)V
    .locals 1
    .param p1, "imFileIconListener"    # Lcom/sonymobile/jms/message/ImFileIconListener;

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mImFileIconManager:Lcom/sonymobile/jms/message/ImFileIconManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/message/ImFileIconManager;->unregisterFileIconListener(Lcom/sonymobile/jms/message/ImFileIconListener;)V

    .line 2004
    return-void
.end method

.method public unregisterMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonymobile/jms/message/ImUserMessageEventListener;

    .prologue
    .line 369
    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mMessageEventListeners:Ljava/util/Set;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mMessageEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 371
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "("

    .line 372
    invoke-static {v0}, Lcom/sonymobile/jms/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/jms/message/ImMessageStorageManager;->mMessageEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(I)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, ") \'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Lcom/sonymobile/jms/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/jms/util/LogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/jms/util/LogUtil;->flushAsDebug()V

    .line 374
    return-void

    .line 371
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateImUserMessageTimestamp(Lcom/sonymobile/jms/message/AbstractImUserMessage;)V
    .locals 2
    .param p1, "msg"    # Lcom/sonymobile/jms/message/AbstractImUserMessage;

    .prologue
    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/jms/message/AbstractImUserMessage;->updateTimestamp(J)V

    .line 315
    return-void
.end method
