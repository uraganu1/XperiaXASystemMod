.class public Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;
.super Ljava/lang/Object;
.source "XmsResendManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

.field private mUndeliveredMessageEventListener:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->DEBUG:Z

    .line 50
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/jms/message/ImMessageStorageApi;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "imMessageStorageApi"    # Lcom/sonymobile/jms/message/ImMessageStorageApi;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    .line 65
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mApplicationContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;-><init>(Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mUndeliveredMessageEventListener:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;

    .line 62
    return-void
.end method

.method private markUndeliveredMessagesAsProcessedAndLogIfError(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 2
    .param p1, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    .prologue
    .line 224
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->markUnprocessedUndeliveredImUserMessagesAsProcessed(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    :try_end_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v1, "Mark unprocessed undelivered IM messages as processed failed."

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resendJoynMessagesAsRegularMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/util/Collection;)V
    .locals 18
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/message/ImUserMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v15

    invoke-interface {v15}, Lcom/sonyericsson/conversations/Apis;->getConversationManager()Lcom/sonyericsson/conversations/conversation/ConversationManager;

    move-result-object v3

    .line 149
    .local v3, "conversationManager":Lcom/sonyericsson/conversations/conversation/ConversationManager;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sonyericsson/conversations/conversation/ConversationManager;->reuseOrCreateConversationAndGetThreadId(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Lcom/sonyericsson/conversations/conversation/Conversation;

    move-result-object v2

    .line 152
    .local v2, "conversation":Lcom/sonyericsson/conversations/conversation/Conversation;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v15

    invoke-interface {v15}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v9

    .line 153
    .local v9, "imConversationApi":Lcom/sonymobile/jms/conversation/ImConversationApi;
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "message$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/jms/message/ImUserMessage;

    .line 155
    .local v12, "message":Lcom/sonymobile/jms/message/ImUserMessage;
    instance-of v15, v12, Lcom/sonymobile/jms/message/ImTextMessage;

    if-eqz v15, :cond_2

    move-object v11, v12

    .line 156
    check-cast v11, Lcom/sonymobile/jms/message/ImTextMessage;

    .line 157
    .local v11, "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    invoke-virtual {v11}, Lcom/sonymobile/jms/message/ImTextMessage;->getId()Ljava/lang/String;

    move-result-object v14

    .line 160
    .local v14, "msgId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v11}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v15

    .line 159
    invoke-static {v15}, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker;->isXmsTextTooLong(Ljava/lang/String;)Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    move-result-object v15

    .line 160
    sget-object v16, Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;->OK:Lcom/sonyericsson/conversations/restrictions/RestrictionsChecker$ContentStatus;

    .line 159
    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 161
    sget-boolean v15, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 162
    const-string/jumbo v15, "Ignoring msg \'"

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 163
    const-string/jumbo v16, "\' containing sms content too long "

    .line 162
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 171
    :catch_0
    move-exception v4

    .line 172
    .local v4, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v15, "TextMessage could not be converted to SmsMessage: "

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    .end local v4    # "e":Lcom/google/android/mms/MmsException;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->sendTextMessageAsSmsMessage(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 169
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v15

    invoke-interface {v15}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v15

    .line 168
    invoke-interface {v9, v15, v14}, Lcom/sonymobile/jms/conversation/ImConversationApi;->deleteImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 174
    :catch_1
    move-exception v7

    .line 175
    .local v7, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v15, "Undelivered TextMessage "

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 176
    const-string/jumbo v16, " could not be deleted from sending queue"

    .line 175
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    goto :goto_0

    .line 177
    .end local v7    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catch_2
    move-exception v5

    .line 178
    .local v5, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v15, "Undelivered TextMessage "

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 179
    const-string/jumbo v16, " could not be removed from sending queue"

    .line 178
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    goto/16 :goto_0

    .line 181
    .end local v5    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v11    # "imTextMessage":Lcom/sonymobile/jms/message/ImTextMessage;
    .end local v14    # "msgId":Ljava/lang/String;
    :cond_2
    instance-of v15, v12, Lcom/sonymobile/jms/message/ImFileMessage;

    if-eqz v15, :cond_0

    move-object v10, v12

    .line 182
    check-cast v10, Lcom/sonymobile/jms/message/ImFileMessage;

    .line 183
    .local v10, "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    invoke-virtual {v10}, Lcom/sonymobile/jms/message/ImFileMessage;->getId()Ljava/lang/String;

    move-result-object v14

    .line 185
    .restart local v14    # "msgId":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mApplicationContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v10}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v16

    .line 185
    invoke-static/range {v15 .. v16}, Lcom/sonyericsson/conversations/model/MessageUtil;->isSupportedMmsContent(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 187
    sget-boolean v15, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 188
    const-string/jumbo v15, "Ignoring msg \'"

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 189
    const-string/jumbo v16, "\' containing unsupported mms content: "

    .line 188
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 190
    const-string/jumbo v16, " MimeType \'"

    .line 188
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 190
    invoke-virtual {v10}, Lcom/sonymobile/jms/message/ImFileMessage;->getMimeType()Ljava/lang/String;

    move-result-object v16

    .line 188
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 191
    const-string/jumbo v16, "\' size "

    .line 188
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 191
    invoke-virtual {v10}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileSize()J

    move-result-wide v16

    .line 188
    invoke-virtual/range {v15 .. v17}, Lcom/sonymobile/conversations/util/LogUtil;->add(J)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 191
    const-string/jumbo v16, " / "

    .line 188
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 192
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v16

    .line 188
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(I)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 200
    :catch_3
    move-exception v4

    .line 201
    .restart local v4    # "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v15, "File transfer \'"

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 202
    const-string/jumbo v16, "\' failed to convert to MmsMessage"

    .line 201
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 196
    .end local v4    # "e":Lcom/google/android/mms/MmsException;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->sendFileMessageAsMmsMessage(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonyericsson/conversations/conversation/Conversation;)V

    .line 198
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/conversation/Conversation;->getId()Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-result-object v15

    invoke-interface {v15}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v15

    .line 197
    invoke-interface {v9, v15, v14}, Lcom/sonymobile/jms/conversation/ImConversationApi;->deleteImUserMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    .line 203
    :catch_4
    move-exception v6

    .line 204
    .local v6, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    const-string/jumbo v15, "Could not extract file information for msg \'"

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 205
    const-string/jumbo v16, "\'!"

    .line 204
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 212
    .end local v6    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    :catch_5
    move-exception v5

    .line 213
    .restart local v5    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v15, "Undelivered FileMessage "

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 214
    const-string/jumbo v16, " could not be removed from sending queue"

    .line 213
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    goto/16 :goto_0

    .line 209
    .end local v5    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :catch_6
    move-exception v7

    .line 210
    .restart local v7    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    const-string/jumbo v15, "Undelivered FileMessage "

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 211
    const-string/jumbo v16, " could not be deleted from sending queue"

    .line 210
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    goto/16 :goto_0

    .line 206
    .end local v7    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :catch_7
    move-exception v8

    .line 207
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v15, "Could not extract file size for msg \'"

    invoke-static {v15}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-interface {v12}, Lcom/sonymobile/jms/message/ImUserMessage;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    .line 208
    const-string/jumbo v16, "\'!"

    .line 207
    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 144
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "imFileMessage":Lcom/sonymobile/jms/message/ImFileMessage;
    .end local v12    # "message":Lcom/sonymobile/jms/message/ImUserMessage;
    .end local v14    # "msgId":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private sendFileMessageAsMmsMessage(Lcom/sonymobile/jms/message/ImFileMessage;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 9
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImFileMessage;
    .param p2, "conv"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;,
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 236
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "mimeType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    .line 239
    .local v0, "fileUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mApplicationContext:Landroid/content/Context;

    .line 238
    invoke-static {v6, v0, v2}, Lcom/sonyericsson/conversations/model/MessageUtil;->createMediaModel(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/mms/model/MediaModel;

    move-result-object v1

    .line 240
    .local v1, "mediaModel":Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    .line 241
    .local v5, "slideshowModel":Lcom/android/mms/model/SlideshowModel;
    new-instance v4, Lcom/android/mms/model/SlideModel;

    .line 242
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/mms/model/MediaModel;

    aput-object v1, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 241
    const/16 v7, 0x1388

    invoke-direct {v4, v7, v6}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/List;)V

    .line 243
    .local v4, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v5, v8, v4}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 244
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sonyericsson/conversations/model/MmsMessage;->createDraft(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v3

    .line 245
    .local v3, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sonyericsson/conversations/model/MmsMessage;->setSubscriptionId(I)V

    .line 246
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v6, p2, v3}, Lcom/sonyericsson/conversations/messages/util/XmsMessageSenderUtil;->sendRegularMessage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/MmsMessage;)Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 234
    return-void
.end method

.method private sendTextMessageAsSmsMessage(Lcom/sonymobile/jms/message/ImTextMessage;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .locals 2
    .param p1, "message"    # Lcom/sonymobile/jms/message/ImTextMessage;
    .param p2, "conversation"    # Lcom/sonyericsson/conversations/conversation/Conversation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->createDraft(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v0

    .line 253
    .local v0, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->setSubscriptionId(I)V

    .line 254
    invoke-virtual {p1}, Lcom/sonymobile/jms/message/ImTextMessage;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Lcom/sonyericsson/conversations/messages/util/XmsMessageSenderUtil;->sendRegularMessage(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/SmsMessage;)Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 251
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mUndeliveredMessageEventListener:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->unregisterMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 75
    :cond_0
    return-void
.end method

.method public handleUndeliveredMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V
    .locals 8
    .param p1, "imOne2OneConversationId"    # Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/message/ImMessageStorageException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 107
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v4

    .line 108
    .local v4, "settingsManager":Lcom/sonyericsson/conversations/settings/SettingsManager;
    invoke-virtual {v4}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v6

    if-nez v6, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->markUndeliveredMessagesAsProcessedAndLogIfError(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    .line 111
    return-void

    .line 114
    :cond_0
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImMessageStorageApi()Lcom/sonymobile/jms/message/ImMessageStorageApi;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->getUnprocessedUndeliveredImUserMessagesAndMarkThemAsProcessed(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)Ljava/util/List;

    move-result-object v5

    .line 117
    .local v5, "undeliveredMessages":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 119
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/jms/message/ImUserMessage;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/jms/message/ImUserMessage;

    .line 122
    .local v2, "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    :try_start_0
    instance-of v6, v2, Lcom/sonymobile/jms/message/ImFileMessage;

    if-eqz v6, :cond_1

    .line 123
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mApplicationContext:Landroid/content/Context;

    .line 124
    check-cast v2, Lcom/sonymobile/jms/message/ImFileMessage;

    .end local v2    # "imUserMessage":Lcom/sonymobile/jms/message/ImUserMessage;
    invoke-virtual {v2}, Lcom/sonymobile/jms/message/ImFileMessage;->getFileUri()Landroid/net/Uri;

    move-result-object v7

    .line 122
    invoke-static {v6, v7}, Lcom/sonyericsson/conversations/model/MessageUtil;->isSupportedMmsContent(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 134
    .end local v1    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 136
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->markUndeliveredMessagesAsProcessedAndLogIfError(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;)V

    .line 137
    return-void

    .line 140
    :cond_3
    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->resendJoynMessagesAsRegularMessages(Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;Ljava/util/Collection;)V

    .line 105
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mImMessageStorageApi:Lcom/sonymobile/jms/message/ImMessageStorageApi;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/XmsResendManager;->mUndeliveredMessageEventListener:Lcom/sonyericsson/conversations/ui/controller/XmsResendManager$UndeliveredMessageEventListener;

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi;->registerMessageEventListener(Lcom/sonymobile/jms/message/ImUserMessageEventListener;)V

    .line 69
    :cond_0
    return-void
.end method
