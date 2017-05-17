.class public Lcom/sonyericsson/conversations/model/SmsMessage;
.super Lcom/sonyericsson/conversations/model/Message;
.source "SmsMessage.java"

# interfaces
.implements Lcom/sonyericsson/conversations/model/XmsMessage;


# static fields
.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String;


# instance fields
.field public bodyText:Ljava/lang/String;

.field private mAddress:Ljava/lang/String;

.field private mOriginPriority:I

.field private mServiceCenter:Ljava/lang/String;

.field private mSubscriptionId:I

.field private mThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "reply_path_present"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "service_center"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 59
    sput-object v0, Lcom/sonyericsson/conversations/model/SmsMessage;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;)V

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mThreadId:J

    .line 66
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mAddress:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mServiceCenter:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mOriginPriority:I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mSubscriptionId:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->type:I

    .line 111
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "projectionType"    # Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/model/Message;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)V

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mThreadId:J

    .line 66
    iput-object v5, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mAddress:Ljava/lang/String;

    .line 68
    iput-object v5, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mServiceCenter:Ljava/lang/String;

    .line 70
    iput v4, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mOriginPriority:I

    .line 74
    iput v2, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mSubscriptionId:I

    .line 79
    iput v3, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->type:I

    .line 80
    const-string/jumbo v0, "date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->date:J

    .line 82
    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    iput v2, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    .line 106
    :goto_0
    const-string/jumbo v0, "body"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "sub_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mSubscriptionId:I

    .line 108
    const-string/jumbo v0, "semc_message_priority"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->setRawPriority(I)V

    .line 76
    return-void

    .line 84
    :pswitch_0
    iput v3, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 87
    :pswitch_1
    iput v4, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 90
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 93
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 96
    :pswitch_4
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 99
    :pswitch_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static addExtraData(Lcom/sonyericsson/conversations/model/SmsMessage;Landroid/database/Cursor;)V
    .locals 2
    .param p0, "message"    # Lcom/sonyericsson/conversations/model/SmsMessage;
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 221
    const-string/jumbo v0, "thread_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->setThreadId(J)V

    .line 222
    const-string/jumbo v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->setAddress(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v0, "service_center"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->setServiceCenter(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static addMessage(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;JZJJII)Landroid/net/Uri;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "date"    # J
    .param p6, "deliveryReport"    # Z
    .param p7, "threadId"    # J
    .param p9, "parentId"    # J
    .param p11, "priority"    # I
    .param p12, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 735
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 737
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "address"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string/jumbo v2, "date"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 739
    const-string/jumbo v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    const-string/jumbo v2, "body"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string/jumbo v2, "thread_id"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 742
    const-string/jumbo v2, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    const-string/jumbo v2, "semc_message_priority"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    const-string/jumbo v2, "sub_id"

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    if-eqz p6, :cond_0

    .line 748
    const-string/jumbo v2, "status"

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    const-string/jumbo v2, "delivery_status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p9, v2

    if-eqz v2, :cond_1

    .line 753
    const-string/jumbo v2, "parent_id"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 756
    :cond_1
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 757
    .local v0, "messageUri":Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 758
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string/jumbo v3, "returned Uri is null - could not add message"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 760
    :cond_2
    return-object v0
.end method

.method public static createDraft(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/SmsMessage;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    new-instance v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/model/SmsMessage;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "message":Lcom/sonyericsson/conversations/model/SmsMessage;
    const/4 v1, 0x1

    iput v1, v0, Lcom/sonyericsson/conversations/model/SmsMessage;->box:I

    .line 149
    return-object v0
.end method

.method public static extractContentValues(Landroid/content/Context;Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    const/4 v7, 0x0

    .line 612
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 614
    .local v6, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isCphsMwiMessage()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 615
    const-string/jumbo v8, "address"

    const v9, 0x7f0b013f

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->somcSctsColumnExists(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 625
    const-string/jumbo v8, "somc_scts"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 631
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUseSCTimestamp()Z

    move-result v8

    if-nez v8, :cond_5

    .line 632
    const-string/jumbo v8, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 640
    :goto_1
    const-string/jumbo v8, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string/jumbo v8, "read"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 643
    const-string/jumbo v8, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_1
    const-string/jumbo v8, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v7, 0x1

    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string/jumbo v7, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 649
    .local v0, "baseMessage":Lcom/android/internal/telephony/SmsMessageBase;
    instance-of v7, v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v7, :cond_3

    .line 650
    invoke-static {v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getPriorityOfCdmaSmsMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v2

    .line 651
    .local v2, "priority":I
    const-string/jumbo v7, "semc_message_priority"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    .end local v2    # "priority":I
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getSubId()I

    move-result v3

    .line 656
    .local v3, "subId":I
    const-string/jumbo v7, "sub_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    return-object v6

    .line 617
    .end local v0    # "baseMessage":Lcom/android/internal/telephony/SmsMessageBase;
    .end local v3    # "subId":I
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "originatingAddress":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/conversations/util/AddressUtil;->formatSmsOriginalAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    const-string/jumbo v8, "address"

    invoke-virtual {v6, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 634
    .end local v1    # "originatingAddress":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    .line 635
    .local v4, "timestamp":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_6

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 638
    :cond_6
    const-string/jumbo v8, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1
.end method

.method public static fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/SmsMessage;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "projectionType"    # Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    .prologue
    .line 154
    new-instance v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/conversations/model/SmsMessage;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)V

    return-object v0
.end method

.method public static fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/SmsMessage;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 158
    const/4 v7, 0x0

    .line 159
    .local v7, "message":Lcom/sonyericsson/conversations/model/SmsMessage;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/conversations/model/MessageProjection;->getSmsProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 162
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 164
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->SMS:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    invoke-static {p0, v6, v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/SmsMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 168
    .end local v7    # "message":Lcom/sonyericsson/conversations/model/SmsMessage;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_1
    return-object v7

    .line 167
    .restart local v7    # "message":Lcom/sonyericsson/conversations/model/SmsMessage;
    :catchall_0
    move-exception v0

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 167
    throw v0
.end method

.method public static fromUriEx(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/SmsMessage;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 203
    const/4 v7, 0x0

    .line 204
    .local v7, "message":Lcom/sonyericsson/conversations/model/SmsMessage;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/conversations/model/MessageProjection;->SMS_PROJECTION_EX:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 207
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 209
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;->SMS:Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;

    invoke-static {p0, v6, v0}, Lcom/sonyericsson/conversations/model/SmsMessage;->fromCursor(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection$MessageProjectionType;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v7

    .line 211
    .local v7, "message":Lcom/sonyericsson/conversations/model/SmsMessage;
    invoke-static {v7, v6}, Lcom/sonyericsson/conversations/model/SmsMessage;->addExtraData(Lcom/sonyericsson/conversations/model/SmsMessage;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v7    # "message":Lcom/sonyericsson/conversations/model/SmsMessage;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_1
    return-object v7

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 213
    throw v0
.end method

.method public static getBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 3
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .local v0, "body":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 723
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFirstQueuedMessage(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "subscriptionId"    # I

    .prologue
    .line 396
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v4, "queued"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 398
    .local v2, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 399
    const-string/jumbo v0, "_id"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 401
    .local v3, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 402
    .local v8, "idIndex":I
    const-string/jumbo v11, "sub_id=?"

    .line 403
    .local v11, "queryString":Ljava/lang/String;
    const-string/jumbo v0, "date"

    const-string/jumbo v4, " ASC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 406
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v5, v4

    .line 408
    .local v5, "queryArgs":[Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v7, 0x0

    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v4, "sub_id=?"

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 410
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 414
    .local v9, "msgId":I
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v14, v9

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 415
    .local v10, "msgUri":Landroid/net/Uri;
    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    if-eqz v12, :cond_7

    throw v12

    .line 411
    .end local v9    # "msgId":I
    .end local v10    # "msgUri":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x0

    .line 415
    if-eqz v7, :cond_2

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    throw v12

    :catch_0
    move-exception v12

    goto :goto_1

    .line 411
    :cond_3
    return-object v0

    .line 415
    .restart local v9    # "msgId":I
    .restart local v10    # "msgUri":Landroid/net/Uri;
    :catch_1
    move-exception v12

    goto :goto_0

    .end local v7    # "c":Landroid/database/Cursor;
    .end local v9    # "msgId":I
    .end local v10    # "msgUri":Landroid/net/Uri;
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v16, v4

    move-object v4, v0

    move-object/from16 v0, v16

    :goto_2
    if-eqz v7, :cond_4

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    if-eqz v4, :cond_6

    throw v4

    :catch_3
    move-exception v12

    if-nez v4, :cond_5

    move-object v4, v12

    goto :goto_3

    :cond_5
    if-eq v4, v12, :cond_4

    invoke-virtual {v4, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    throw v0

    .line 416
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v9    # "msgId":I
    .restart local v10    # "msgUri":Landroid/net/Uri;
    :cond_7
    return-object v10

    .line 415
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v9    # "msgId":I
    .end local v10    # "msgUri":Landroid/net/Uri;
    :catchall_1
    move-exception v0

    move-object v4, v12

    goto :goto_2
.end method

.method public static getMessageIdByUri(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 434
    const/4 v8, -0x1

    .line 435
    .local v8, "messageId":I
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v3, v1

    .line 436
    .local v3, "ID_PROJECTION":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 439
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 443
    :cond_0
    if-eqz v7, :cond_1

    .line 444
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_1
    return v8

    .line 442
    :catchall_0
    move-exception v0

    .line 443
    if-eqz v7, :cond_2

    .line 444
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_2
    throw v0
.end method

.method public static getOutgoingServiceCenter(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 366
    const/4 v7, 0x0

    .line 369
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 370
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/conversations/model/SmsMessage;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "thread_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "date DESC"

    const/4 v5, 0x0

    move-object v0, p0

    .line 369
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 373
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v10, v0, :cond_3

    const/4 v8, 0x1

    .line 378
    .local v8, "replyPathPresent":Z
    :goto_0
    if-eqz v8, :cond_4

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 380
    :goto_1
    if-eqz v7, :cond_0

    .line 381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_0
    return-object v0

    .line 380
    .end local v8    # "replyPathPresent":Z
    :cond_1
    if-eqz v7, :cond_2

    .line 381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_2
    return-object v9

    .line 377
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "replyPathPresent":Z
    goto :goto_0

    :cond_4
    move-object v0, v9

    .line 378
    goto :goto_1

    .line 379
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "replyPathPresent":Z
    :catchall_0
    move-exception v0

    .line 380
    if-eqz v7, :cond_5

    .line 381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_5
    throw v0
.end method

.method private static getPriorityOfCdmaSmsMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 8
    .param p0, "baseSmsMessage"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    move-object v5, p0

    .line 671
    check-cast v5, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 672
    .local v5, "wrappedMessageInstance":Lcom/android/internal/telephony/cdma/SmsMessage;
    const-string/jumbo v1, "mBearerData"

    .line 676
    .local v1, "bearerDataDeclaredField":Ljava/lang/String;
    :try_start_0
    const-class v6, Lcom/android/internal/telephony/cdma/SmsMessage;

    const-string/jumbo v7, "mBearerData"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 677
    .local v2, "bearerDataField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 679
    :try_start_1
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 680
    .local v0, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return v6

    .line 681
    .end local v0    # "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    :catch_0
    move-exception v3

    .line 682
    .local v3, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    const-string/jumbo v6, "mBearerData cannot be accessed."

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    .line 687
    .end local v2    # "bearerDataField":Ljava/lang/reflect/Field;
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 684
    :catch_1
    move-exception v4

    .line 685
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v6, "mBearerData does not exist."

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isDuplicateMessage(Landroid/content/Context;Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v12

    .line 557
    .local v12, "smsTimestamp":J
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->somcSctsColumnExists(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-gtz v1, :cond_1

    .line 558
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 561
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 562
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v5, 0x0

    aput-object v1, v2, v5

    const-string/jumbo v1, "body"

    const/4 v5, 0x1

    aput-object v1, v2, v5

    const-string/jumbo v1, "somc_scts"

    const/4 v5, 0x2

    aput-object v1, v2, v5

    const-string/jumbo v1, "address"

    const/4 v5, 0x3

    aput-object v1, v2, v5

    .line 563
    .local v2, "projection":[Ljava/lang/String;
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 564
    .local v10, "smsScts":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .line 565
    .local v9, "smsOa":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    .line 568
    .local v8, "smsBody":Ljava/lang/String;
    if-nez v8, :cond_4

    .line 569
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v9, v4, v1

    .line 570
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v3, "somc_scts = ? AND address = ?"

    .line 577
    .local v3, "selection":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 579
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 580
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 581
    const-string/jumbo v1, "Conversations"

    const/4 v5, 0x3

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    const-string/jumbo v1, "SCTS, OA and message body of incoming message is duplicate, discarding message!"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 585
    :cond_2
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 586
    const-string/jumbo v5, "_id"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 585
    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 598
    if-eqz v6, :cond_3

    .line 599
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 585
    :cond_3
    return-object v1

    .line 572
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v9, v4, v1

    const/4 v1, 0x2

    aput-object v8, v4, v1

    .line 573
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v3, "somc_scts = ? AND address = ? AND body = ?"

    .restart local v3    # "selection":Ljava/lang/String;
    goto :goto_0

    .line 588
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_5
    :try_start_1
    const-string/jumbo v1, "Conversations"

    const/4 v5, 0x3

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 589
    const-string/jumbo v1, "SCTS, OA and message body of incoming message is unique."

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    :cond_6
    const/4 v1, 0x0

    .line 598
    if-eqz v6, :cond_7

    .line 599
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 591
    :cond_7
    return-object v1

    .line 593
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 594
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string/jumbo v1, "Conversations"

    const/4 v5, 0x6

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 595
    const-string/jumbo v1, "Database query failed!"

    invoke-static {v1, v7}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    :cond_8
    if-eqz v6, :cond_9

    .line 599
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 603
    :cond_9
    const/4 v1, 0x0

    return-object v1

    .line 597
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    .line 598
    if-eqz v6, :cond_a

    .line 599
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_a
    throw v1
.end method

.method public static isOutboxEmpty(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 420
    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    .line 421
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 422
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 425
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 427
    :goto_0
    if-eqz v7, :cond_0

    .line 428
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_0
    return v0

    :cond_1
    move v0, v8

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    .line 427
    if-eqz v7, :cond_2

    .line 428
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_2
    throw v0
.end method

.method public static moveOutboxMessagesToQueuedBox(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 784
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 786
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    .line 790
    const-string/jumbo v4, "type = 4"

    const/4 v5, 0x0

    move-object v0, p0

    .line 788
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method public static replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 479
    const/4 v2, 0x0

    aget-object v19, p1, v2

    .line 480
    .local v19, "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/model/SmsMessage;->extractContentValues(Landroid/content/Context;Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v11

    .line 482
    .local v11, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "body"

    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 486
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 487
    .local v15, "originatingAddress":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SmsMessage;->isCphsMwiMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    const v2, 0x7f0b013f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 493
    .local v15, "originatingAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v18

    .line 495
    .local v18, "protocolIdentifier":I
    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    .line 496
    const-string/jumbo v2, "_id"

    const/4 v4, 0x0

    aput-object v2, v5, v4

    .line 497
    const-string/jumbo v2, "address"

    const/4 v4, 0x1

    aput-object v2, v5, v4

    .line 498
    const-string/jumbo v2, "protocol"

    const/4 v4, 0x2

    aput-object v2, v5, v4

    .line 502
    .local v5, "replaceProjection":[Ljava/lang/String;
    const-string/jumbo v6, "address = ? AND protocol = ?"

    .line 504
    .local v6, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .line 505
    const/4 v2, 0x0

    aput-object v15, v7, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v7, v4

    .line 508
    .local v7, "selectionArgs":[Ljava/lang/String;
    sget-object v4, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 509
    const/4 v8, 0x0

    move-object/from16 v2, p0

    .line 508
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 511
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 513
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    const-string/jumbo v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 516
    .local v16, "messageId":J
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 515
    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 519
    .local v10, "messageUri":Landroid/net/Uri;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    .line 518
    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 520
    return-object v10

    .line 490
    .end local v5    # "replaceProjection":[Ljava/lang/String;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "messageUri":Landroid/net/Uri;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v16    # "messageId":J
    .end local v18    # "protocolIdentifier":I
    .local v15, "originatingAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v15

    .local v15, "originatingAddress":Ljava/lang/String;
    goto :goto_0

    .line 523
    .restart local v5    # "replaceProjection":[Ljava/lang/String;
    .restart local v6    # "selection":Ljava/lang/String;
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "protocolIdentifier":I
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_2
    invoke-static/range {p0 .. p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 522
    :catchall_0
    move-exception v2

    .line 523
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 522
    throw v2
.end method

.method private static somcSctsColumnExists(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 698
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v1, "somc_scts"

    aput-object v1, v2, v8

    .line 699
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 700
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 704
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 711
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 712
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 705
    :cond_0
    return v9

    .line 706
    .local v6, "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 707
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string/jumbo v1, "Conversations"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    const-string/jumbo v1, "Database query failed, probably using an old database without the somc_scts column."

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    :cond_1
    return v8

    .line 710
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public static storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 530
    aget-object v2, p1, v3

    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/model/SmsMessage;->isDuplicateMessage(Landroid/content/Context;Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 531
    return-object v4

    .line 534
    :cond_0
    aget-object v2, p1, v3

    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/model/SmsMessage;->extractContentValues(Landroid/content/Context;Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v1

    .line 535
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "body"

    invoke-static {p1}, Lcom/sonyericsson/conversations/model/SmsMessage;->getBodyFromMessages([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 537
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v2, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static updateMessage(Landroid/content/ContentResolver;Landroid/net/Uri;JZI)V
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "timestamp"    # J
    .param p4, "requestDeliveryReport"    # Z
    .param p5, "priority"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 766
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 767
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 768
    const-string/jumbo v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    const-string/jumbo v1, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 770
    const-string/jumbo v1, "semc_message_priority"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 772
    if-eqz p4, :cond_0

    .line 773
    const-string/jumbo v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string/jumbo v1, "delivery_status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    :goto_0
    invoke-virtual {p0, p1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 765
    return-void

    .line 776
    :cond_0
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 777
    const-string/jumbo v1, "delivery_status"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateReceivedMessageStatus(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateUri"    # Landroid/net/Uri;
    .param p2, "status"    # I
    .param p3, "deliveryStatus"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 452
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 453
    .local v3, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v0, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    if-ne p3, v6, :cond_1

    .line 456
    const-string/jumbo v0, "delivery_status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    const-string/jumbo v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 465
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    return-void

    .line 458
    :cond_1
    if-ne p3, v2, :cond_2

    .line 459
    const-string/jumbo v0, "delivery_status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 460
    :cond_2
    if-ne p3, v5, :cond_0

    .line 462
    const-string/jumbo v0, "delivery_status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 461
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachmentType(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/AttachmentSummary;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 795
    new-instance v0, Lcom/sonyericsson/conversations/model/AttachmentSummary;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/model/AttachmentSummary;-><init>()V

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 242
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v10, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 247
    .local v6, "address":Ljava/lang/String;
    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v0, "address"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 248
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    .line 248
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 251
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    const-string/jumbo v0, "address"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 256
    .end local v6    # "address":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_0

    .line 257
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 258
    const/4 v7, 0x0

    .line 262
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0070

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    const-string/jumbo v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->isSentMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0064

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    :goto_1
    if-eqz v6, :cond_1

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/sonyericsson/conversations/model/Participant;->createAddressStringForMessageDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v8

    .line 284
    .local v8, "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->isSentMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    const-string/jumbo v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->date:J

    invoke-virtual {v8, v4, v5, v11}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->isReceivedMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    const-string/jumbo v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->date:J

    invoke-virtual {v8, v4, v5, v11}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->format(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    :cond_3
    const-string/jumbo v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    const-string/jumbo v9, ""

    .line 305
    .local v9, "priStr":Ljava/lang/String;
    iget v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    packed-switch v0, :pswitch_data_0

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 316
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string/jumbo v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    .end local v8    # "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    .end local v9    # "priStr":Ljava/lang/String;
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    const-string/jumbo v0, "invalid cursor"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 307
    .restart local v8    # "dateFormatter":Lcom/sonyericsson/conversations/ui/util/DateFormatter;
    .restart local v9    # "priStr":Ljava/lang/String;
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    return-object v1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/SmsMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginPrority()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mOriginPriority:I

    return v0
.end method

.method public getRawPriority()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    iget v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x2

    return v0

    .line 331
    :cond_0
    iget v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 332
    return v2

    .line 334
    :cond_1
    return v2
.end method

.method public getServiceCenter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mServiceCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionId()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mSubscriptionId:I

    return v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mThreadId:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 229
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mUri:Landroid/net/Uri;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mUri:Landroid/net/Uri;

    return-object v0
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

    .line 801
    const/4 v6, 0x0

    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 802
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 803
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "delivery_status"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 801
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 804
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const-string/jumbo v0, "delivery_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->deliveryStatus:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 807
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

    .line 800
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_5
    return-void

    .line 807
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mAddress:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setRawPriority(I)V
    .locals 3
    .param p1, "priority"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 340
    iput p1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mOriginPriority:I

    .line 341
    if-eqz p1, :cond_0

    .line 342
    if-ne p1, v1, :cond_1

    .line 343
    :cond_0
    iput v1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    .line 339
    :goto_0
    return-void

    .line 344
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 345
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 346
    :cond_2
    iput v2, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    goto :goto_0

    .line 348
    :cond_3
    iput v1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mPriority:I

    goto :goto_0
.end method

.method public setServiceCenter(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceCenter"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mServiceCenter:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setSubscriptionId(I)V
    .locals 0
    .param p1, "subscriptionId"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mSubscriptionId:I

    .line 117
    return-void
.end method

.method public setThreadId(J)V
    .locals 1
    .param p1, "threadId"    # J

    .prologue
    .line 179
    iput-wide p1, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->mThreadId:J

    .line 178
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    goto :goto_0
.end method
