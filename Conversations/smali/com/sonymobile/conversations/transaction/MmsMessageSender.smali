.class public Lcom/sonymobile/conversations/transaction/MmsMessageSender;
.super Ljava/lang/Object;
.source "MmsMessageSender.java"

# interfaces
.implements Lcom/sonymobile/conversations/transaction/MessageSender;


# static fields
.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsPrepared:Z

.field private mMessagePriority:I

.field private final mMessageUri:Landroid/net/Uri;

.field private mSubscriptionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->DEFAULT_DELIVERY_REPORT_MODE:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Landroid/net/Uri;
    .param p3, "priority"    # I
    .param p4, "subscriptionId"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 74
    iput p3, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessagePriority:I

    .line 75
    iput p4, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mSubscriptionId:I

    .line 77
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null message URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    return-void
.end method

.method private static prepareReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "subscriptionId"    # I

    .prologue
    .line 189
    const/4 v3, 0x1

    new-array v7, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 190
    .local v7, "sender":[Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v3, v7, v5

    .line 193
    :try_start_0
    const-string/jumbo v3, "insert-address-token"

    .line 194
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 193
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 195
    .local v10, "insertAddressTokenBytes":[B
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 198
    .local v4, "messageIdBytes":[B
    new-instance v2, Lcom/google/android/mms/pdu/ReadRecInd;

    .line 199
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v10}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 201
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsVersion()I

    move-result v5

    move/from16 v6, p3

    .line 198
    invoke-direct/range {v2 .. v7}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 205
    .local v2, "readRec":Lcom/google/android/mms/pdu/ReadRecInd;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v2, v14, v15}, Lcom/google/android/mms/pdu/ReadRecInd;->setDate(J)V

    .line 207
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v12

    .line 208
    .local v12, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    sget-object v3, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v2, v3}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    .line 209
    .local v11, "mmsUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v11, v1}, Lcom/sonyericsson/conversations/model/MessageUtil;->updateSubscriptionId(Landroid/content/Context;Landroid/net/Uri;I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v2    # "readRec":Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v4    # "messageIdBytes":[B
    .end local v10    # "insertAddressTokenBytes":[B
    .end local v11    # "mmsUri":Landroid/net/Uri;
    .end local v12    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v9

    .line 213
    .local v9, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v3, "Persist message failed"

    invoke-static {v3, v9}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 210
    .end local v9    # "e":Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v8

    .line 211
    .local v8, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    const-string/jumbo v3, "Invalid header value"

    invoke-static {v3, v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "subscriptionId"    # I

    .prologue
    .line 182
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->prepareReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_READREC_TRANSACTION"

    .line 184
    const-class v2, Lcom/sonymobile/conversations/transaction/TransactionService;

    .line 183
    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 181
    return-void
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILjava/util/List;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "messageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "subIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 174
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v1, v2, p3, v3}, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->prepareReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_READREC_TRANSACTION"

    .line 177
    const-class v3, Lcom/sonymobile/conversations/transaction/TransactionService;

    .line 176
    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 172
    return-void
.end method

.method private updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 9
    .param p1, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    const/4 v8, 0x0

    const/16 v5, 0x81

    .line 144
    iget-object v3, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 148
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "pref_key_mms_expiry"

    const-wide/32 v6, 0x93a80

    .line 147
    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 151
    iget v3, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessagePriority:I

    if-eqz v3, :cond_0

    .line 152
    iget v3, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessagePriority:I

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    .line 158
    :goto_0
    const-string/jumbo v3, "pref_key_delivery_reports"

    .line 159
    sget-boolean v6, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->DEFAULT_DELIVERY_REPORT_MODE:Z

    .line 158
    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 160
    .local v0, "deliveryReport":Z
    if-eqz v0, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 163
    if-eqz v0, :cond_3

    .line 164
    const-string/jumbo v3, "pref_key_mms_read_reports"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 165
    .local v2, "readReport":Z
    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    .line 143
    .end local v2    # "readReport":Z
    :goto_3
    return-void

    .line 154
    .end local v0    # "deliveryReport":Z
    :cond_0
    const-string/jumbo v3, "pref_key_mms_priority"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    goto :goto_0

    .restart local v0    # "deliveryReport":Z
    :cond_1
    move v3, v5

    .line 160
    goto :goto_1

    .restart local v2    # "readReport":Z
    :cond_2
    move v4, v5

    .line 165
    goto :goto_2

    .line 167
    .end local v2    # "readReport":Z
    :cond_3
    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    goto :goto_3
.end method


# virtual methods
.method public prepareForSendMessage()Landroid/net/Uri;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x3e8

    .line 88
    iget-boolean v8, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mIsPrepared:Z

    if-nez v8, :cond_1

    .line 90
    iget-object v8, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v4

    .line 91
    .local v4, "p":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    iget-object v8, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v5

    .line 93
    .local v5, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v8

    const/16 v9, 0x80

    if-eq v8, v9, :cond_0

    .line 94
    new-instance v8, Lcom/google/android/mms/MmsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    move-object v6, v5

    .line 97
    check-cast v6, Lcom/google/android/mms/pdu/SendReq;

    .line 100
    .local v6, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v6}, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 103
    const-string/jumbo v8, "personal"

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long v0, v8, v10

    .line 107
    .local v0, "date":J
    invoke-virtual {v6, v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 110
    iget-object v8, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 111
    .local v2, "messageId":J
    invoke-static {v2, v3}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMmsMessage(J)Landroid/net/Uri;

    move-result-object v7

    .line 112
    .local v7, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v8

    mul-long/2addr v10, v0

    invoke-virtual {v8, v7, v10, v11}, Lcom/sonyericsson/conversations/model/ModelCache;->modifySlideshowTag(Landroid/net/Uri;J)V

    .line 114
    iget-object v8, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v8, v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 117
    iget-object v8, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v9, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8, v9}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 119
    iget-object v8, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    iget v10, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mSubscriptionId:I

    invoke-static {v8, v9, v10}, Lcom/sonyericsson/conversations/model/MessageUtil;->updateSubscriptionId(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 121
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mIsPrepared:Z

    .line 124
    .end local v0    # "date":J
    .end local v2    # "messageId":J
    .end local v4    # "p":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    .end local v5    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v6    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    return-object v8
.end method

.method public sendMessage(J)Z
    .locals 3
    .param p1, "token"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sonymobile/conversations/transaction/MmsMessageSender;->sendSendReqPdu(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method protected sendSendReqPdu(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "token"    # J

    .prologue
    .line 134
    sget-boolean v0, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sending MMS #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->v(Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SEND_TRANSACTION"

    .line 139
    const-class v2, Lcom/sonymobile/conversations/transaction/TransactionService;

    .line 138
    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    return-void
.end method
