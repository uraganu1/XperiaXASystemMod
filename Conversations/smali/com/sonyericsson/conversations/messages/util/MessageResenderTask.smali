.class public Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;
.super Landroid/os/AsyncTask;
.source "MessageResenderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic -com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private final mMessage:Lcom/sonyericsson/conversations/model/Message;


# direct methods
.method private static synthetic -getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->values()[Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->FILE_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_JOINED:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->SYSTEM_EVENT_LEFT:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->TEXT_MESSAGE:Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    invoke-virtual {v1}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->-com_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues:[I

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

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mContext:Landroid/content/Context;

    .line 56
    iput-object p3, p0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    .line 57
    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 54
    return-void
.end method

.method private resendMessage()V
    .locals 23

    .prologue
    .line 68
    const/16 v16, 0x0

    .line 69
    .local v16, "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v18

    .line 71
    .local v18, "uri":Landroid/net/Uri;
    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/conversations/model/MessageUtil;->getType(Landroid/net/Uri;)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 114
    new-instance v20, Lcom/google/android/mms/MmsException;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v20
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_0 .. :try_end_0} :catch_4

    .line 116
    .end local v18    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v6

    .line 117
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .local v6, "e":Lcom/google/android/mms/MmsException;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->showSendFailedToast()V

    .line 66
    .end local v6    # "e":Lcom/google/android/mms/MmsException;
    :goto_1
    return-void

    .line 73
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v18    # "uri":Landroid/net/Uri;
    :pswitch_0
    :try_start_1
    new-instance v17, Lcom/sonymobile/conversations/transaction/SmsMessageSender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/conversations/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_1 .. :try_end_1} :catch_4

    .line 74
    .local v17, "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v20, v0

    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    invoke-interface/range {v20 .. v20}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/conversations/transaction/MessageSender;->sendMessage(J)Z
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_2 .. :try_end_2} :catch_d

    move-object/from16 v16, v17

    .line 75
    .end local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .local v16, "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    goto :goto_1

    .line 81
    .local v16, "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :pswitch_1
    :try_start_3
    new-instance v19, Landroid/content/ContentValues;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/content/ContentValues;-><init>(I)V

    .line 82
    .local v19, "values":Landroid/content/ContentValues;
    const-string/jumbo v20, "msg_box"

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v15, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 87
    .local v15, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    new-instance v17, Lcom/sonymobile/conversations/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sonyericsson/conversations/model/Message;->getRawPriority()I

    move-result v21

    .line 88
    invoke-virtual {v15}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubscriptionId()I

    move-result v22

    .line 87
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/conversations/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;II)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_3 .. :try_end_3} :catch_4

    .line 89
    .restart local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :try_start_4
    invoke-interface/range {v17 .. v17}, Lcom/sonymobile/conversations/transaction/MessageSender;->prepareForSendMessage()Landroid/net/Uri;

    .line 90
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getThreadId()J

    move-result-wide v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/conversations/transaction/MessageSender;->sendMessage(J)Z
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_4 .. :try_end_4} :catch_d

    move-object/from16 v16, v17

    .line 91
    .end local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .local v16, "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    goto/16 :goto_1

    .line 94
    .end local v15    # "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    .end local v19    # "values":Landroid/content/ContentValues;
    .local v16, "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :pswitch_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    check-cast v14, Lcom/sonyericsson/conversations/model/JoynMessage;

    .line 95
    .local v14, "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    invoke-virtual {v14}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessageType()Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;

    move-result-object v13

    .line 96
    .local v13, "imMsgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    invoke-static {}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->-getcom_sonymobile_jms_message_ImMessageStorageApi$ImMessageTypeSwitchesValues()[I

    move-result-object v20

    invoke-virtual {v13}, Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_1

    .line 109
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unexpected joyn msg type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 108
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 118
    .end local v13    # "imMsgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .end local v14    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .end local v18    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v7

    .line 119
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .local v7, "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->showSendFailedToast()V

    goto/16 :goto_1

    .line 99
    .end local v7    # "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    .restart local v13    # "imMsgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .restart local v14    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v18    # "uri":Landroid/net/Uri;
    :pswitch_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v21

    .line 100
    invoke-virtual {v14}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v20

    check-cast v20, Lcom/sonymobile/jms/message/ImTextMessage;

    .line 98
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;->sendImTextMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImTextMessage;)V
    :try_end_6
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 120
    .end local v13    # "imMsgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .end local v14    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .end local v18    # "uri":Landroid/net/Uri;
    :catch_2
    move-exception v8

    .line 121
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .local v8, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->showSendFailedToast()V

    goto/16 :goto_1

    .line 104
    .end local v8    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .restart local v13    # "imMsgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .restart local v14    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v18    # "uri":Landroid/net/Uri;
    :pswitch_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/sonyericsson/conversations/conversation/ConversationId;->getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;

    move-result-object v21

    .line 105
    invoke-virtual {v14}, Lcom/sonyericsson/conversations/model/JoynMessage;->getImMessage()Lcom/sonymobile/jms/message/ImMessage;

    move-result-object v20

    check-cast v20, Lcom/sonymobile/jms/message/ImFileMessage;

    .line 103
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/messages/ImUserMessageSenderUtil;->sendImFileMessage(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/message/ImFileMessage;)V
    :try_end_7
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sonymobile/jms/file/UnableToExtractFileInformationException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/sonymobile/jms/file/FileTooBigException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/sonymobile/jms/message/ImMessageStorageException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 122
    .end local v13    # "imMsgType":Lcom/sonymobile/jms/message/ImMessageStorageApi$ImMessageType;
    .end local v14    # "joynMessage":Lcom/sonyericsson/conversations/model/JoynMessage;
    .end local v18    # "uri":Landroid/net/Uri;
    :catch_3
    move-exception v9

    .line 123
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .local v9, "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->showSendFailedToast()V

    goto/16 :goto_1

    .line 128
    .end local v9    # "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :catch_4
    move-exception v12

    .line 129
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .local v12, "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->showSendFailedToast()V

    goto/16 :goto_1

    .line 126
    .end local v12    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :catch_5
    move-exception v10

    .line 127
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .local v10, "e":Lcom/sonymobile/jms/file/FileTooBigException;
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->showSendFailedToast()V

    goto/16 :goto_1

    .line 124
    .end local v10    # "e":Lcom/sonymobile/jms/file/FileTooBigException;
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :catch_6
    move-exception v11

    .line 125
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .local v11, "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->showSendFailedToast()V

    goto/16 :goto_1

    .line 116
    .end local v11    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    .restart local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v18    # "uri":Landroid/net/Uri;
    :catch_7
    move-exception v6

    .restart local v6    # "e":Lcom/google/android/mms/MmsException;
    move-object/from16 v16, v17

    .end local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .local v16, "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    goto/16 :goto_0

    .line 118
    .end local v6    # "e":Lcom/google/android/mms/MmsException;
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :catch_8
    move-exception v7

    .restart local v7    # "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    move-object/from16 v16, v17

    .end local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    goto :goto_2

    .line 120
    .end local v7    # "e":Lcom/sonymobile/jms/contact/ImContactNotRcsCapableException;
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :catch_9
    move-exception v8

    .restart local v8    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    move-object/from16 v16, v17

    .end local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    goto :goto_3

    .line 122
    .end local v8    # "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :catch_a
    move-exception v9

    .restart local v9    # "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    move-object/from16 v16, v17

    .end local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    goto :goto_4

    .line 124
    .end local v9    # "e":Lcom/sonymobile/jms/conversation/TooManyRcsSessionsActiveException;
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :catch_b
    move-exception v11

    .restart local v11    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    move-object/from16 v16, v17

    .end local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    goto :goto_7

    .line 126
    .end local v11    # "e":Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :catch_c
    move-exception v10

    .restart local v10    # "e":Lcom/sonymobile/jms/file/FileTooBigException;
    move-object/from16 v16, v17

    .end local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    goto :goto_6

    .line 128
    .end local v10    # "e":Lcom/sonymobile/jms/file/FileTooBigException;
    .end local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    :catch_d
    move-exception v12

    .restart local v12    # "e":Lcom/sonymobile/jms/message/ImMessageStorageException;
    move-object/from16 v16, v17

    .end local v17    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    .restart local v16    # "sender":Lcom/sonymobile/conversations/transaction/MessageSender;
    goto :goto_5

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 96
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private showSendFailedToast()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mContext:Landroid/content/Context;

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    const/4 v2, 0x0

    .line 134
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 133
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "voids":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonyericsson/conversations/messages/util/MessageResenderTask;->resendMessage()V

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method
