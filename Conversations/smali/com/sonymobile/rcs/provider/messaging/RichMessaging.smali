.class public Lcom/sonymobile/rcs/provider/messaging/RichMessaging;
.super Ljava/lang/Object;
.source "RichMessaging.java"


# static fields
.field private static instance:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;


# instance fields
.field private final INITIAL_DOWNLOAD_SIZE:I

.field private final TRANSFER_PROGRESS_UPDATE_FREQUENCY:I

.field private cr:Landroid/content/ContentResolver;

.field private databaseUri:Landroid/net/Uri;

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private maxLogEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    sput-object v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->instance:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->INITIAL_DOWNLOAD_SIZE:I

    const/16 v0, 0xa

    .line 87
    iput v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->TRANSFER_PROGRESS_UPDATE_FREQUENCY:I

    .line 97
    sget-object v0, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    .line 139
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getMaxChatLogEntriesPerContact()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->maxLogEntries:I

    .line 140
    return-void
.end method

.method private addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;
    .locals 18
    .param p1, "type"    # I
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "chatId"    # Ljava/lang/String;
    .param p4, "messageId"    # Ljava/lang/String;
    .param p5, "contact"    # Ljava/lang/String;
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "mimeType"    # Ljava/lang/String;
    .param p9, "name"    # Ljava/lang/String;
    .param p10, "size"    # J
    .param p12, "date"    # Ljava/util/Date;
    .param p13, "status"    # I
    .param p14, "sentDate"    # Ljava/util/Date;
    .param p15, "deliveryStatus"    # I

    .prologue
    .line 1070
    invoke-static/range {p5 .. p5}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const/4 v7, 0x0

    .line 1072
    .local v7, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p5, :cond_0

    .end local v7    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    .line 1076
    invoke-direct/range {v2 .. v17}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 1073
    .restart local v7    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    .local v7, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p5

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;II)Landroid/net/Uri;
    .locals 8
    .param p1, "type"    # I
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "chatId"    # Ljava/lang/String;
    .param p4, "messageId"    # Ljava/lang/String;
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "mimeType"    # Ljava/lang/String;
    .param p9, "name"    # Ljava/lang/String;
    .param p10, "size"    # J
    .param p12, "date"    # Ljava/util/Date;
    .param p13, "status"    # I
    .param p14, "deliveryStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Date;",
            "II)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 1100
    .local p5, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1101
    .local v2, "participants":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1106
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "type"

    .line 1107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "session_id"

    .line 1108
    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "chat_id"

    .line 1109
    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "message_id"

    .line 1110
    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "contact"

    .line 1111
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "display_name"

    .line 1112
    invoke-virtual {v4, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "mime_type"

    .line 1113
    move-object/from16 v0, p8

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "total_size"

    .line 1114
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "name"

    .line 1115
    move-object/from16 v0, p9

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "_data"

    .line 1116
    invoke-virtual {v4, v5, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "status"

    .line 1117
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "number_of_messages"

    .line 1118
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->recycler(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "is_spam"

    const/4 v6, 0x0

    .line 1119
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "delivery_status"

    .line 1120
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "read_status"

    const/4 v6, 0x0

    .line 1121
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "_date"

    .line 1122
    invoke-virtual/range {p12 .. p12}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "timestamp_sent"

    const/4 v6, 0x0

    .line 1123
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "timestamp_delivered"

    const/4 v6, 0x0

    .line 1124
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "timestamp_displayed"

    const/4 v6, 0x0

    .line 1125
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1126
    iget-object v5, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1127
    .local v3, "uri":Landroid/net/Uri;
    return-object v3

    .line 1102
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Add new entry: type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", sessionID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", chatID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", messageID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", contact="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", display="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", MIME="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p13

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;
    .locals 8
    .param p1, "type"    # I
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "chatId"    # Ljava/lang/String;
    .param p4, "messageId"    # Ljava/lang/String;
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "mimeType"    # Ljava/lang/String;
    .param p9, "name"    # Ljava/lang/String;
    .param p10, "size"    # J
    .param p12, "date"    # Ljava/util/Date;
    .param p13, "status"    # I
    .param p14, "sentDate"    # Ljava/util/Date;
    .param p15, "deliveryStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Date;",
            "I)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 1151
    .local p5, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p5}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 1152
    .local v2, "participants":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1157
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "type"

    .line 1158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "session_id"

    .line 1159
    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "chat_id"

    .line 1160
    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "message_id"

    .line 1161
    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "contact"

    .line 1162
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "display_name"

    .line 1163
    invoke-virtual {v4, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "mime_type"

    .line 1164
    move-object/from16 v0, p8

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "total_size"

    .line 1165
    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "name"

    .line 1166
    move-object/from16 v0, p9

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "_data"

    .line 1167
    invoke-virtual {v4, v5, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "status"

    .line 1168
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "number_of_messages"

    .line 1169
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->recycler(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "is_spam"

    const/4 v6, 0x0

    .line 1170
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "delivery_status"

    .line 1171
    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "read_status"

    const/4 v6, 0x0

    .line 1172
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "_date"

    .line 1173
    invoke-virtual/range {p12 .. p12}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "timestamp_sent"

    .line 1174
    invoke-virtual/range {p14 .. p14}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "timestamp_delivered"

    const/4 v6, 0x0

    .line 1175
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "timestamp_displayed"

    const/4 v6, 0x0

    .line 1176
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1177
    iget-object v5, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1178
    .local v3, "uri":Landroid/net/Uri;
    return-object v3

    .line 1153
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v5, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Add new entry: type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", sessionID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", chatID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", messageID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", contact="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", display="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", MIME="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p13

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    monitor-enter v1

    .line 115
    :try_start_0
    sget-object v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->instance:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    .line 118
    return-void

    .line 116
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    invoke-direct {v0, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->instance:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I
    .locals 1
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 223
    return v0

    :cond_0
    const/4 v0, 0x5

    .line 221
    return v0
.end method

.method private getEventLogValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .local v0, "event":I
    const-string/jumbo v1, "booted"

    .line 2918
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "departed"

    .line 2921
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "disconnected"

    .line 2924
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "connected"

    .line 2927
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "busy"

    .line 2930
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "pending"

    .line 2933
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "declined"

    .line 2936
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "failed"

    .line 2939
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2944
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1a

    .line 2920
    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    .line 2923
    goto :goto_0

    :cond_2
    const/16 v0, 0x17

    .line 2926
    goto :goto_0

    :cond_3
    const/16 v0, 0x16

    .line 2929
    goto :goto_0

    :cond_4
    const/16 v0, 0x1c

    .line 2932
    goto :goto_0

    :cond_5
    const/16 v0, 0x1e

    .line 2935
    goto :goto_0

    :cond_6
    const/16 v0, 0x1d

    .line 2938
    goto :goto_0

    :cond_7
    const/16 v0, 0x1b

    .line 2941
    goto :goto_0
.end method

.method private getFileDescription(Landroid/net/Uri;)Lcom/sonymobile/rcs/platform/file/FileDescription;
    .locals 4
    .param p1, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 2748
    new-instance v0, Lcom/sonymobile/rcs/platform/file/FileDescription;

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {v0, p1, v2, v3}, Lcom/sonymobile/rcs/platform/file/FileDescription;-><init>(Landroid/net/Uri;J)V

    return-object v0
.end method

.method public static getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->instance:Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    return-object v0
.end method

.method private static getListParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/util/List;
    .locals 2
    .param p0, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-object v0

    .line 189
    .end local v0    # "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/lang/String;
    .locals 2
    .param p0, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 173
    .local v0, "participants":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteContact()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getParticipants(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 149
    if-eqz p0, :cond_0

    .line 151
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .local v3, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 153
    .local v1, "firstiteration":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 150
    .end local v1    # "firstiteration":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "result":Ljava/lang/StringBuffer;
    :cond_0
    return-object v5

    .line 153
    .restart local v1    # "firstiteration":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "result":Ljava/lang/StringBuffer;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "contact":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 157
    :goto_1
    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v4, ";"

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 161
    .end local v0    # "contact":Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method private static getParticipants(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "participants"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 204
    new-array v0, v2, [Ljava/lang/String;

    .line 205
    .local v0, "res":[Ljava/lang/String;
    if-nez p0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, ";"

    .line 208
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private recycler(Ljava/lang/String;)I
    .locals 23
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "min(_date)"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "max(_date)"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "contact = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "extrem":Landroid/database/Cursor;
    const-wide/16 v16, -0x1

    .local v16, "minDate":J
    const-wide/16 v14, -0x1

    .line 1195
    .local v14, "maxDate":J
    if-nez v9, :cond_0

    .line 1202
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    const-wide/16 v2, -0x1

    .line 1207
    cmp-long v2, v16, v2

    if-nez v2, :cond_3

    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 1208
    return v2

    .line 1196
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1200
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1197
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v2, 0x1

    .line 1198
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    goto :goto_2

    .line 1203
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler : minDate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " maxDate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1211
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "number_of_messages"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "session_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "_date"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "contact = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " OR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_date"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "_date ASC"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "c":Landroid/database/Cursor;
    const/16 v18, 0x0

    .local v18, "numberOfMessagesForContact":I
    const-wide/16 v10, 0x0

    .line 1220
    .local v10, "dateForLastMessage":J
    if-nez v8, :cond_4

    .line 1288
    :goto_3
    return v18

    .line 1221
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    :goto_4
    const/16 v19, 0x0

    .line 1249
    .local v19, "removedMessages":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1286
    :cond_6
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v19    # "removedMessages":I
    :cond_7
    const/4 v2, 0x0

    .line 1222
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1227
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->maxLogEntries:I

    move/from16 v0, v18

    if-lt v0, v2, :cond_9

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_b

    :goto_7
    const/4 v2, 0x2

    .line 1241
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler : dateForLastMessage ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 1224
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler : number of messages for this contact = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 1229
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1232
    :goto_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1233
    return v18

    .line 1230
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Recycler : Enough place for another message, do nothing return"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_8

    .line 1236
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Recycler : Not enough place for another message, we will have to remove something"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_7

    .restart local v19    # "removedMessages":I
    :cond_c
    const/4 v2, 0x1

    .line 1253
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .local v20, "sessionId":Ljava/lang/String;
    const/4 v2, 0x2

    .line 1254
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1255
    .local v12, "firstDate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1260
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "session_id = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1268
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1271
    :goto_b
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1272
    .local v22, "values":Landroid/content/ContentValues;
    sub-int v18, v18, v19

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_10

    :goto_c
    const-string/jumbo v2, "number_of_messages"

    .line 1277
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contact = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    .line 1281
    .local v21, "updatedRows":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler : updated rows for the contact (must be 1) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1256
    .end local v21    # "updatedRows":I
    .end local v22    # "values":Landroid/content/ContentValues;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler : deleting entries for (the first) sessionID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for the date : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1263
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler : messages removed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1269
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "Recycler : set the new number of messages after removing..."

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1274
    .restart local v22    # "values":Landroid/content/ContentValues;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Recycler : new number of message after deletion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method private setChatMessageDeliveryStatus(Ljava/lang/String;I)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 674
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    .line 675
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x7

    .line 676
    if-eq p2, v1, :cond_0

    .line 679
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

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

    .line 682
    return-void

    :cond_0
    const-string/jumbo v1, "timestamp_delivered"

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private setChatMessageReadStatus(Ljava/lang/String;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 691
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "read_status"

    .line 692
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "timestamp_displayed"

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 694
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

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

    .line 697
    return-void
.end method

.method private setIMDNRecordRoute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;

    .prologue
    .line 463
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "imdn_record_route"

    .line 464
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 469
    return-void
.end method

.method private setMessageStatusReceived(Ljava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 920
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/4 v2, 0x5

    .line 921
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 922
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 924
    return-void
.end method


# virtual methods
.method public addChatSessionError(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 15
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 780
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .line 781
    .local v2, "sessionId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    .line 782
    .local v3, "chatId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getListParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/util/List;

    move-result-object v5

    .line 783
    .local v5, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I

    move-result v1

    .local v1, "type":I
    const-wide/16 v10, 0x0

    .line 784
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;II)Landroid/net/Uri;

    .line 786
    return-void
.end method

.method public addChatSessionTermination(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 15
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 705
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "sessionId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    .line 707
    .local v3, "chatId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getListParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/util/List;

    move-result-object v5

    .line 708
    .local v5, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I

    move-result v1

    .local v1, "type":I
    const-wide/16 v10, 0x0

    .line 709
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;II)Landroid/net/Uri;

    .line 712
    return-void
.end method

.method public addChatSessionTerminationByRemote(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 15
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 765
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, "sessionId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    .line 767
    .local v3, "chatId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getListParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/util/List;

    move-result-object v5

    .line 768
    .local v5, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I

    move-result v1

    .local v1, "type":I
    const-wide/16 v10, 0x0

    .line 769
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    const/16 v13, 0xd

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;II)Landroid/net/Uri;

    .line 772
    return-void
.end method

.method public addChatSessionTerminationByUser(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 15
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 720
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "sessionId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, "chatId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getListParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/util/List;

    move-result-object v5

    .line 723
    .local v5, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I

    move-result v1

    .local v1, "type":I
    const-wide/16 v10, 0x0

    .line 724
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    const/16 v13, 0xc

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;II)Landroid/net/Uri;

    .line 727
    return-void
.end method

.method public addChatSessionTerminationByUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "participants"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    const-wide/16 v10, 0x0

    .line 754
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    const/16 v13, 0x22

    new-instance v14, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 757
    return-void
.end method

.method public addConferenceEvent(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v4, "connected"

    .line 236
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 v17, -0x1

    .line 243
    .local v17, "event":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getEventLogValue(Ljava/lang/String;)I

    move-result v17

    const/4 v4, -0x1

    .line 244
    move/from16 v0, v17

    if-ne v0, v4, :cond_2

    .line 250
    :goto_0
    return-void

    .line 236
    .end local v17    # "event":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->hasLastKnownStateForParticipantChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 239
    return-void

    .restart local v17    # "event":I
    :cond_2
    const/4 v5, 0x5

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v12, "text/plain"

    const-wide/16 v14, 0x0

    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    new-instance v18, Ljava/util/Date;

    const-wide/16 v8, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    const/16 v19, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v19}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    goto :goto_0
.end method

.method public addGroupChatSessionTerminationByRemote(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 15
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 735
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, "sessionId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    .line 737
    .local v3, "chatId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getListParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/util/List;

    move-result-object v5

    .local v5, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x5

    const-wide/16 v10, 0x0

    .line 739
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    const/16 v13, 0x2b

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;II)Landroid/net/Uri;

    .line 742
    return-void
.end method

.method public addIncomingChatMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 18
    .param p1, "msg"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .param p2, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 435
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v3, 0x0

    .local v3, "type":I
    :goto_0
    const/4 v15, 0x5

    .line 441
    .local v15, "status":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->isImdnDisplayedRequested()Z

    move-result v2

    if-nez v2, :cond_2

    .line 445
    :cond_0
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "text/plain"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v12, v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getServerDate()Ljava/util/Date;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v17}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 451
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getIMDNRecordRoute()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setIMDNRecordRoute(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void

    .end local v3    # "type":I
    .end local v15    # "status":I
    :cond_1
    const/4 v3, 0x3

    .line 436
    .restart local v3    # "type":I
    goto :goto_0

    .line 441
    .restart local v15    # "status":I
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isReadNotification()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v15, 0xa

    .line 443
    goto :goto_1
.end method

.method public addIncomingChatMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Ljava/lang/String;I)V
    .locals 16
    .param p1, "msg"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "status"    # I

    .prologue
    .line 965
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->isImdnDisplayedRequested()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 968
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "text/plain"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getServerDate()Ljava/util/Date;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v13, p3

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 972
    return-void

    .line 965
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isReadNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p3, 0xa

    .line 966
    goto :goto_0
.end method

.method public addIncomingChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 20
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "sessionId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "chatId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getListParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/util/List;

    move-result-object v9

    .line 262
    .local v9, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSubject()Ljava/lang/String;

    move-result-object v11

    .line 263
    .local v11, "subject":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I

    move-result v5

    .local v5, "type":I
    const-string/jumbo v12, "text/plain"

    const-wide/16 v14, 0x0

    .line 264
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    const/16 v17, 0x18

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v18}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;II)Landroid/net/Uri;

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v19

    .line 270
    .local v19, "firstMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    if-nez v19, :cond_0

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addIncomingChatMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    goto :goto_0
.end method

.method public addIncomingChatSessionByFtHttp(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 15
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "sessionId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "chatId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getListParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/util/List;

    move-result-object v5

    .line 285
    .local v5, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I

    move-result v1

    .line 286
    .local v1, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v10, 0x0

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    const/16 v13, 0x18

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;II)Landroid/net/Uri;

    .line 289
    return-void
.end method

.method public addIncomingFileTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ILjava/util/Date;Ljava/util/Date;)V
    .locals 16
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "chatSessionId"    # Ljava/lang/String;
    .param p4, "ftSessionId"    # Ljava/lang/String;
    .param p5, "messageId"    # Ljava/lang/String;
    .param p6, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p7, "status"    # I
    .param p8, "date"    # Ljava/util/Date;
    .param p9, "sentDate"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x6

    .line 307
    invoke-virtual/range {p6 .. p6}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p6 .. p6}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p6 .. p6}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v10

    const/4 v15, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v12, p8

    move/from16 v13, p7

    move-object/from16 v14, p9

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 310
    return-void
.end method

.method public addIncomingGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V
    .locals 16
    .param p1, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    .prologue
    .line 563
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getGeoloc()Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->formatGeolocToStr(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;

    move-result-object v7

    .local v7, "geolocData":Ljava/lang/String;
    const/16 v1, 0xc

    .line 564
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getRemote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "text/geoloc"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getRemote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getDate()Ljava/util/Date;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getServerDate()Ljava/util/Date;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 568
    return-void
.end method

.method public addIncomingGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 16
    .param p1, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    .param p2, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 537
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v1, 0xc

    .local v1, "type":I
    :goto_0
    const/4 v13, 0x5

    .line 543
    .local v13, "status":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->isImdnDisplayedRequested()Z

    move-result v0

    if-nez v0, :cond_2

    .line 547
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getGeoloc()Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->formatGeolocToStr(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;

    move-result-object v7

    .line 548
    .local v7, "geolocData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getRemote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "text/geoloc"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getRemote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getServerDate()Ljava/util/Date;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 552
    return-void

    .end local v1    # "type":I
    .end local v7    # "geolocData":Ljava/lang/String;
    .end local v13    # "status":I
    :cond_1
    const/16 v1, 0xe

    .line 538
    .restart local v1    # "type":I
    goto :goto_0

    .line 543
    .restart local v13    # "status":I
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isReadNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v13, 0xa

    .line 545
    goto :goto_1
.end method

.method public addIncomingGroupFileTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/rcs/core/content/MmContent;ILjava/util/Date;Ljava/util/Date;)V
    .locals 16
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "chatId"    # Ljava/lang/String;
    .param p5, "messageId"    # Ljava/lang/String;
    .param p6, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p7, "status"    # I
    .param p8, "date"    # Ljava/util/Date;
    .param p9, "sentDate"    # Ljava/util/Date;

    .prologue
    const/16 v1, 0x12

    .line 328
    invoke-virtual/range {p6 .. p6}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p6 .. p6}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p6 .. p6}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v10

    const/4 v15, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v12, p8

    move/from16 v13, p7

    move-object/from16 v14, p9

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 331
    return-void
.end method

.method public addOrUpdateGroupChatStatusForNotify(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .param p2, "contact"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;

    .prologue
    .line 2871
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v8

    .local v8, "sessionId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2874
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "contact"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(contact = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "session_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2881
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2885
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2888
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .local v9, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "status"

    const/16 v1, 0x16

    .line 2889
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2890
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(session_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\') AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "contact"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\') AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2903
    .end local v9    # "values":Landroid/content/ContentValues;
    :goto_0
    if-nez v6, :cond_4

    .line 2907
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_1
    return-void

    .line 2903
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-nez v6, :cond_2

    .line 2904
    :goto_2
    return-void

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2886
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addConferenceEvent(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2904
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2898
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 2903
    :goto_3
    if-eqz v6, :cond_0

    .line 2904
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2899
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to update GroupChat status for the contact "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2904
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 2903
    if-nez v6, :cond_6

    .line 2904
    :goto_4
    throw v0

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method public addOutgoingChatMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 16
    .param p1, "msg"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .param p2, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 506
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isImAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v15, 0x0

    .local v15, "deliveryStatus":I
    :goto_0
    const/4 v1, 0x1

    .line 520
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "text/plain"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDate()Ljava/util/Date;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getServerDate()Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 526
    .end local v15    # "deliveryStatus":I
    :goto_1
    return-void

    .line 508
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->getInstance()Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->addGroupChatStatusEntry(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 510
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "text/plain"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDate()Ljava/util/Date;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getServerDate()Ljava/util/Date;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    goto :goto_1

    :cond_1
    const/4 v15, 0x1

    .line 518
    goto/16 :goto_0
.end method

.method public addOutgoingChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 21
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 340
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, "sessionId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, "chatId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getListParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/util/List;

    move-result-object v9

    .line 343
    .local v9, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSubject()Ljava/lang/String;

    move-result-object v11

    .line 344
    .local v11, "subject":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I

    move-result v5

    .local v5, "type":I
    const-string/jumbo v12, "text/plain"

    const-wide/16 v14, 0x0

    .line 345
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    const/16 v17, 0x19

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v18}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;II)Landroid/net/Uri;

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v19

    .line 351
    .local v19, "firstMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    if-nez v19, :cond_0

    .line 357
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v4

    if-nez v4, :cond_1

    .line 364
    :goto_1
    return-void

    .line 353
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingChatMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    goto :goto_0

    .line 358
    :cond_1
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .local v20, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "chat_rejoin_id"

    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImSessionIdentity()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "(session_id = \""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "\") AND ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "type"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " ="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v8, v0, v10, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addOutgoingChatSessionByFtHttp(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 15
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, "sessionId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "chatId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getListParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/util/List;

    move-result-object v5

    .line 376
    .local v5, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I

    move-result v1

    .local v1, "type":I
    const-wide/16 v10, 0x0

    .line 377
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    const/16 v13, 0x19

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;II)Landroid/net/Uri;

    .line 379
    return-void
.end method

.method public addOutgoingChatSessionForMsgId(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/lang/String;)V
    .locals 24
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    .line 2562
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    .line 2563
    .local v6, "sessionId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v7

    .line 2564
    .local v7, "chatId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/lang/String;

    move-result-object v9

    .line 2565
    .local v9, "participants":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSubject()Ljava/lang/String;

    move-result-object v11

    .line 2566
    .local v11, "subject":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I

    move-result v5

    .line 2568
    .local v5, "type":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getRemoteDisplayName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "text/plain"

    const-wide/16 v14, 0x0

    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    const/16 v17, 0x19

    new-instance v18, Ljava/util/Date;

    const-wide/16 v22, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/16 v19, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v19}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 2572
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v20

    .line 2573
    .local v20, "firstMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    if-nez v20, :cond_0

    .line 2583
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2590
    :goto_1
    return-void

    .line 2574
    :cond_0
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .local v21, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "status"

    const/4 v8, 0x4

    .line 2575
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "session_id"

    .line 2576
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "timestamp_sent"

    .line 2577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2578
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "message_id =\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "\""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v8, v0, v10, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2584
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_1
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .restart local v21    # "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "chat_rejoin_id"

    .line 2585
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImSessionIdentity()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "(session_id = \""

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "\") AND ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "type"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " ="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v8, v0, v10, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public addOutgoingFileTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/util/Date;Z)V
    .locals 16
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "chatSessionId"    # Ljava/lang/String;
    .param p3, "ftSessionId"    # Ljava/lang/String;
    .param p4, "messageId"    # Ljava/lang/String;
    .param p5, "fileUri"    # Landroid/net/Uri;
    .param p6, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p7, "date"    # Ljava/util/Date;
    .param p8, "isFToHTTP"    # Z

    .prologue
    .line 397
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFtHttpCapAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v15, 0x0

    .local v15, "deliveryStatus":I
    :goto_0
    const/4 v1, 0x7

    .line 400
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p6 .. p6}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p6 .. p6}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v10

    const/16 v13, 0x19

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v12, p7

    move-object/from16 v14, p7

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 403
    return-void

    .line 397
    .end local v15    # "deliveryStatus":I
    :cond_1
    if-eqz p8, :cond_0

    const/4 v15, 0x1

    goto :goto_0
.end method

.method public addOutgoingGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;)V
    .locals 16
    .param p1, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;

    .prologue
    .line 600
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getGeoloc()Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->formatGeolocToStr(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;

    move-result-object v7

    .local v7, "geolocData":Ljava/lang/String;
    const/16 v1, 0xd

    .line 601
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getRemote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "text/geoloc"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getRemote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getDate()Ljava/util/Date;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getServerDate()Ljava/util/Date;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 605
    return-void
.end method

.method public addOutgoingGeoloc(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 16
    .param p1, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;
    .param p2, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 579
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v1, 0xd

    .line 584
    .local v1, "type":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getGeoloc()Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->formatGeolocToStr(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;)Ljava/lang/String;

    move-result-object v7

    .line 585
    .local v7, "geolocData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getRemote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "text/geoloc"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getRemote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v10, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getDate()Ljava/util/Date;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocMessage;->getServerDate()Ljava/util/Date;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 590
    return-void

    .end local v1    # "type":I
    .end local v7    # "geolocData":Ljava/lang/String;
    :cond_0
    const/16 v1, 0xf

    .line 580
    .restart local v1    # "type":I
    goto :goto_0
.end method

.method public addOutgoingGroupChatSessionForRowId(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;Ljava/lang/String;)V
    .locals 8
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;
    .param p2, "rowId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2530
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "session_id"

    .line 2531
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "chat_id"

    .line 2532
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "contact"

    .line 2533
    invoke-static {p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "mime_type"

    const-string/jumbo v4, "text/plain"

    .line 2534
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "status"

    const/16 v4, 0x19

    .line 2535
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2536
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id =\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2539
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v1

    .line 2540
    .local v1, "firstMsg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    if-nez v1, :cond_0

    .line 2545
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2552
    :goto_1
    return-void

    .line 2541
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addOutgoingChatMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V

    goto :goto_0

    .line 2546
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "chat_rejoin_id"

    .line 2547
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImSessionIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(session_id = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\") AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method public addOutgoingGroupFileTransfer(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/sonymobile/rcs/core/content/MmContent;Ljava/util/Date;)V
    .locals 20
    .param p2, "chatSessionId"    # Ljava/lang/String;
    .param p3, "ftSessionId"    # Ljava/lang/String;
    .param p4, "messageId"    # Ljava/lang/String;
    .param p5, "chatId"    # Ljava/lang/String;
    .param p6, "fileUri"    # Landroid/net/Uri;
    .param p7, "content"    # Lcom/sonymobile/rcs/core/content/MmContent;
    .param p8, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/sonymobile/rcs/core/content/MmContent;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x13

    .line 418
    invoke-virtual/range {p6 .. p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p7 .. p7}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p7 .. p7}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p7 .. p7}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v14

    const/16 v17, 0x19

    const/16 v19, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move-object/from16 v9, p1

    move-object/from16 v16, p8

    move-object/from16 v18, p8

    invoke-direct/range {v4 .. v19}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 422
    invoke-static {}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->getInstance()Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->addGroupChatStatusEntry(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public addQueuedContacts(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2987
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "queued_participants"

    .line 2988
    invoke-static {p2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "chat_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2991
    return-void
.end method

.method public addQueuedFileTransfer(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 21
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 2411
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v6

    .line 2414
    .local v6, "messageId":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getFileDescription(Landroid/net/Uri;)Lcom/sonymobile/rcs/platform/file/FileDescription;

    move-result-object v19

    .line 2415
    .local v19, "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/platform/file/FileDescription;->getSize()J

    move-result-wide v2

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromUri(Landroid/net/Uri;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v18

    .local v18, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    const/4 v3, 0x7

    .line 2418
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v12

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    const/16 v15, 0xf

    new-instance v16, Ljava/util/Date;

    const-wide/16 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v17}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2424
    return-object v6

    .line 2423
    .end local v18    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v19    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    :catch_0
    move-exception v20

    .line 2422
    .local v20, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addQueuedGroupChatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 2370
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v4

    .local v4, "messageId":Ljava/lang/String;
    const/4 v1, 0x4

    const-string/jumbo v8, "text/plain"

    .line 2372
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v10, v0

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    const/16 v13, 0xf

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v14}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;II)Landroid/net/Uri;

    .line 2375
    return-object v4
.end method

.method public addQueuedGroupFileTransfer(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 21
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 2440
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v6

    .line 2443
    .local v6, "messageId":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getFileDescription(Landroid/net/Uri;)Lcom/sonymobile/rcs/platform/file/FileDescription;

    move-result-object v19

    .line 2444
    .local v19, "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/rcs/platform/file/FileDescription;->getSize()J

    move-result-wide v2

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/sonymobile/rcs/utils/FileUtils;->getFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Lcom/sonymobile/rcs/core/content/ContentManager;->createMmContentFromUri(Landroid/net/Uri;JLjava/lang/String;)Lcom/sonymobile/rcs/core/content/MmContent;

    move-result-object v18

    .local v18, "content":Lcom/sonymobile/rcs/core/content/MmContent;
    const/16 v3, 0x13

    const-string/jumbo v2, "message_id"

    .line 2447
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatContact(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/content/MmContent;->getEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/content/MmContent;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/rcs/core/content/MmContent;->getSize()J

    move-result-wide v12

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    const/16 v15, 0xf

    new-instance v16, Ljava/util/Date;

    const-wide/16 v4, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v17}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2454
    return-object v6

    .line 2453
    .end local v18    # "content":Lcom/sonymobile/rcs/core/content/MmContent;
    .end local v19    # "desc":Lcom/sonymobile/rcs/platform/file/FileDescription;
    :catch_0
    move-exception v20

    .line 2452
    .local v20, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addQueuedOne2OneChatMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 2355
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v4

    .local v4, "messageId":Ljava/lang/String;
    const/4 v1, 0x1

    const-string/jumbo v8, "text/plain"

    .line 2356
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v10, v0

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    const/16 v13, 0xf

    new-instance v14, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v14, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v15}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 2359
    return-object v4
.end method

.method public addSpamMessage(Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;)V
    .locals 18
    .param p1, "msg"    # Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    .prologue
    const/4 v3, 0x0

    .line 935
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "text/plain"

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getRemote()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v12, v2

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getDate()Ljava/util/Date;

    move-result-object v14

    const/16 v15, 0x25

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getServerDate()Ljava/util/Date;

    move-result-object v16

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v17}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->addEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ILjava/util/Date;I)Landroid/net/Uri;

    .line 940
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->markChatMessageAsSpam(Ljava/lang/String;Z)V

    .line 941
    return-void
.end method

.method public deleteContactHistory(Ljava/lang/String;)I
    .locals 6
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v1, "type<>5 AND type<>3 AND type<>4 AND type<>18 AND type<>19"

    .line 1525
    .local v1, "excludeGroupChat":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contact = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1527
    .local v0, "deletedRows":I
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1530
    :goto_0
    return v0

    .line 1528
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DeleteSession: deleted rows : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteEntryFromMsgID(Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message_id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2233
    return-void
.end method

.method public deleteGroupChatConversation(Ljava/lang/String;)I
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;

    .prologue
    .line 1635
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "chat_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1637
    .local v0, "deletedRows":I
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1640
    :goto_0
    return v0

    .line 1638
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Delete group chat conversation: deleted rows : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteImEntry(Ljava/lang/String;)V
    .locals 22
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/service/api/client/ClientApiException;
        }
    .end annotation

    .prologue
    .line 1783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "message_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1785
    .local v10, "count":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 1868
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "message_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 1870
    .local v11, "deletedRows":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_c

    .line 1876
    :goto_1
    return-void

    .line 1786
    .end local v11    # "deletedRows":I
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1790
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "contact"

    .line 1791
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1797
    .local v9, "contactNumber":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1863
    :cond_1
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1787
    .end local v9    # "contactNumber":Ljava/lang/String;
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1788
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No row exists with message ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1799
    .restart local v9    # "contactNumber":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_date"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "number_of_messages"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "message_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "contact = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "_date DESC"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1806
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1807
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1860
    :cond_4
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 1808
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .local v18, "maxDate":J
    const/4 v2, 0x1

    .line 1809
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .local v17, "numberForLast":I
    const/4 v2, 0x2

    .line 1810
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1811
    .local v16, "lastMessageId":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1814
    .local v15, "isUpdateRequired":Z
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .local v21, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "number_of_messages"

    .line 1815
    add-int/lit8 v3, v17, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "_date"

    .line 1820
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1822
    .local v12, "date":J
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1840
    :cond_6
    const/4 v15, 0x1

    .line 1842
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1849
    :goto_5
    if-eqz v15, :cond_4

    .line 1850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_date = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "contact"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 1854
    .local v20, "updatedRows":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DeleteSession : recycling updated rows (should be 1) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1822
    .end local v20    # "updatedRows":I
    :cond_8
    cmp-long v2, v12, v18

    if-nez v2, :cond_6

    .line 1827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1831
    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    .line 1832
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1837
    :goto_7
    const/4 v15, 0x1

    goto/16 :goto_4

    .line 1828
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v3, "DeleteSession : the deleted message is the last one... looking for the previous one for this contact"

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 1834
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DeleteSession : find the previous message with date "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_7

    .line 1843
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DeleteSession : updating the row of date "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1871
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "contactNumber":Ljava/lang/String;
    .end local v12    # "date":J
    .end local v15    # "isUpdateRequired":Z
    .end local v16    # "lastMessageId":Ljava/lang/String;
    .end local v17    # "numberForLast":I
    .end local v18    # "maxDate":J
    .end local v21    # "values":Landroid/content/ContentValues;
    .restart local v11    # "deletedRows":I
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DeleteEntry: deleted rows : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1875
    .end local v11    # "deletedRows":I
    :catch_0
    move-exception v14

    .line 1874
    .local v14, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sonymobile/rcs/service/api/client/ClientApiException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception occured while deleting rows - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/rcs/service/api/client/ClientApiException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public doesMessageIdAlreadyExist(Ljava/lang/String;)Z
    .locals 11
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 2707
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "message_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2710
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 2711
    .local v8, "messagesNumber":I
    if-nez v8, :cond_0

    move v0, v9

    .line 2715
    :goto_0
    if-nez v6, :cond_1

    .line 2716
    :goto_1
    return v0

    :cond_0
    move v0, v10

    .line 2711
    goto :goto_0

    .line 2716
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "messagesNumber":I
    :catch_0
    move-exception v7

    .line 2715
    .local v7, "e":Ljava/lang/Exception;
    if-nez v6, :cond_2

    .line 2716
    :goto_2
    return v9

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 2715
    if-nez v6, :cond_3

    .line 2716
    :goto_3
    throw v0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public getChatContact(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-string/jumbo v6, ""

    .line 2621
    .local v6, "contact":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "contact"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\')"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " DESC"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2624
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 2627
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2630
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2631
    return-object v6

    .line 2625
    :cond_0
    return-object v6

    .line 2628
    :cond_1
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public getChatData(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-string/jumbo v7, ""

    .line 2599
    .local v7, "file":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_data"

    aput-object v3, v2, v9

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

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " DESC"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2602
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2605
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2608
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2609
    return-object v7

    .line 2603
    :cond_0
    return-object v7

    .line 2606
    :cond_1
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public getFileUriForMessageId(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .param p1, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/FileSharingError;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 2848
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2851
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 2856
    :cond_0
    if-nez v6, :cond_4

    .line 2859
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    .line 2851
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2852
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2856
    if-nez v6, :cond_3

    .line 2857
    :goto_1
    return-object v0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2856
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_1

    .line 2857
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 2856
    if-nez v6, :cond_5

    .line 2857
    :goto_2
    throw v0

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public getGroupChatConnectedParticipants(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2132
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2134
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2135
    .local v6, "alreadyTreated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "contact"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "status"

    aput-object v4, v2, v3

    const-string/jumbo v3, "chat_id= ? AND type=5 AND (status=28 OR status=26 OR status=25 OR status=24 OR status=22 OR status=30 OR status=23 OR status=27 OR status=29 OR status=12)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string/jumbo v5, "_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2155
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 2158
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2181
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2182
    return-object v13

    .line 2156
    :cond_1
    return-object v13

    :cond_2
    const/4 v0, 0x0

    .line 2159
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "contact":Ljava/lang/String;
    const/4 v0, 0x1

    .line 2160
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2161
    .local v14, "status":I
    invoke-static {v8}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "arr$":[Ljava/lang/String;
    array-length v11, v7

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v12, v7, v10

    .local v12, "participant":Ljava/lang/String;
    const/16 v0, 0xc

    .line 2164
    if-eq v14, v0, :cond_4

    .line 2169
    invoke-interface {v6, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2178
    :cond_3
    :goto_1
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2161
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2165
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2166
    return-object v13

    :cond_5
    const/16 v0, 0x17

    .line 2169
    if-eq v14, v0, :cond_3

    const/16 v0, 0x1b

    if-eq v14, v0, :cond_3

    const/16 v0, 0x1d

    if-eq v14, v0, :cond_3

    const/16 v0, 0x1c

    if-eq v14, v0, :cond_3

    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2176
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getGroupChatId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1981
    .local v7, "result":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "chat_id"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(session_id=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\') AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ") AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "chat_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " NOT NULL)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1987
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1990
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1993
    .end local v7    # "result":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1994
    return-object v7

    .line 1988
    .restart local v7    # "result":Ljava/lang/String;
    :cond_0
    return-object v4

    .line 1991
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getGroupChatInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .locals 11
    .param p1, "chatId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 2029
    .local v10, "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "session_id"

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v6, "chat_rejoin_id"

    aput-object v6, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v6, "contact"

    aput-object v6, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v6, "queued_participants"

    aput-object v6, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v6, "_data"

    aput-object v6, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(chat_id=\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "\') AND ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "type"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ") AND (("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "status"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x19

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ") OR ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "status"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x18

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "))"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_date DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2041
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 2044
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v10

    .line 2058
    .end local v10    # "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .local v0, "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2059
    return-object v0

    .end local v0    # "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .restart local v10    # "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    :cond_0
    const/4 v1, 0x0

    .line 2042
    return-object v1

    :cond_1
    const/4 v1, 0x2

    .line 2045
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "participants":Ljava/lang/String;
    const/4 v1, 0x3

    .line 2046
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2047
    .local v9, "queuedParticipants":Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .local v4, "participantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 2051
    .local v5, "queuedParticipantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2055
    .end local v5    # "queuedParticipantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .restart local v0    # "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    goto :goto_0

    .line 2052
    .end local v0    # "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .restart local v5    # "queuedParticipantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-static {v9}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .local v5, "queuedParticipantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public getGroupChatInfoUsingRowId(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .locals 11
    .param p1, "rowId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 2071
    .local v10, "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "contact"

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v6, "queued_participants"

    aput-object v6, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v6, "_data"

    aput-object v6, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ") AND ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "type"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ") AND ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "status"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_date DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2078
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 2081
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v10

    .line 2097
    .end local v10    # "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .local v0, "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2098
    return-object v0

    .end local v0    # "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .restart local v10    # "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    :cond_0
    const/4 v1, 0x0

    .line 2079
    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 2082
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2083
    .local v8, "participants":Ljava/lang/String;
    invoke-static {v8}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .local v4, "participantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 2086
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "queuedParticipants":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2089
    .local v5, "queuedParticipantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2094
    .end local v5    # "queuedParticipantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .restart local v0    # "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    goto :goto_0

    .line 2090
    .end local v0    # "result":Lcom/sonymobile/rcs/service/api/client/messaging/GroupChatInfo;
    .restart local v5    # "queuedParticipantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-static {v9}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .local v5, "queuedParticipantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public getGroupChatStatus(Ljava/lang/String;)I
    .locals 9
    .param p1, "chatId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 2109
    .local v7, "result":I
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "status"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(chat_id=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\') AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2114
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2117
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2120
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2121
    return v7

    :cond_0
    const/4 v0, -0x1

    .line 2115
    return v0

    .line 2118
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_0
.end method

.method public getGroupChatSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "chatId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2193
    .local v7, "result":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_data"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(chat_id=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\') AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ") AND (("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x19

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ") OR ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x18

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "))"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2203
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2206
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2209
    .end local v7    # "result":Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2210
    return-object v7

    .line 2204
    .restart local v7    # "result":Ljava/lang/String;
    :cond_0
    return-object v4

    .line 2207
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getIMDNRecordRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 480
    .local v7, "result":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "imdn_record_route"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(message_id=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\') AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "imdn_record_route"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " NOT NULL)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 488
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 494
    .end local v7    # "result":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 489
    .restart local v7    # "result":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    .end local v7    # "result":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 490
    .restart local v7    # "result":Ljava/lang/String;
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public getMessageInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    .locals 11
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1361
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v7, 0x0

    .line 1365
    .local v7, "result":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "contact"

    aput-object v3, v2, v8

    const-string/jumbo v3, "type"

    aput-object v3, v2, v9

    const-string/jumbo v3, "session_id"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "message_id=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1370
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1373
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1377
    .end local v7    # "result":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1379
    return-object v7

    .line 1362
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RichMessaging getMessageInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1371
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "result":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    :cond_1
    return-object v4

    .line 1374
    :cond_2
    new-instance v7, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;

    .end local v7    # "result":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, p1, v0, v1, v2}, Lcom/sonymobile/rcs/provider/messaging/MessageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .local v7, "result":Lcom/sonymobile/rcs/provider/messaging/MessageInfo;
    goto :goto_1
.end method

.method public getMessageType(Ljava/lang/String;)I
    .locals 9
    .param p1, "msgID"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 2642
    .local v7, "type":I
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "type"

    aput-object v3, v2, v8

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

    const-string/jumbo v5, "_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2646
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2649
    if-nez v6, :cond_2

    .line 2652
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2653
    return v7

    :cond_1
    const/4 v0, -0x1

    .line 2647
    return v0

    .line 2649
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2650
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    goto :goto_0
.end method

.method public getQueuedContacts(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "chatId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 3001
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "queued_participants"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(chat_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\') AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_date DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3007
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3010
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 3018
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3020
    return-object v8

    .line 3018
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v8

    :cond_2
    const/4 v0, 0x0

    .line 3011
    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3012
    .local v7, "participants":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3013
    invoke-static {v7}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 3018
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 3019
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "participants":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 3018
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public hasLastKnownStateForParticipantChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "participant"    # Ljava/lang/String;
    .param p3, "currentState"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .local v7, "lastKnownState":I
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    const-string/jumbo v3, "chat_id = ? AND type = ? AND contact = ? "

    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    .line 2962
    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string/jumbo v0, "5"

    aput-object v0, v4, v9

    const/4 v0, 0x2

    aput-object p2, v4, v0

    .line 2966
    .local v4, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v10, "status"

    aput-object v10, v2, v5

    const-string/jumbo v5, "_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2969
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 2973
    :cond_0
    :goto_0
    if-nez v6, :cond_3

    :goto_1
    const/4 v0, -0x1

    .line 2977
    if-ne v7, v0, :cond_5

    :cond_1
    move v0, v9

    :goto_2
    return v0

    .line 2969
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2970
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    goto :goto_0

    .line 2974
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 2973
    if-nez v6, :cond_4

    .line 2974
    :goto_3
    throw v0

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 2977
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    invoke-direct {p0, p3}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getEventLogValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v8

    goto :goto_2
.end method

.method public isFtSessionNetworkTimedout(Ljava/lang/String;)Z
    .locals 10
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 3048
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "status"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3051
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3054
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v9

    .line 3061
    :goto_0
    if-nez v6, :cond_4

    .line 3062
    :goto_1
    return v0

    .line 3061
    :cond_1
    if-nez v6, :cond_2

    .line 3062
    :goto_2
    return v9

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 3054
    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    move v0, v8

    goto :goto_0

    .line 3062
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 3056
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3061
    :goto_3
    if-nez v6, :cond_6

    .line 3062
    :goto_4
    return v9

    .line 3057
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to fetch FileTransfer session details ( msgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 3062
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 3061
    if-nez v6, :cond_7

    .line 3062
    :goto_5
    throw v0

    .restart local v7    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5
.end method

.method public isIdleGroupChatSessionTerminated(Ljava/lang/String;)Z
    .locals 9
    .param p1, "chatId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1912
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "status"

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(chat_id=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\') AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x22

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1919
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1926
    return v7

    .line 1921
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    move v0, v7

    .line 1923
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    move v0, v8

    .line 1921
    goto :goto_0

    .line 1923
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isNewMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2683
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "message_id"

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(chat_id = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\') AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "message_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " = \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2687
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2690
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2694
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2695
    return v8

    .line 2688
    :cond_0
    return v8

    .line 2691
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2692
    return v7
.end method

.method public markChatMessageAsSpam(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "isSpam"    # Z

    .prologue
    const/4 v5, 0x0

    .line 981
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 982
    .local v0, "values":Landroid/content/ContentValues;
    if-nez p2, :cond_0

    const-string/jumbo v1, "is_spam"

    .line 985
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 991
    return-void

    :cond_0
    const-string/jumbo v1, "is_spam"

    const/4 v2, 0x1

    .line 983
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public markChatMessageCanceled(Ljava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 838
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/16 v2, 0xb

    .line 839
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 842
    return-void
.end method

.method public markChatMessageFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 826
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/4 v2, 0x2

    .line 827
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 830
    return-void
.end method

.method public markChatSessionStarted(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 7
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 794
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getChatSystemEventType(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)I

    move-result v1

    .line 795
    .local v1, "type":I
    invoke-static {p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getParticipants(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "participants":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "chat_rejoin_id"

    .line 797
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getImSessionIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "contact"

    .line 798
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v3, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(session_id = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\") AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 802
    return-void
.end method

.method public markFirstMessageFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 811
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/4 v2, 0x2

    .line 812
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 813
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

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

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " !=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 818
    return-void
.end method

.method public markMessageAsRead(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "isRead"    # Z

    .prologue
    const/4 v2, 0x0

    .line 904
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 905
    .local v0, "values":Landroid/content/ContentValues;
    if-nez p2, :cond_0

    const-string/jumbo v1, "read_status"

    .line 908
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 910
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 912
    return-void

    :cond_0
    const-string/jumbo v1, "read_status"

    const/4 v2, 0x1

    .line 906
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public markMessageQueued(Ljava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 876
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/16 v2, 0xf

    .line 877
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 880
    return-void
.end method

.method public markMessageQueuedAndUndelivered(Ljava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 888
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/16 v2, 0x9

    .line 889
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " !=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

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

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 895
    return-void
.end method

.method public markMessageUndelivered(Ljava/lang/String;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 862
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/16 v2, 0x8

    .line 863
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " !=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

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

    .line 868
    return-void
.end method

.method public markMessagesAsDeliveryStatusProcessed(Ljava/lang/String;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 2805
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "delivery_status"

    .line 2806
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2807
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' AND ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ) AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "delivery_status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2813
    return-void
.end method

.method public markQueuedChatMessageAsSent(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 2481
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/4 v2, 0x4

    .line 2482
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "session_id"

    .line 2483
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "chat_id"

    .line 2484
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "timestamp_sent"

    .line 2485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2486
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2489
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2491
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2495
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "contact"

    .line 2487
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2492
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->getInstance()Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->addGroupChatStatusEntry(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public markQueuedFileMessageAsInitiated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "chatSessionId"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "ftMsgId"    # Ljava/lang/String;

    .prologue
    .line 2465
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "session_id"

    .line 2466
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "chat_id"

    .line 2467
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    const/16 v2, 0x19

    .line 2468
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "timestamp_sent"

    .line 2469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2470
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2472
    return-void
.end method

.method public markQueuedGroupFileTransferAsInitiated(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "ftSessionId"    # Ljava/lang/String;
    .param p3, "chatId"    # Ljava/lang/String;
    .param p4, "ftMsgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2729
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "session_id"

    .line 2730
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "chat_id"

    .line 2731
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    const/16 v2, 0x19

    .line 2732
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "timestamp_sent"

    .line 2733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2734
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2736
    invoke-static {}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->getInstance()Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    move-result-object v1

    invoke-virtual {v1, p4, p1, p2}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->addGroupChatStatusEntry(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 2737
    return-void
.end method

.method public removeQueuedContacts(Ljava/lang/String;)V
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;

    .prologue
    .line 3029
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "queued_participants"

    .line 3030
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3031
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(chat_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3034
    return-void
.end method

.method public setChatMessageDeliveryRequested(Ljava/lang/String;)V
    .locals 1
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0xa

    .line 664
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;I)V

    .line 665
    return-void
.end method

.method public setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getMessageType(Ljava/lang/String;)I

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x4

    .line 615
    if-ne v0, v1, :cond_0

    .line 627
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "displayed"

    .line 616
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "delivered"

    .line 619
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "error"

    .line 621
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v1, 0x2

    .line 624
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 617
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageReadStatus(Ljava/lang/String;)V

    .line 618
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setMessageStatusReceived(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    .line 620
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "failed"

    .line 621
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "forbidden"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public setChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "contact"    # Ljava/lang/String;

    .prologue
    .line 637
    invoke-virtual {p0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getMessageType(Ljava/lang/String;)I

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x4

    .line 638
    if-ne v0, v1, :cond_1

    .line 640
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->getInstance()Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonymobile/rcs/provider/groupchat/GroupChatMessaging;->setGroupChatMessageDeliveryStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x13

    .line 638
    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "displayed"

    .line 643
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "delivered"

    .line 648
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "error"

    .line 650
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    const/4 v1, 0x2

    .line 653
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    .line 644
    if-ne v0, v1, :cond_4

    .line 647
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setMessageStatusReceived(Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageReadStatus(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x7

    .line 649
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->setChatMessageDeliveryStatus(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "failed"

    .line 650
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "forbidden"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public setChatSessionTerminatedByUser(Ljava/lang/String;)V
    .locals 5
    .param p1, "chatId"    # Ljava/lang/String;

    .prologue
    .line 1935
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/16 v2, 0xc

    .line 1936
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1937
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "chat_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ==  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1940
    return-void
.end method

.method public updateFileReadStatus(Ljava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 1315
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "read_status"

    const/4 v2, 0x1

    .line 1316
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "timestamp_displayed"

    .line 1317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1318
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1320
    return-void
.end method

.method public updateFileTransferChatId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "chatId"    # Ljava/lang/String;
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "fileValidity"    # J

    .prologue
    .line 1331
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "chat_id"

    .line 1332
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "message_id"

    .line 1333
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "validity"

    .line 1334
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1335
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1337
    return-void
.end method

.method public updateFileTransferProgress(Ljava/lang/String;JJ)V
    .locals 10
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "totalSize"    # J

    .prologue
    .line 1390
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1392
    .local v7, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonymobile/rcs/provider/messaging/RichMessagingData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "size"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1395
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1398
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1417
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1418
    return-void

    .line 1396
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "size"

    .line 1399
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .local v8, "downloadedSize":J
    const-wide/16 v0, 0x0

    .line 1401
    cmp-long v0, v0, v8

    if-eqz v0, :cond_3

    const-wide/16 v0, 0xa

    div-long v0, p4, v0

    add-long/2addr v0, v8

    cmp-long v0, p2, v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    :cond_3
    const-string/jumbo v0, "size"

    .line 1411
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v0, "status"

    const/4 v1, 0x3

    .line 1412
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1413
    iget-object v0, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "session_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1401
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateFileTransferSessionId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1347
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "session_id"

    .line 1348
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1352
    return-void
.end method

.method public updateFileTransferStatus(Ljava/lang/String;I)V
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 1298
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    .line 1299
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x7

    .line 1300
    if-eq p2, v1, :cond_0

    .line 1303
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " !=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " !=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1307
    return-void

    :cond_0
    const-string/jumbo v1, "timestamp_delivered"

    .line 1301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public updateFileTransferUri(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 1427
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    .line 1428
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1429
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v1, "_data"

    .line 1433
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1438
    return-void
.end method

.method public updateFilevalidity(Ljava/lang/String;J)V
    .locals 6
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "validity"    # J

    .prologue
    .line 2759
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "validity"

    .line 2760
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2761
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "session_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2763
    return-void
.end method

.method public updateGroupChatSession(Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 10
    .param p1, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    const/4 v9, 0x0

    .line 2279
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2280
    .local v2, "participants":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getParticipants()Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->getList()Ljava/util/List;

    move-result-object v3

    .line 2281
    .local v3, "participantsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2287
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "contact"

    .line 2288
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    iget-object v5, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(chat_id=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getContributionID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\') AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x19

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v4, v7, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2294
    return-void

    .line 2281
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2282
    .local v0, "contact":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public updateOutgoingMessageStatus(Ljava/lang/String;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x7

    .line 2663
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    .line 2664
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "timestamp_delivered"

    .line 2665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2666
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" AND ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ) AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "status"

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

    .line 2673
    return-void
.end method

.method public updateResentFileStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "newSessionId"    # Ljava/lang/String;

    .prologue
    .line 2253
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/16 v2, 0x19

    .line 2254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "session_id"

    .line 2255
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "_date"

    .line 2256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2257
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2259
    return-void
.end method

.method public updateResentMessage(Ljava/lang/String;Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;)V
    .locals 5
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;

    .prologue
    .line 2243
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/4 v2, 0x4

    .line 2244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "session_id"

    .line 2245
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "message_id"

    .line 2246
    invoke-virtual {p2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatSession;->getFirstMessage()Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "_date"

    .line 2247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2248
    iget-object v1, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->databaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "message_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2250
    return-void
.end method
