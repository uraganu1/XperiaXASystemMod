.class public Lcom/sonyericsson/conversations/util/SimCardUtils;
.super Ljava/lang/Object;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;
    }
.end annotation


# static fields
.field private static sEnableCedillaForOperator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/util/SimCardUtils;->sEnableCedillaForOperator:Ljava/util/ArrayList;

    .line 58
    sget-object v0, Lcom/sonyericsson/conversations/util/SimCardUtils;->sEnableCedillaForOperator:Ljava/util/ArrayList;

    const-string/jumbo v1, "21405"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/sonyericsson/conversations/util/SimCardUtils;->sEnableCedillaForOperator:Ljava/util/ArrayList;

    const-string/jumbo v1, "21407"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/sonyericsson/conversations/util/SimCardUtils;->sEnableCedillaForOperator:Ljava/util/ArrayList;

    const-string/jumbo v1, "72406"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/sonyericsson/conversations/util/SimCardUtils;->sEnableCedillaForOperator:Ljava/util/ArrayList;

    const-string/jumbo v1, "72410"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/sonyericsson/conversations/util/SimCardUtils;->sEnableCedillaForOperator:Ljava/util/ArrayList;

    const-string/jumbo v1, "72411"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/sonyericsson/conversations/util/SimCardUtils;->sEnableCedillaForOperator:Ljava/util/ArrayList;

    const-string/jumbo v1, "72423"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertDateToBcdByte(J)[B
    .locals 10
    .param p0, "date"    # J

    .prologue
    const/4 v8, 0x7

    .line 86
    new-array v1, v8, [B

    .line 87
    .local v1, "dateByte":[B
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 88
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 89
    const/4 v6, 0x0

    .line 90
    .local v6, "negativeTimeZoneOffset":Z
    new-array v2, v8, [I

    .local v2, "fieldArray":[I
    fill-array-data v2, :array_0

    .line 97
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v2

    if-ge v4, v8, :cond_4

    .line 98
    aget v8, v2, v4

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 99
    .local v7, "value":I
    aget v8, v2, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 101
    add-int/lit16 v7, v7, -0x76c

    .line 102
    const/16 v8, 0x63

    if-le v7, v8, :cond_0

    .line 103
    rem-int/lit8 v7, v7, 0x64

    .line 119
    :cond_0
    :goto_1
    and-int/lit16 v7, v7, 0xff

    .line 122
    div-int/lit8 v8, v7, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    .line 123
    .local v5, "low":B
    rem-int/lit8 v8, v7, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    .line 126
    .local v3, "high":B
    shl-int/lit8 v8, v3, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    .end local v3    # "high":B
    .end local v5    # "low":B
    :cond_1
    aget v8, v2, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 106
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 107
    :cond_2
    aget v8, v2, v4

    const/16 v9, 0xf

    if-ne v8, v9, :cond_0

    .line 108
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v7, v8

    .line 109
    if-gez v7, :cond_3

    .line 110
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 111
    const/4 v6, 0x1

    .line 115
    :cond_3
    const v8, 0xdbba0

    div-int/2addr v7, v8

    goto :goto_1

    .line 130
    .end local v7    # "value":I
    :cond_4
    if-eqz v6, :cond_5

    .line 131
    const/4 v8, 0x6

    aget-byte v9, v1, v8

    or-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 133
    :cond_5
    return-object v1

    .line 90
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x5
        0xb
        0xc
        0xd
        0xf
    .end array-data
.end method

.method protected static copySMSToSimCard(Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7
    .param p0, "smsManager"    # Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "messageBody"    # Ljava/lang/String;
    .param p3, "date"    # J

    .prologue
    const/4 v5, 0x0

    .line 303
    const/4 v3, 0x0

    .line 304
    .local v3, "success":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 323
    .end local v3    # "success":Z
    :cond_0
    return v3

    .line 305
    .restart local v3    # "success":Z
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;->getSmsManager()Landroid/telephony/SmsManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 306
    .local v0, "contentArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .end local v3    # "success":Z
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 307
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, p3, p4, v4}, Lcom/sonyericsson/conversations/util/SimCardUtils;->createDeliveryPDU(Ljava/lang/String;JLjava/lang/String;)[B

    move-result-object v2

    .line 308
    .local v2, "pdu":[B
    if-eqz v2, :cond_3

    .line 309
    const/4 v4, 0x1

    invoke-virtual {p0, v5, v2, v4}, Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;->copyMessageToIcc([B[BI)Z

    move-result v3

    .line 314
    .local v3, "success":Z
    if-nez v3, :cond_2

    .line 315
    const/4 v4, 0x0

    return v4

    .line 317
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    .line 318
    const/4 v3, 0x0

    .line 306
    .end local v3    # "success":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static copySMSToSimCard(Ljava/lang/String;Ljava/lang/String;JI)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "messageBody"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "simCardSlotIndex"    # I

    .prologue
    .line 339
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSubscriptionIdFromSlotIndex(I)I

    move-result v0

    .line 341
    .local v0, "subscriptionId":I
    new-instance v1, Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;

    invoke-direct {v1, v0}, Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;-><init>(I)V

    invoke-static {v1, p0, p1, p2, p3}, Lcom/sonyericsson/conversations/util/SimCardUtils;->copySMSToSimCard(Lcom/sonyericsson/conversations/util/SimCardUtils$SmsManagerWrapper;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    return v1
.end method

.method public static createCDMAPdu(Ljava/lang/String;JLjava/lang/String;)[B
    .locals 15
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "date"    # J
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 137
    if-eqz p0, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v9, p1, v10

    if-gez v9, :cond_1

    .line 138
    :cond_0
    return-object v13

    .line 137
    :cond_1
    if-eqz p3, :cond_0

    .line 140
    invoke-static {p0}, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/sonymobile/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 142
    .local v2, "addr":Lcom/sonymobile/cdma/sms/CdmaSmsAddress;
    if-nez v2, :cond_2

    .line 143
    return-object v13

    .line 146
    :cond_2
    new-instance v4, Lcom/sonymobile/cdma/sms/BearerData;

    invoke-direct {v4}, Lcom/sonymobile/cdma/sms/BearerData;-><init>()V

    .line 147
    .local v4, "bearerData":Lcom/sonymobile/cdma/sms/BearerData;
    const/4 v9, 0x1

    iput v9, v4, Lcom/sonymobile/cdma/sms/BearerData;->messageType:I

    .line 148
    invoke-static {}, Lcom/sonyericsson/conversations/util/SimCardUtils;->getNextMessageId()I

    move-result v9

    iput v9, v4, Lcom/sonymobile/cdma/sms/BearerData;->messageId:I

    .line 150
    iput-boolean v12, v4, Lcom/sonymobile/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 151
    iput-boolean v12, v4, Lcom/sonymobile/cdma/sms/BearerData;->userAckReq:Z

    .line 152
    iput-boolean v12, v4, Lcom/sonymobile/cdma/sms/BearerData;->readAckReq:Z

    .line 153
    iput-boolean v12, v4, Lcom/sonymobile/cdma/sms/BearerData;->reportReq:Z

    .line 155
    move-wide/from16 v0, p1

    iput-wide v0, v4, Lcom/sonymobile/cdma/sms/BearerData;->msgCenterTimeStamp:J

    .line 157
    new-instance v8, Lcom/sonymobile/cdma/sms/UserData;

    invoke-direct {v8}, Lcom/sonymobile/cdma/sms/UserData;-><init>()V

    .line 158
    .local v8, "uData":Lcom/sonymobile/cdma/sms/UserData;
    move-object/from16 v0, p3

    iput-object v0, v8, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 159
    iput-object v8, v4, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    .line 161
    invoke-static {v4}, Lcom/sonymobile/cdma/sms/BearerData;->encode(Lcom/sonymobile/cdma/sms/BearerData;)[B

    move-result-object v6

    .line 163
    .local v6, "encodedBearerData":[B
    if-nez v6, :cond_3

    .line 164
    return-object v13

    .line 168
    :cond_3
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0xff

    invoke-direct {v3, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 169
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 170
    .local v5, "dos":Ljava/io/DataOutputStream;
    const/16 v9, 0x1002

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 171
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 172
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 174
    iget v9, v2, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 175
    iget v9, v2, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 176
    iget v9, v2, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 177
    iget v9, v2, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 178
    iget v9, v2, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 179
    iget-object v9, v2, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v10, v2, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v10, v10

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 181
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 182
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 183
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 184
    array-length v9, v6

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 185
    array-length v9, v6

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 186
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 188
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 189
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v7

    .line 190
    .local v7, "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "creating pdu failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 192
    return-object v13
.end method

.method private static createDeliveryPDU(Ljava/lang/String;JLjava/lang/String;)[B
    .locals 5
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "date"    # J
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 275
    .local v1, "result":[B
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyManagerProxy()Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;

    move-result-object v0

    .line 276
    .local v0, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;
    invoke-interface {v0}, Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 277
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/util/SimCardUtils;->createCDMAPdu(Ljava/lang/String;JLjava/lang/String;)[B

    move-result-object v1

    .line 281
    .end local v1    # "result":[B
    :cond_0
    :goto_0
    return-object v1

    .line 278
    .restart local v1    # "result":[B
    :cond_1
    invoke-interface {v0}, Lcom/sonymobile/conversations/proxy/ITelephonyManagerProxy;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 279
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/util/SimCardUtils;->createGSMPdu(Ljava/lang/String;JLjava/lang/String;)[B

    move-result-object v1

    .local v1, "result":[B
    goto :goto_0
.end method

.method public static createGSMPdu(Ljava/lang/String;JLjava/lang/String;)[B
    .locals 15
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "date"    # J
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v10, 0x0

    .line 198
    .local v10, "submitPdu":Landroid/telephony/SmsMessage$SubmitPdu;
    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_0
    move-object/from16 v0, p3

    invoke-static {v12, p0, v0, v13}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 206
    .end local v10    # "submitPdu":Landroid/telephony/SmsMessage$SubmitPdu;
    :goto_0
    const/4 v7, 0x0

    .line 207
    .local v7, "result":[B
    if-eqz v10, :cond_1

    .line 208
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v12, 0xa0

    invoke-direct {v9, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 209
    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v3, v10, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 210
    .local v3, "data":[B
    const/4 v6, 0x0

    .line 211
    .local v6, "index":I
    aget-byte v11, v3, v6

    .line 214
    .local v11, "tpmti":B
    and-int/lit16 v12, v11, 0xe0

    int-to-byte v11, v12

    .line 215
    invoke-virtual {v9, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 218
    const/4 v6, 0x2

    .line 222
    aget-byte v1, v3, v6

    .line 223
    .local v1, "adDigtialLength":I
    rem-int/lit8 v12, v1, 0x2

    if-eqz v12, :cond_0

    .line 224
    add-int/lit8 v1, v1, 0x1

    .line 226
    :cond_0
    div-int/lit8 v12, v1, 0x2

    add-int/lit8 v2, v12, 0x2

    .line 227
    .local v2, "adLength":I
    invoke-virtual {v9, v3, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 229
    add-int/lit8 v6, v2, 0x2

    .line 231
    const/4 v12, 0x2

    invoke-virtual {v9, v3, v6, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 233
    add-int/lit8 v6, v6, 0x2

    .line 236
    invoke-static/range {p1 .. p2}, Lcom/sonyericsson/conversations/util/SimCardUtils;->convertDateToBcdByte(J)[B

    move-result-object v4

    .line 238
    .local v4, "dateBytes":[B
    :try_start_1
    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    array-length v12, v3

    sub-int/2addr v12, v6

    invoke-virtual {v9, v3, v6, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 247
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 249
    .local v7, "result":[B
    :try_start_2
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 256
    .end local v1    # "adDigtialLength":I
    .end local v2    # "adLength":I
    .end local v3    # "data":[B
    .end local v4    # "dateBytes":[B
    .end local v6    # "index":I
    .end local v7    # "result":[B
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "tpmti":B
    :cond_1
    :goto_1
    return-object v7

    .line 199
    .restart local v10    # "submitPdu":Landroid/telephony/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v8

    .local v8, "rex":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 239
    .end local v8    # "rex":Ljava/lang/RuntimeException;
    .end local v10    # "submitPdu":Landroid/telephony/SmsMessage$SubmitPdu;
    .restart local v1    # "adDigtialLength":I
    .restart local v2    # "adLength":I
    .restart local v3    # "data":[B
    .restart local v4    # "dateBytes":[B
    .restart local v6    # "index":I
    .local v7, "result":[B
    .restart local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "tpmti":B
    :catch_1
    move-exception v5

    .line 240
    .local v5, "e":Ljava/io/IOException;
    sget-boolean v12, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v12, :cond_2

    .line 241
    const-string/jumbo v12, "exception occurs on writing date byte"

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 243
    :cond_2
    const/4 v12, 0x0

    return-object v12

    .line 250
    .end local v5    # "e":Ljava/io/IOException;
    .local v7, "result":[B
    :catch_2
    move-exception v5

    .line 251
    .restart local v5    # "e":Ljava/io/IOException;
    sget-boolean v12, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v12, :cond_1

    .line 252
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "exceptin occurs on closing ByteArrayOutputStream"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getNextMessageId()I
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static shallEnableFeatureCapitalCedilla(I)Z
    .locals 6
    .param p0, "subscriptionId"    # I

    .prologue
    const/4 v3, 0x0

    .line 292
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSimOperator(I)[Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "operators":[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 294
    .local v0, "operator":Ljava/lang/String;
    sget-object v5, Lcom/sonyericsson/conversations/util/SimCardUtils;->sEnableCedillaForOperator:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    const/4 v2, 0x1

    return v2

    .line 293
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "operator":Ljava/lang/String;
    :cond_1
    return v3
.end method
