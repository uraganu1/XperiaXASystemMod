.class public final Lcom/sonymobile/cdma/sms/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cdma/sms/BearerData$CodingException;,
        Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;
    }
.end annotation


# instance fields
.field public alert:I

.field public alertIndicatorSet:Z

.field public callbackNumber:Lcom/sonymobile/cdma/sms/CdmaSmsAddress;

.field public deliveryAckReq:Z

.field public displayMode:I

.field public displayModeSet:Z

.field public errorClass:I

.field public language:I

.field public languageIndicatorSet:Z

.field public messageId:I

.field public messageStatus:I

.field public messageStatusSet:Z

.field public messageType:I

.field public msgCenterTimeStamp:J

.field public numberOfMessages:I

.field public priority:I

.field public priorityIndicatorSet:Z

.field public privacy:I

.field public privacyIndicatorSet:Z

.field public readAckReq:Z

.field public reportReq:Z

.field public userAckReq:Z

.field public userData:Lcom/sonymobile/cdma/sms/UserData;

.field public validityPeriodRelative:I

.field public validityPeriodRelativeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 87
    iput v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->priority:I

    .line 98
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 99
    iput v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->privacy:I

    .line 110
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 111
    iput v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->alert:I

    .line 123
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->displayModeSet:Z

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->displayMode:I

    .line 142
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 143
    iput v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->language:I

    .line 180
    iput-boolean v1, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageStatusSet:Z

    .line 181
    iput v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->errorClass:I

    .line 182
    iput v2, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageStatus:I

    .line 35
    return-void
.end method

