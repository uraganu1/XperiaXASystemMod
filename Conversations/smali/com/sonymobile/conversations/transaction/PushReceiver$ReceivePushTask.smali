.class Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/conversations/transaction/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceivePushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private allowMmsNetworkTrafficWhenRoaming()Z
    .locals 5

    .prologue
    .line 192
    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/settings/Settings;->isMmsRetrievalDuringRoamingEnabled()Z

    move-result v0

    .line 194
    .local v0, "downloadOnRoaming":Z
    const/4 v1, 0x1

    .line 196
    .local v1, "onRoamingNetwork":Z
    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    .line 197
    const-string/jumbo v4, "phone"

    .line 196
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 198
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 199
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    .line 201
    .end local v1    # "onRoamingNetwork":Z
    :cond_0
    if-eqz v1, :cond_1

    .end local v0    # "downloadOnRoaming":Z
    :goto_0
    return v0

    .restart local v0    # "downloadOnRoaming":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "intents"    # [Ljava/lang/Object;

    .prologue
    .line 80
    check-cast p1, [Landroid/content/Intent;

    .end local p1    # "intents":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 30
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 81
    const/16 v26, 0x0

    aget-object v10, p1, v26

    .line 84
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v26, "data"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v16

    .line 86
    .local v16, "pushData":[B
    if-nez v16, :cond_0

    .line 87
    const-string/jumbo v26, "Invalid PUSH data: pushData is null"

    invoke-static/range {v26 .. v26}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 88
    const/16 v26, 0x0

    return-object v26

    .line 90
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSubscriptionIdFromIntent(Landroid/content/Intent;)I

    move-result v20

    .line 92
    .local v20, "subscriptionId":I
    invoke-static/range {v20 .. v20}, Lcom/sonymobile/conversations/transaction/TransactionUtil;->shouldParseContentDisposition(I)Z

    move-result v18

    .line 94
    .local v18, "shouldParseContentDisposition":Z
    new-instance v14, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([BZ)V

    .line 97
    .local v14, "parser":Lcom/google/android/mms/pdu/PduParser;
    :try_start_0
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 103
    .local v15, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v15, :cond_1

    .line 104
    const-string/jumbo v26, "Invalid PUSH data: PDU is null"

    invoke-static/range {v26 .. v26}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 105
    const/16 v26, 0x0

    return-object v26

    .line 98
    .end local v15    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :catch_0
    move-exception v8

    .line 99
    .local v8, "e":Ljava/lang/RuntimeException;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Invalid PUSH data: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 100
    const/16 v26, 0x0

    return-object v26

    .line 108
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v15    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v19

    .line 109
    .local v19, "somcp":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v24

    .line 113
    .local v24, "type":I
    sparse-switch v24, :sswitch_data_0

    .line 176
    :try_start_1
    const-string/jumbo v26, "Received unrecognized PDU."

    invoke-static/range {v26 .. v26}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 188
    :cond_2
    :goto_0
    const/16 v26, 0x0

    return-object v26

    .line 116
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v0, v15, v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->findThreadIdAndMessageId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)[J

    move-result-object v9

    .line 117
    .local v9, "ids":[J
    const/16 v26, 0x0

    aget-wide v22, v9, v26

    .line 118
    .local v22, "threadId":J
    const/16 v26, 0x1

    aget-wide v12, v9, v26

    .line 120
    .local v12, "messageId":J
    const-wide/16 v26, -0x1

    cmp-long v26, v22, v26

    if-eqz v26, :cond_2

    .line 126
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistMmsNotification(Lcom/google/android/mms/pdu/GenericPdu;)Landroid/net/Uri;

    move-result-object v25

    .line 127
    .local v25, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateThreadId(Landroid/content/Context;JLandroid/net/Uri;)V

    .line 129
    const/16 v26, 0x86

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->updateReadStatus(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 132
    move-object v0, v15

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v6, v0

    .line 134
    .local v6, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v6, v12, v13}, Lcom/sonymobile/conversations/transaction/PushReceiver;->-wrap0(Landroid/content/Context;Lcom/google/android/mms/pdu/DeliveryInd;J)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 178
    .end local v6    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    .end local v9    # "ids":[J
    .end local v12    # "messageId":J
    .end local v22    # "threadId":J
    .end local v25    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v7

    .line 179
    .local v7, "e":Lcom/google/android/mms/MmsException;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to save the data from PUSH: type="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v7}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 141
    .end local v7    # "e":Lcom/google/android/mms/MmsException;
    :sswitch_1
    :try_start_2
    move-object v0, v15

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v11, v0

    .line 142
    .local v11, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-static {v0, v11}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 143
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persistMmsNotification(Lcom/google/android/mms/pdu/GenericPdu;)Landroid/net/Uri;

    move-result-object v25

    .line 146
    .restart local v25    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/model/MessageUtil;->updateSubscriptionId(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 147
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v17

    .line 148
    .local v17, "senderAddress":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/sonyericsson/conversations/Apis;->getXmsManager()Lcom/sonyericsson/conversations/sms/XmsManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/sms/XmsManager;->xmsReceived(Ljava/lang/String;)V

    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->allowMmsNetworkTrafficWhenRoaming()Z

    move-result v26

    if-nez v26, :cond_3

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/MessageUtil;->updateMmsThreadId(Landroid/content/Context;Landroid/net/Uri;)V

    .line 151
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v26

    .line 152
    sget-object v27, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;->RECEIVED_MESSAGE:Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;

    .line 153
    const/16 v28, 0x0

    .line 151
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->add(Landroid/net/Uri;Lcom/sonyericsson/conversations/notifications/NotificationManagerApi$NotificationType;Z)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 180
    .end local v11    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    .end local v17    # "senderAddress":Ljava/lang/String;
    .end local v25    # "uri":Landroid/net/Uri;
    :catch_2
    move-exception v8

    .line 181
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v26, "Unexpected RuntimeException."

    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 162
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v17    # "senderAddress":Ljava/lang/String;
    .restart local v25    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_3
    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v26, "android.intent.action.ACTION_NOTIFY_TRANSACTION"

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-class v28, Lcom/sonymobile/conversations/transaction/TransactionService;

    const/16 v29, 0x0

    .line 162
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v21, "svc":Landroid/content/Intent;
    const-string/jumbo v26, "uri"

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string/jumbo v26, "type"

    .line 166
    const/16 v27, 0x0

    .line 165
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string/jumbo v26, "phone_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/conversations/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method
