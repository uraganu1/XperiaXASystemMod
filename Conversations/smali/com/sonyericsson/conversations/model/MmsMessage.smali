.class public Lcom/sonyericsson/conversations/model/MmsMessage;
.super Lcom/sonyericsson/conversations/model/Message;
.source "MmsMessage.java"

# interfaces
.implements Lcom/sonyericsson/conversations/model/XmsMessage;


# instance fields
.field private mBriefSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mDownloadMessageSize:I

.field private mMessageType:I

.field mParticipantsInfo:Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

.field private mRetrievalStatus:I

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mSticker:Lcom/android/mms/model/ImageModel;

.field private mSubject:Ljava/lang/String;

.field private mSubjectIsFixed:Z

.field private mSubscriptionId:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubjectIsFixed:Z

    .line 103
    iput v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mRetrievalStatus:I

    .line 245
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->type:I

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubscriptionId:I

    .line 243
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "projection"    # Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)V

    .line 93
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    .line 95
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubjectIsFixed:Z

    .line 103
    const/4 v7, 0x0

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mRetrievalStatus:I

    .line 148
    const/4 v7, 0x1

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->type:I

    .line 149
    const-string/jumbo v7, "date"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iput-wide v8, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->date:J

    .line 151
    const-string/jumbo v7, "msg_box"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 198
    const/4 v7, -0x1

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    .line 202
    :goto_0
    const-string/jumbo v7, "m_type"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 204
    const/4 v7, 0x2

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mRetrievalStatus:I

    .line 216
    :goto_1
    const-string/jumbo v7, "sub"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 217
    const-string/jumbo v8, "sub_cs"

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 216
    invoke-static {v7, v8}, Lcom/sonyericsson/conversations/util/TextUtil;->decodeRawString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    .line 219
    iget-object v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    invoke-static {v7}, Lcom/sonyericsson/conversations/model/MmsMessage;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 220
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubjectIsFixed:Z

    .line 225
    :goto_2
    const-string/jumbo v7, "sub_id"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubscriptionId:I

    .line 228
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v7

    iget v8, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubscriptionId:I

    invoke-virtual {v7, v8}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isValidSubscriptionId(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 229
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubscriptionId:I

    .line 235
    :cond_0
    const-string/jumbo v7, "d_rpt"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 236
    .local v6, "status":I
    iget v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->deliveryStatus:I

    if-nez v7, :cond_1

    const/16 v7, 0x80

    if-ne v6, v7, :cond_1

    .line 237
    const/4 v7, 0x1

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->deliveryStatus:I

    .line 240
    :cond_1
    const-string/jumbo v7, "pri"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sonyericsson/conversations/model/MmsMessage;->setRawPriority(I)V

    .line 145
    return-void

    .line 153
    .end local v6    # "status":I
    :pswitch_0
    const/4 v7, 0x0

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto/16 :goto_0

    .line 156
    :pswitch_1
    const/4 v7, 0x1

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto/16 :goto_0

    .line 161
    :pswitch_2
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getNetworkApi()Lcom/sonymobile/network/NetworkApi;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonymobile/network/NetworkApi;->isNetworkConnected()Z

    move-result v3

    .line 163
    .local v3, "isDataConnected":Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "airplane_mode_on"

    .line 162
    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    .line 163
    const/4 v8, 0x1

    .line 162
    if-ne v7, v8, :cond_2

    const/4 v0, 0x1

    .line 164
    .local v0, "airplaneModeOn":Z
    :goto_3
    sget-object v7, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->COMMON:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    if-ne p3, v7, :cond_5

    .line 166
    const-string/jumbo v7, "err_type"

    .line 165
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 167
    .local v2, "error":I
    const/16 v7, 0xa

    if-lt v2, v7, :cond_3

    .line 168
    const/4 v7, 0x4

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 187
    .end local v0    # "airplaneModeOn":Z
    .end local v2    # "error":I
    .end local v3    # "isDataConnected":Z
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v7, 0x5

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto/16 :goto_0

    .line 162
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v3    # "isDataConnected":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "airplaneModeOn":Z
    goto :goto_3

    .line 169
    .restart local v2    # "error":I
    :cond_3
    const/4 v7, 0x1

    if-ge v2, v7, :cond_4

    if-nez v0, :cond_4

    .line 170
    if-eqz v3, :cond_4

    .line 173
    const/4 v7, 0x2

    :try_start_1
    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto/16 :goto_0

    .line 171
    :cond_4
    const/4 v7, 0x5

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto/16 :goto_0

    .line 175
    .end local v2    # "error":I
    :cond_5
    sget-object v7, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->MMS:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    if-ne p3, v7, :cond_8

    .line 177
    const-string/jumbo v7, "resp_st"

    .line 176
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 178
    .local v4, "responseStatus":I
    if-eqz v4, :cond_6

    .line 179
    const/16 v7, 0x80

    .line 178
    if-eq v4, v7, :cond_6

    .line 180
    const/4 v7, 0x4

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto/16 :goto_0

    .line 182
    :cond_6
    if-nez v0, :cond_7

    if-eqz v3, :cond_7

    const/4 v7, 0x2

    :goto_4
    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x5

    goto :goto_4

    .line 185
    .end local v4    # "responseStatus":I
    :cond_8
    const/4 v7, -0x1

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 195
    .end local v0    # "airplaneModeOn":Z
    .end local v3    # "isDataConnected":Z
    :pswitch_3
    const/4 v7, 0x3

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    goto/16 :goto_0

    .line 206
    :cond_9
    const-string/jumbo v7, "m_size"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 207
    .local v5, "sizeColIndex":I
    if-ltz v5, :cond_a

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :goto_5
    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mDownloadMessageSize:I

    .line 208
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v7

    .line 209
    const/16 v8, 0x81

    .line 208
    if-ne v7, v8, :cond_b

    .line 210
    const/4 v7, 0x1

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mRetrievalStatus:I

    goto/16 :goto_1

    .line 207
    :cond_a
    const/4 v7, -0x1

    goto :goto_5

    .line 212
    :cond_b
    const/4 v7, 0x0

    iput v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mRetrievalStatus:I

    goto/16 :goto_1

    .line 222
    .end local v5    # "sizeColIndex":I
    :cond_c
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubjectIsFixed:Z

    goto/16 :goto_2

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createDraft(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)Lcom/sonyericsson/conversations/model/MmsMessage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 332
    new-instance v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/MmsMessage;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    const/4 v1, 0x1

    iput v1, v0, Lcom/sonyericsson/conversations/model/MmsMessage;->box:I

    .line 335
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->setSlideshow(Lcom/android/mms/model/SlideshowModel;)V

    .line 337
    return-object v0
.end method

.method public static findThreadIdAndMessageId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)[J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 761
    new-array v9, v3, [J

    .local v9, "ret":[J
    fill-array-data v9, :array_0

    .line 762
    const-string/jumbo v8, ""

    .line 764
    .local v8, "messageId":Ljava/lang/String;
    const/16 v0, 0x86

    if-ne p2, v0, :cond_3

    .line 765
    instance-of v0, p1, Lcom/google/android/mms/pdu/DeliveryInd;

    if-eqz v0, :cond_0

    .line 766
    new-instance v8, Ljava/lang/String;

    .end local v8    # "messageId":Ljava/lang/String;
    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 774
    .restart local v8    # "messageId":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "m_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const-string/jumbo v1, " AND "

    .line 774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const-string/jumbo v1, "m_type"

    .line 774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const/16 v1, 0x3d

    .line 774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const/16 v1, 0x80

    .line 774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 777
    .local v4, "sb":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 778
    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v0, "thread_id"

    aput-object v0, v3, v6

    const-string/jumbo v0, "_id"

    aput-object v0, v3, v10

    move-object v0, p0

    move-object v6, v5

    .line 777
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 779
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 781
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, v9, v2

    .line 783
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x1

    aput-wide v0, v9, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 790
    :cond_2
    return-object v9

    .line 769
    .end local v4    # "sb":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_3
    instance-of v0, p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    if-eqz v0, :cond_0

    .line 770
    new-instance v8, Ljava/lang/String;

    .end local v8    # "messageId":Ljava/lang/String;
    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .restart local v8    # "messageId":Ljava/lang/String;
    goto :goto_0

    .line 785
    .restart local v4    # "sb":Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 786
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 785
    throw v0

    .line 761
    :array_0
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public static fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/MmsMessage;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "projectionType"    # Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    .prologue
    .line 342
    new-instance v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/conversations/model/MmsMessage;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)V

    return-object v0
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 346
    const/4 v7, 0x0

    .line 347
    .local v7, "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/conversations/model/MessageProjection;->getMmsProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 350
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 352
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->MMS:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    invoke-static {p0, v6, v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/MmsMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 356
    .end local v7    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_1
    return-object v7

    .line 355
    .restart local v7    # "message":Lcom/sonyericsson/conversations/model/MmsMessage;
    :catchall_0
    move-exception v0

    .line 356
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    throw v0
.end method

.method public static generateSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "subject"    # Ljava/lang/String;

    .prologue
    .line 957
    const-string/jumbo v0, " \t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasNonForwardableDrmContent(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 5
    .param p0, "ssm"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, "invalidContent":Z
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 440
    .local v2, "slideShowIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/mms/model/SlideModel;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 441
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 442
    .local v3, "sm":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 443
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getAttachment()Lcom/sonyericsson/conversations/model/AttachmentModel;

    move-result-object v0

    .line 444
    .local v0, "am":Lcom/sonyericsson/conversations/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/AttachmentModel;->isAllowedToForward()Z

    move-result v4

    if-nez v4, :cond_0

    .line 445
    const/4 v1, 0x1

    .line 451
    .end local v0    # "am":Lcom/sonyericsson/conversations/model/AttachmentModel;
    .end local v3    # "sm":Lcom/android/mms/model/SlideModel;
    :cond_1
    return v1
.end method

.method public static isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rc"    # Lcom/google/android/mms/pdu/RetrieveConf;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 819
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v9

    .line 820
    .local v9, "rawMessageId":[B
    if-eqz v9, :cond_1

    .line 821
    new-instance v8, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 822
    .local v8, "messageId":Ljava/lang/String;
    const-string/jumbo v4, "(m_id = ? AND m_type = ?)"

    .line 824
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/String;

    aput-object v8, v5, v10

    .line 825
    const/16 v0, 0x84

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    .line 828
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 829
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v3, v10

    const-string/jumbo v0, "sub"

    aput-object v0, v3, v11

    const-string/jumbo v0, "sub_cs"

    aput-object v0, v3, v12

    move-object v0, p0

    .line 827
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 832
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 834
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 837
    invoke-static {v7, p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDuplicateMessageExtra(Landroid/database/Cursor;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 840
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 837
    return v0

    .line 840
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 845
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "messageId":Ljava/lang/String;
    :cond_1
    return v10

    .line 839
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "messageId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 840
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 839
    throw v0
.end method

.method private static isDuplicateMessageExtra(Landroid/database/Cursor;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 10
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "rc"    # Lcom/google/android/mms/pdu/RetrieveConf;

    .prologue
    const/4 v9, 0x1

    .line 851
    const/4 v3, 0x0

    .line 852
    .local v3, "encodedSubjectStored":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v6, 0x0

    .line 856
    .local v6, "subjectReceived":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 857
    .local v2, "encodedSubjectReceived":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    .line 858
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 861
    .end local v6    # "subjectReceived":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .end local v3    # "encodedSubjectStored":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_6

    .line 862
    const-string/jumbo v8, "sub"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 863
    .local v5, "subjectIdx":I
    const-string/jumbo v8, "sub_cs"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 864
    .local v1, "charsetIdx":I
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 865
    .local v4, "subject":Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 866
    .local v0, "charset":I
    if-eqz v4, :cond_1

    .line 867
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v4}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v3, v0, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 870
    :cond_1
    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 872
    return v9

    .line 873
    :cond_2
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 874
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    .line 875
    .local v7, "subjectStored":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 878
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 880
    return v9

    .line 877
    :cond_4
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    return v8

    .line 861
    .end local v7    # "subjectStored":Ljava/lang/String;
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 885
    .end local v0    # "charset":I
    .end local v1    # "charsetIdx":I
    .end local v4    # "subject":Ljava/lang/String;
    .end local v5    # "subjectIdx":I
    :cond_6
    const/4 v8, 0x0

    return v8
.end method

.method public static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nInd"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 794
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v9

    .line 795
    .local v9, "rawLocation":[B
    if-eqz v9, :cond_1

    .line 796
    new-instance v8, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 797
    .local v8, "location":Ljava/lang/String;
    const-string/jumbo v4, "ct_l = ?"

    .line 798
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    aput-object v8, v5, v10

    .line 801
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 802
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v11, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v3, v10

    move-object v0, p0

    .line 800
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 804
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 806
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 811
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 808
    return v11

    .line 811
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 815
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "location":Ljava/lang/String;
    :cond_1
    return v10

    .line 810
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "location":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 811
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 810
    throw v0
.end method

.method static isForwardable(Lcom/sonyericsson/conversations/model/MmsMessage;)Z
    .locals 5
    .param p0, "mms"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    .line 455
    const/4 v1, 0x1

    .line 458
    .local v1, "forwardable":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 459
    .local v2, "ssm":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v4

    if-gt v3, v4, :cond_1

    const/4 v1, 0x1

    .line 460
    :goto_0
    if-eqz v1, :cond_0

    .line 461
    invoke-static {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->hasNonForwardableDrmContent(Lcom/android/mms/model/SlideshowModel;)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    .line 468
    .end local v2    # "ssm":Lcom/android/mms/model/SlideshowModel;
    :cond_0
    :goto_1
    return v1

    .line 459
    .restart local v2    # "ssm":Lcom/android/mms/model/SlideshowModel;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 461
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 464
    .end local v2    # "ssm":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isUserDefinedSubject(Ljava/lang/String;)Z
    .locals 2
    .param p0, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 953
    if-eqz p0, :cond_0

    const-string/jumbo v1, " \t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentLocation"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 922
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 923
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 921
    return-void
.end method

.method public static updateDateValue(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "date"    # J

    .prologue
    const/4 v4, 0x0

    .line 929
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 930
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 931
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 928
    return-void
.end method

.method public static updateDeliveryStatus(Landroid/content/Context;IJ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I
    .param p2, "messageId"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 904
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 909
    .local v3, "cv":Landroid/content/ContentValues;
    const/16 v0, 0x81

    if-ne p1, v0, :cond_0

    .line 910
    const-string/jumbo v0, "delivery_status"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 917
    invoke-static {p2, p3}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMessage(J)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v5, v4

    .line 916
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 903
    return-void

    .line 912
    :cond_0
    const-string/jumbo v0, "delivery_status"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 913
    const-string/jumbo v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static updateReadStatus(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 896
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 897
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 895
    return-void
.end method

.method public static updateResponseStatusAndMessageId(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "respStatus"    # I
    .param p3, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 937
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 938
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "resp_st"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    if-eqz p3, :cond_0

    .line 940
    const-string/jumbo v0, "m_id"

    invoke-virtual {v3, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 936
    return-void
.end method

.method public static updateThreadId(Landroid/content/Context;JLandroid/net/Uri;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 890
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 891
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 892
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 888
    return-void
.end method


# virtual methods
.method public fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mParticipantsInfo:Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    if-nez v0, :cond_0

    .line 476
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/model/ModelCache;->getParticipantInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mParticipantsInfo:Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mParticipantsInfo:Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    return-object v0
.end method

.method public getAllText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1064
    .local v0, "body":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    .line 1065
    .local v4, "slideShowModel":Lcom/android/mms/model/SlideshowModel;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "slideModel$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1066
    .local v2, "slideModel":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1067
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1070
    .end local v2    # "slideModel":Lcom/android/mms/model/SlideModel;
    .end local v3    # "slideModel$iterator":Ljava/util/Iterator;
    .end local v4    # "slideShowModel":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v1

    .line 1071
    .local v1, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v5, "Failed to get slideShowModel"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 1073
    .end local v1    # "e":Lcom/google/android/mms/MmsException;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getAttachmentType(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/AttachmentSummary;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 962
    const/4 v8, 0x0

    .line 963
    .local v8, "image":I
    const/4 v4, 0x0

    .line 964
    .local v4, "audio":I
    const/16 v17, 0x0

    .line 965
    .local v17, "video":I
    const/4 v9, 0x0

    .line 966
    .local v9, "location":I
    const/4 v5, 0x0

    .line 967
    .local v5, "contact":I
    const/4 v10, 0x0

    .line 968
    .local v10, "otherAttachment":I
    const/16 v16, 0x0

    .line 969
    .local v16, "sticker":I
    const/4 v7, 0x0

    .line 970
    .local v7, "event":I
    new-instance v2, Lcom/sonyericsson/conversations/model/AttachmentSummary;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/model/AttachmentSummary;-><init>()V

    .line 973
    .local v2, "attachmentSummary":Lcom/sonyericsson/conversations/model/AttachmentSummary;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v15

    .line 974
    .local v15, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "slide$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/model/SlideModel;

    .line 975
    .local v13, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->getSticker()Lcom/android/mms/model/ImageModel;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 976
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 977
    :cond_1
    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->hasImageExcludingLocationImage()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 978
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 979
    :cond_2
    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 980
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 981
    :cond_3
    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 982
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 983
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/mms/model/SlideModel;->hasLocationVCard(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->hasLocationImage()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 985
    :cond_5
    const/4 v9, 0x1

    goto :goto_0

    .line 986
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/mms/model/SlideModel;->hasContactVCard(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 987
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 988
    :cond_7
    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->hasCalendarEvent()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 989
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 990
    :cond_8
    invoke-virtual {v13}, Lcom/android/mms/model/SlideModel;->hasAttachment()Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-eqz v18, :cond_0

    .line 991
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 994
    .end local v13    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v14    # "slide$iterator":Ljava/util/Iterator;
    .end local v15    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v6

    .line 995
    .local v6, "e":Lcom/google/android/mms/MmsException;
    return-object v2

    .line 997
    .end local v6    # "e":Lcom/google/android/mms/MmsException;
    .restart local v14    # "slide$iterator":Ljava/util/Iterator;
    .restart local v15    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_9
    const/4 v3, 0x0

    .line 998
    .local v3, "attachmentTypes":I
    if-lez v8, :cond_a

    .line 999
    const/4 v3, 0x1

    .line 1001
    :cond_a
    if-lez v17, :cond_b

    .line 1002
    add-int/lit8 v3, v3, 0x1

    .line 1004
    :cond_b
    if-lez v4, :cond_c

    .line 1005
    add-int/lit8 v3, v3, 0x1

    .line 1007
    :cond_c
    if-lez v9, :cond_d

    .line 1008
    add-int/lit8 v3, v3, 0x1

    .line 1010
    :cond_d
    if-lez v5, :cond_e

    .line 1011
    add-int/lit8 v3, v3, 0x1

    .line 1013
    :cond_e
    if-lez v16, :cond_f

    .line 1014
    add-int/lit8 v3, v3, 0x1

    .line 1016
    :cond_f
    if-lez v7, :cond_10

    .line 1017
    add-int/lit8 v3, v3, 0x1

    .line 1020
    :cond_10
    if-nez v10, :cond_11

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v3, v0, :cond_15

    .line 1021
    :cond_11
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    .line 1039
    :cond_12
    :goto_1
    add-int v18, v16, v8

    add-int v18, v18, v4

    add-int v18, v18, v17

    add-int v18, v18, v9

    add-int v18, v18, v5

    add-int v18, v18, v10

    add-int v18, v18, v7

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setNumberOfAttachments(I)V

    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getAllText()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachedBodyText(Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v11

    .line 1043
    .local v11, "participantInfo":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1044
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setIsGroupThread(Z)V

    .line 1046
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getDirection()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 1047
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v12

    .line 1048
    .local v12, "sender":Lcom/sonyericsson/conversations/model/Participant;
    if-eqz v12, :cond_14

    .line 1049
    invoke-virtual {v12}, Lcom/sonyericsson/conversations/model/Participant;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setSenderString(Ljava/lang/String;)V

    .line 1053
    .end local v12    # "sender":Lcom/sonyericsson/conversations/model/Participant;
    :cond_14
    return-object v2

    .line 1023
    .end local v11    # "participantInfo":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    :cond_15
    if-eqz v8, :cond_16

    .line 1024
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto :goto_1

    .line 1025
    :cond_16
    if-eqz v4, :cond_17

    .line 1026
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto :goto_1

    .line 1027
    :cond_17
    if-eqz v17, :cond_18

    .line 1028
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto :goto_1

    .line 1029
    :cond_18
    if-eqz v9, :cond_19

    .line 1030
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto :goto_1

    .line 1031
    :cond_19
    if-eqz v5, :cond_1a

    .line 1032
    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto :goto_1

    .line 1033
    :cond_1a
    if-eqz v16, :cond_1b

    .line 1034
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto/16 :goto_1

    .line 1035
    :cond_1b
    if-eqz v7, :cond_12

    .line 1036
    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;->setAttachmentType(I)V

    goto/16 :goto_1
.end method

.method public getBriefSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mBriefSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 262
    .local v0, "messageUri":Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->date:J

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/sonyericsson/conversations/model/ModelCache;->getBriefSlideshow(Landroid/content/Context;Landroid/net/Uri;J)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mBriefSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 265
    .end local v0    # "messageUri":Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mBriefSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v1
.end method

.method public getDetails()Ljava/lang/String;
    .locals 15

    .prologue
    .line 547
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .local v13, "stringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v8, -0x1

    .line 552
    .local v8, "expire":J
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "exp"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 553
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 554
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 553
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 556
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 559
    const-string/jumbo v0, "exp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long v8, v0, v4

    .line 561
    :goto_0
    if-eqz v6, :cond_0

    .line 562
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v11

    .line 569
    .local v11, "info":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string/jumbo v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0071

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    const-string/jumbo v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getSender()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v0

    .line 579
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/Participant;->createAddressStringForMessageDetails(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v10

    .line 581
    .local v10, "from":Ljava/lang/String;
    const-string/jumbo v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .end local v10    # "from":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isSentMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 595
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v7

    .line 598
    .local v7, "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isSentMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    const-string/jumbo v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string/jumbo v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->date:J

    const/4 v1, 0x1

    invoke-virtual {v7, v4, v5, v1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 607
    const-string/jumbo v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string/jumbo v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->date:J

    const/4 v1, 0x1

    invoke-virtual {v7, v4, v5, v1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_4
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    const/16 v1, 0x82

    if-ne v1, v0, :cond_5

    .line 615
    const-string/jumbo v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_5

    .line 619
    const-string/jumbo v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v7, v8, v9, v1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_5
    const-string/jumbo v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    const-string/jumbo v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    const/16 v1, 0x84

    if-eq v1, v0, :cond_6

    .line 631
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    const/16 v1, 0x80

    if-ne v1, v0, :cond_7

    .line 632
    :cond_6
    const-string/jumbo v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    packed-switch v0, :pswitch_data_0

    .line 651
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 655
    .local v12, "priority":Ljava/lang/String;
    :goto_2
    const-string/jumbo v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .end local v12    # "priority":Ljava/lang/String;
    :cond_7
    const-string/jumbo v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string/jumbo v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSizeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 666
    const-string/jumbo v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isSentMessage()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->hasMultipleRecipients()Z

    move-result v0

    :goto_3
    if-nez v0, :cond_8

    .line 672
    const-string/jumbo v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    :cond_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 557
    .end local v7    # "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    .end local v11    # "info":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    :cond_9
    const-string/jumbo v0, "invalid cursor"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    .restart local v11    # "info":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    :cond_a
    const-string/jumbo v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getToRecipients()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/Participant;->createAddressStringForMessageDetails(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .line 592
    .local v14, "to":Ljava/lang/String;
    const-string/jumbo v0, " "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 639
    .end local v14    # "to":Ljava/lang/String;
    .restart local v7    # "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "priority":Ljava/lang/String;
    goto/16 :goto_2

    .line 644
    .end local v12    # "priority":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "priority":Ljava/lang/String;
    goto/16 :goto_2

    .line 669
    .end local v12    # "priority":Ljava/lang/String;
    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 295
    return-object v1

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mParticipantsInfo:Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    return-object v0
.end method

.method public getRawPriority()I
    .locals 3

    .prologue
    const/16 v2, 0x81

    .line 681
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    if-nez v0, :cond_0

    .line 682
    const/16 v0, 0x82

    return v0

    .line 683
    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 684
    return v2

    .line 685
    :cond_1
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 686
    const/16 v0, 0x80

    return v0

    .line 688
    :cond_2
    return v2
.end method

.method public getRetrievalStatus()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mRetrievalStatus:I

    return v0
.end method

.method public getSize()I
    .locals 6

    .prologue
    .line 495
    const/4 v1, -0x1

    .line 497
    .local v1, "size":I
    iget v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    const/16 v5, 0x82

    if-ne v5, v4, :cond_0

    .line 498
    iget v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mDownloadMessageSize:I

    return v4

    .line 500
    :cond_0
    const/4 v2, 0x0

    .line 503
    .local v2, "slideshowModel":Lcom/android/mms/model/SlideshowModel;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 508
    .end local v2    # "slideshowModel":Lcom/android/mms/model/SlideshowModel;
    :goto_0
    if-eqz v2, :cond_1

    .line 509
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v1

    .line 511
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "subject":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 513
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 518
    .end local v3    # "subject":Ljava/lang/String;
    :cond_1
    return v1

    .line 504
    .restart local v2    # "slideshowModel":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v4, "get the mms size failed"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSizeString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSize()I

    move-result v1

    .line 533
    .local v1, "size":I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 534
    const-string/jumbo v2, "can not get the mms size"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 538
    :cond_0
    add-int/lit8 v2, v1, -0x1

    div-int/lit16 v2, v2, 0x400

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 540
    const v4, 0x7f0b0211

    .line 539
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v2, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/MmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 272
    .local v1, "messageUri":Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->date:J

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/sonyericsson/conversations/model/ModelCache;->getSlideshow(Landroid/content/Context;Landroid/net/Uri;J)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->setSlideshow(Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v1    # "messageUri":Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v2

    .line 273
    .restart local v1    # "messageUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubscriptionId:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 282
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mUri:Landroid/net/Uri;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshDeliveryStatusField(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1079
    const/4 v6, 0x0

    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1080
    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mId:J

    invoke-static {v2, v3}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMessage(J)Landroid/net/Uri;

    move-result-object v1

    .line 1081
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "delivery_status"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1079
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1082
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const-string/jumbo v0, "delivery_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->deliveryStatus:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1085
    :cond_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v7, :cond_5

    throw v7

    :catch_0
    move-exception v7

    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v1, :cond_4

    throw v1

    :catch_2
    move-exception v2

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    if-eq v1, v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v0

    .line 1078
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_5
    return-void

    .line 1085
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method

.method public setRawPriority(I)V
    .locals 2
    .param p1, "priority"    # I

    .prologue
    const/4 v1, 0x1

    .line 694
    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    .line 695
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    .line 693
    :goto_0
    return-void

    .line 696
    :cond_0
    const/16 v0, 0x81

    if-ne p1, v0, :cond_1

    .line 697
    iput v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    goto :goto_0

    .line 698
    :cond_1
    const/16 v0, 0x80

    if-ne p1, v0, :cond_2

    .line 699
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    goto :goto_0

    .line 701
    :cond_2
    iput v1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mPriority:I

    goto :goto_0
.end method

.method public setRetrievalStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 387
    iput p1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mRetrievalStatus:I

    .line 386
    return-void
.end method

.method public setSlideshow(Lcom/android/mms/model/SlideshowModel;)V
    .locals 5
    .param p1, "slideshow"    # Lcom/android/mms/model/SlideshowModel;

    .prologue
    const/4 v4, 0x0

    .line 109
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 110
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v3, :cond_0

    .line 111
    iput-object v4, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSticker:Lcom/android/mms/model/ImageModel;

    .line 112
    return-void

    .line 114
    :cond_0
    const/4 v2, 0x0

    .line 115
    .local v2, "sticker":Lcom/android/mms/model/ImageModel;
    iget-object v3, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "sticker":Lcom/android/mms/model/ImageModel;
    .local v1, "slide$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 116
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSticker()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    .line 120
    .local v2, "sticker":Lcom/android/mms/model/ImageModel;
    if-eqz v2, :cond_1

    .line 124
    .end local v0    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v2    # "sticker":Lcom/android/mms/model/ImageModel;
    :cond_2
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSticker:Lcom/android/mms/model/ImageModel;

    .line 108
    return-void
.end method

.method public setSubject(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "isFixed"    # Z

    .prologue
    .line 398
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    .line 399
    iput-boolean p2, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubjectIsFixed:Z

    .line 397
    return-void
.end method

.method public setSubscriptionId(I)V
    .locals 0
    .param p1, "subscriptionId"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubscriptionId:I

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/MmsMessage;->mSubject:Ljava/lang/String;

    return-object v0
.end method