.method public static encode(Lcom/sonymobile/cdma/sms/BearerData;)[B
    .locals 9
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;

    .prologue
    const/4 v8, 0x0

    .line 601
    :try_start_0
    new-instance v2, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;-><init>(I)V

    .line 602
    .local v2, "outStream":Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 603
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeMessageId(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 604
    iget-object v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    if-eqz v3, :cond_0

    .line 605
    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 606
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeUserData(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 608
    :cond_0
    iget-wide v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->msgCenterTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 609
    const/4 v3, 0x3

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 610
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeMessageCenterTimeStamp(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 612
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->callbackNumber:Lcom/sonymobile/cdma/sms/CdmaSmsAddress;

    if-eqz v3, :cond_2

    .line 613
    const/16 v3, 0xe

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 614
    iget-object v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->callbackNumber:Lcom/sonymobile/cdma/sms/CdmaSmsAddress;

    invoke-static {v3, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/sonymobile/cdma/sms/CdmaSmsAddress;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 616
    :cond_2
    iget-boolean v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->userAckReq:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->readAckReq:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->reportReq:Z

    if-eqz v3, :cond_4

    .line 617
    :cond_3
    const/16 v3, 0xa

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 618
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeReplyOption(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 620
    :cond_4
    iget v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v3, :cond_5

    .line 621
    const/16 v3, 0xb

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 622
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeMsgCount(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 624
    :cond_5
    iget-boolean v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v3, :cond_6

    .line 625
    const/4 v3, 0x5

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 626
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 628
    :cond_6
    iget-boolean v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v3, :cond_7

    .line 629
    const/16 v3, 0x9

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 630
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 632
    :cond_7
    iget-boolean v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v3, :cond_8

    .line 633
    const/16 v3, 0xd

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 634
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 636
    :cond_8
    iget-boolean v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v3, :cond_9

    .line 637
    const/16 v3, 0xf

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 638
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeDisplayMode(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 640
    :cond_9
    iget-boolean v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v3, :cond_a

    .line 641
    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 642
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 644
    :cond_a
    iget-boolean v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v3, :cond_b

    .line 645
    const/16 v3, 0xc

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 646
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 648
    :cond_b
    iget-boolean v3, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v3, :cond_c

    .line 649
    const/16 v3, 0x14

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 650
    invoke-static {p0, v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeMsgStatus(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V

    .line 652
    :cond_c
    invoke-virtual {v2}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->toByteArray()[B
    :try_end_0
    .catch Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sonymobile/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 655
    .end local v2    # "outStream":Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    :catch_0
    move-exception v0

    .line 656
    .local v0, "ex":Lcom/sonymobile/cdma/sms/BearerData$CodingException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 658
    .end local v0    # "ex":Lcom/sonymobile/cdma/sms/BearerData$CodingException;
    :goto_0
    return-object v8

    .line 653
    :catch_1
    move-exception v1

    .line 654
    .local v1, "ex":Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 282
    :try_start_0
    new-instance v4, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;-><init>(I)V

    .line 283
    .local v4, "outStream":Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 284
    .local v3, "msgLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 285
    sget-object v5, Lcom/sonymobile/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 286
    .local v0, "charCode":I
    if-ne v0, v8, :cond_1

    .line 287
    if-eqz p1, :cond_0

    .line 288
    const/16 v5, 0x20

    const/4 v6, 0x7

    invoke-virtual {v4, v6, v5}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 284
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    :cond_0
    new-instance v5, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot ASCII encode ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v0    # "charCode":I
    .end local v2    # "i":I
    .end local v3    # "msgLen":I
    .end local v4    # "outStream":Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    :catch_0
    move-exception v1

    .line 298
    .local v1, "ex":Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
    new-instance v5, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "7bit ASCII encode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 293
    .end local v1    # "ex":Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
    .restart local v0    # "charCode":I
    .restart local v2    # "i":I
    .restart local v3    # "msgLen":I
    .restart local v4    # "outStream":Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    :cond_1
    const/4 v5, 0x7

    :try_start_1
    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 296
    .end local v0    # "charCode":I
    :cond_2
    invoke-virtual {v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private static encode7bitGsm(Ljava/lang/String;IZ)Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "septetOffset"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 316
    if-eqz p2, :cond_0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, v3, v4, v5}, Lcom/sonymobile/cdma/sms/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v1

    .line 317
    .local v1, "fullData":[B
    new-instance v2, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;)V

    .line 318
    .local v2, "result":Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 319
    iget-object v3, v2, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 320
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/sonymobile/cdma/sms/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    return-object v2

    .end local v1    # "fullData":[B
    .end local v2    # "result":Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    .line 316
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "ex":Lcom/sonymobile/cdma/sms/EncodeException;
    new-instance v3, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encodeCallbackNumber(Lcom/sonymobile/cdma/sms/CdmaSmsAddress;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 9
    .param p0, "addr"    # Lcom/sonymobile/cdma/sms/CdmaSmsAddress;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;,
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 505
    invoke-static {p0}, Lcom/sonymobile/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/sonymobile/cdma/sms/CdmaSmsAddress;)V

    .line 506
    const/16 v2, 0x9

    .line 507
    .local v2, "paramBits":I
    const/4 v0, 0x0

    .line 508
    .local v0, "dataBits":I
    iget v4, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v4, v5, :cond_2

    .line 509
    const/16 v2, 0x10

    .line 510
    iget v4, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v0, v4, 0x8

    .line 514
    :goto_0
    add-int/2addr v2, v0

    .line 515
    div-int/lit8 v7, v2, 0x8

    rem-int/lit8 v4, v2, 0x8

    if-lez v4, :cond_3

    move v4, v5

    :goto_1
    add-int v3, v7, v4

    .line 516
    .local v3, "paramBytes":I
    mul-int/lit8 v4, v3, 0x8

    sub-int v1, v4, v2

    .line 517
    .local v1, "paddingBits":I
    invoke-virtual {p1, v8, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 518
    iget v4, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v5, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 519
    iget v4, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v4, v5, :cond_0

    .line 520
    iget v4, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->ton:I

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 521
    iget v4, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberPlan:I

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 523
    :cond_0
    iget v4, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v8, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 524
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v0, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 525
    if-lez v1, :cond_1

    .line 526
    invoke-virtual {p1, v1, v6}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 503
    :cond_1
    return-void

    .line 512
    .end local v1    # "paddingBits":I
    .end local v3    # "paramBytes":I
    :cond_2
    iget v4, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v0, v4, 0x4

    goto :goto_0

    :cond_3
    move v4, v6

    .line 515
    goto :goto_1
.end method

.method private static encodeCdmaSmsAddress(Lcom/sonymobile/cdma/sms/CdmaSmsAddress;)V
    .locals 2
    .param p0, "addr"    # Lcom/sonymobile/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 495
    iget v0, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 494
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonymobile/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cdma/sms/CdmaSmsAddress;->origBytes:[B

    goto :goto_0
.end method

.method private static encodeDisplayMode(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 570
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 571
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->displayMode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 572
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->skip(I)V

    .line 568
    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 470
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 471
    .local v3, "digits":I
    mul-int/lit8 v1, v3, 0x4

    .line 472
    .local v1, "dataBits":I
    div-int/lit8 v2, v1, 0x8

    .line 473
    .local v2, "dataBytes":I
    rem-int/lit8 v8, v1, 0x8

    if-lez v8, :cond_0

    const/4 v7, 0x1

    :cond_0
    add-int/2addr v2, v7

    .line 474
    new-array v5, v2, [B

    .line 475
    .local v5, "rawData":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 476
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 477
    .local v0, "c":C
    const/4 v6, 0x0

    .line 478
    .local v6, "val":I
    const/16 v7, 0x31

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-gt v0, v7, :cond_1

    .line 479
    add-int/lit8 v6, v0, -0x30

    .line 489
    :goto_1
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v5, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 475
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 480
    :cond_1
    const/16 v7, 0x30

    if-ne v0, v7, :cond_2

    .line 481
    const/16 v6, 0xa

    goto :goto_1

    .line 482
    :cond_2
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_3

    .line 483
    const/16 v6, 0xb

    goto :goto_1

    .line 484
    :cond_3
    const/16 v7, 0x23

    if-ne v0, v7, :cond_4

    .line 485
    const/16 v6, 0xc

    goto :goto_1

    .line 487
    :cond_4
    const/4 v7, 0x0

    return-object v7

    .line 491
    .end local v0    # "c":C
    .end local v6    # "val":I
    :cond_5
    return-object v5
.end method

.method private static encodeLanguageIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 563
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 564
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 561
    return-void
.end method

.method private static encodeMessageCenterTimeStamp(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 11
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    .line 415
    const/4 v7, 0x6

    invoke-virtual {p1, v10, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 417
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 418
    .local v0, "cal":Ljava/util/Calendar;
    iget-wide v8, p0, Lcom/sonymobile/cdma/sms/BearerData;->msgCenterTimeStamp:J

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 420
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 421
    .local v6, "year":I
    const/16 v7, 0x7cc

    if-lt v6, v7, :cond_1

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_1

    .line 422
    add-int/lit16 v6, v6, -0x76c

    .line 426
    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v10, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 428
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 429
    .local v4, "month":I
    add-int/lit8 v4, v4, 0x1

    .line 430
    invoke-static {v4}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v10, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 432
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 433
    .local v1, "day":I
    invoke-static {v1}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v10, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 435
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 436
    .local v2, "hour":I
    invoke-static {v2}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v10, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 438
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 439
    .local v3, "minute":I
    invoke-static {v3}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v10, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 441
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 442
    .local v5, "sercond":I
    invoke-static {v5}, Lcom/sonymobile/cdma/sms/BearerData;->timeFormatToBCD(I)B

    move-result v7

    invoke-virtual {p1, v10, v7}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 414
    return-void

    .line 423
    .end local v1    # "day":I
    .end local v2    # "hour":I
    .end local v3    # "minute":I
    .end local v4    # "month":I
    .end local v5    # "sercond":I
    :cond_1
    const/16 v7, 0x7d0

    if-lt v6, v7, :cond_0

    const/16 v7, 0x82f

    if-gt v6, v7, :cond_0

    .line 424
    add-int/lit16 v6, v6, -0x7d0

    goto :goto_0
.end method

.method private static encodeMessageId(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 4
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/16 v2, 0x8

    .line 270
    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 271
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 272
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageId:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 273
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v2, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 274
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 275
    invoke-virtual {p1, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->skip(I)V

    .line 268
    return-void
.end method

.method private static encodeMsgCount(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 541
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 542
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 539
    return-void
.end method

.method private static encodeMsgDeliveryAlert(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 586
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 587
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->alert:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 588
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->skip(I)V

    .line 584
    return-void
.end method

.method private static encodeMsgStatus(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 533
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 534
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->errorClass:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 535
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->messageStatus:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 531
    return-void
.end method

.method private static encodePriorityIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 578
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 579
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->priority:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 580
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->skip(I)V

    .line 576
    return-void
.end method

.method private static encodePrivacyIndicator(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 555
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 556
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->privacy:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 557
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->skip(I)V

    .line 553
    return-void
.end method

.method private static encodeReplyOption(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 3
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 461
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 462
    iget-boolean v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->userAckReq:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 463
    iget-boolean v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->deliveryAckReq:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 464
    iget-boolean v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->readAckReq:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 465
    iget-boolean v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->reportReq:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 466
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 459
    return-void

    :cond_0
    move v0, v2

    .line 462
    goto :goto_0

    :cond_1
    move v0, v2

    .line 463
    goto :goto_1

    :cond_2
    move v0, v2

    .line 464
    goto :goto_2

    :cond_3
    move v0, v2

    .line 465
    goto :goto_3
.end method

.method private static encodeUserData(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;,
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8c

    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 384
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    invoke-static {v4}, Lcom/sonymobile/cdma/sms/BearerData;->encodeUserDataPayload(Lcom/sonymobile/cdma/sms/UserData;)V

    .line 386
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget-object v4, v4, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    if-le v4, v7, :cond_0

    .line 387
    new-instance v4, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encoded user data too large ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 388
    iget-object v6, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget-object v6, v6, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    .line 387
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 389
    const-string/jumbo v6, " > "

    .line 387
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 389
    const-string/jumbo v6, " bytes)"

    .line 387
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 392
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget-object v4, v4, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    iget-object v7, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v7, v7, Lcom/sonymobile/cdma/sms/UserData;->paddingBits:I

    sub-int v0, v4, v7

    .line 393
    .local v0, "dataBits":I
    add-int/lit8 v2, v0, 0xd

    .line 394
    .local v2, "paramBits":I
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_1

    .line 395
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_2

    .line 396
    :cond_1
    add-int/lit8 v2, v2, 0x8

    .line 398
    :cond_2
    div-int/lit8 v7, v2, 0x8

    rem-int/lit8 v4, v2, 0x8

    if-lez v4, :cond_6

    move v4, v5

    :goto_0
    add-int v3, v7, v4

    .line 399
    .local v3, "paramBytes":I
    mul-int/lit8 v4, v3, 0x8

    sub-int v1, v4, v2

    .line 400
    .local v1, "paddingBits":I
    invoke-virtual {p1, v8, v3}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 401
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    const/4 v7, 0x5

    invoke-virtual {p1, v7, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 402
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_3

    .line 403
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_4

    .line 404
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v8, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 406
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget v4, v4, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v8, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 407
    iget-object v4, p0, Lcom/sonymobile/cdma/sms/BearerData;->userData:Lcom/sonymobile/cdma/sms/UserData;

    iget-object v4, v4, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v4}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 408
    if-lez v1, :cond_5

    .line 409
    invoke-virtual {p1, v1, v6}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 382
    :cond_5
    return-void

    .end local v1    # "paddingBits":I
    .end local v3    # "paramBytes":I
    :cond_6
    move v4, v6

    .line 398
    goto :goto_0
.end method

.method private static encodeUserDataPayload(Lcom/sonymobile/cdma/sms/UserData;)V
    .locals 8
    .param p0, "uData"    # Lcom/sonymobile/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 330
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-eqz v2, :cond_0

    .line 331
    const-string/jumbo v2, "user data with null payloadStr"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 332
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 335
    :cond_0
    iget-boolean v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v2, :cond_7

    .line 336
    iget v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-nez v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    if-nez v2, :cond_1

    .line 338
    const-string/jumbo v2, "user data with octet encoding but null payload"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 339
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 340
    iput v4, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    .line 328
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 346
    const-string/jumbo v2, "non-octet user data with null payloadStr"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 347
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 349
    :cond_3
    iget v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    .line 350
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/sonymobile/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v1

    .line 351
    .local v1, "gcr":Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;
    iget-object v2, v1, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 352
    iget v2, v1, Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 353
    .end local v1    # "gcr":Lcom/sonymobile/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_4
    iget v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v6, :cond_5

    .line 354
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sonymobile/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 355
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 356
    :cond_5
    iget v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v7, :cond_6

    .line 357
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 358
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 360
    :cond_6
    new-instance v2, Lcom/sonymobile/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 361
    iget v4, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 361
    const-string/jumbo v4, ")"

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_7
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 367
    const-string/jumbo v2, "non-octet user data with null payloadStr"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 370
    :cond_8
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonymobile/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 371
    const/4 v2, 0x2

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/sonymobile/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cdma/sms/UserData;->numFields:I

    .line 377
    iput-boolean v5, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncodingSet:Z

    goto/16 :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "ex":Lcom/sonymobile/cdma/sms/BearerData$CodingException;
    iget-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonymobile/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cdma/sms/UserData;->payload:[B

    .line 374
    iput v7, p0, Lcom/sonymobile/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1
.end method

.method private static encodeUtf16(Ljava/lang/String;)[B
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 304
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private static encodeValidityPeriodRel(Lcom/sonymobile/cdma/sms/BearerData;Lcom/sonymobile/cdma/sms/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/sonymobile/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/sonymobile/cdma/sms/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 548
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 549
    iget v0, p0, Lcom/sonymobile/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v1, v0}, Lcom/sonymobile/cdma/sms/BitwiseOutputStream;->write(II)V

    .line 546
    return-void
.end method

.method private static timeFormatToBCD(I)B
    .locals 3
    .param p0, "timeValue"    # I

    .prologue
    .line 447
    and-int/lit16 p0, p0, 0xff

    .line 450
    div-int/lit8 v2, p0, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    .line 451
    .local v1, "low":B
    rem-int/lit8 v2, p0, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    .line 455
    .local v0, "high":B
    shl-int/lit8 v2, v1, 0x4

    or-int/2addr v2, v0

    int-to-byte v2, v2

    return v2
.end method
