.class public final Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
.super Ljava/lang/Object;
.source "SmsCounterInfo.java"


# instance fields
.field private final mEncoding:I

.field private mNumberOfRemainingCharsInSegment:I

.field private mNumberOfSegments:I

.field private mNumberOfUsedCharsInSegment:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "numberOfSegments"    # I
    .param p2, "numberOfUsedCharsInSegment"    # I
    .param p3, "numberOfRemainingCharsInSegment"    # I
    .param p4, "encoding"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfSegments:I

    .line 30
    iput p2, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfUsedCharsInSegment:I

    .line 31
    iput p3, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfRemainingCharsInSegment:I

    .line 32
    iput p4, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mEncoding:I

    .line 28
    return-void
.end method

.method static createDefault()Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->fromText(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    move-result-object v0

    return-object v0
.end method

.method public static fromText(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    .locals 14
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 40
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .line 41
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCharacterConversionEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 42
    invoke-static {p0, v13, v13}, Lcom/sonyericsson/conversations/util/TextUtil;->convertForCostSaving(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 45
    :cond_1
    invoke-static {p0, v12}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    .line 47
    .local v0, "calc":[I
    aget v6, v0, v12

    .line 48
    .local v6, "msgCount":I
    aget v1, v0, v13

    .line 49
    .local v1, "codeUnitCount":I
    const/4 v11, 0x2

    aget v3, v0, v11

    .line 50
    .local v3, "codeUnitsRemaining":I
    const/4 v11, 0x3

    aget v2, v0, v11

    .line 52
    .local v2, "codeUnitSize":I
    move v8, v6

    .line 53
    .local v8, "numberOfSegments":I
    move v4, v2

    .line 57
    .local v4, "encoding":I
    array-length v11, v0

    const/4 v12, 0x5

    if-lt v11, v12, :cond_2

    .line 58
    const/4 v11, 0x4

    aget v9, v0, v11

    .line 80
    .local v9, "numberOfUsedCharsInSegment":I
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTriggerSmsPduBytes()I

    move-result v5

    .line 81
    .local v5, "mmsTriggerSmsPduBytes":I
    if-lez v5, :cond_6

    add-int/lit8 v11, v5, -0x1

    const/16 v12, 0x8c

    if-gt v11, v12, :cond_6

    .line 82
    packed-switch v4, :pswitch_data_0

    .line 93
    :pswitch_0
    add-int/lit8 v11, v5, -0x1

    rsub-int v11, v11, 0x8c

    .line 92
    sub-int v7, v3, v11

    .line 100
    .local v7, "numberOfRemainingCharsInSegment":I
    :goto_1
    new-instance v11, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    invoke-direct {v11, v8, v9, v7, v4}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;-><init>(IIII)V

    return-object v11

    .line 60
    .end local v5    # "mmsTriggerSmsPduBytes":I
    .end local v7    # "numberOfRemainingCharsInSegment":I
    .end local v9    # "numberOfUsedCharsInSegment":I
    :cond_2
    const/4 v10, 0x0

    .line 61
    .local v10, "usedCharCount":I
    packed-switch v4, :pswitch_data_1

    .line 78
    :goto_2
    if-gez v10, :cond_5

    const/4 v9, 0x0

    .restart local v9    # "numberOfUsedCharsInSegment":I
    goto :goto_0

    .line 63
    .end local v9    # "numberOfUsedCharsInSegment":I
    :pswitch_1
    add-int v11, v1, v3

    div-int/2addr v11, v6

    sub-int v10, v11, v3

    .line 65
    goto :goto_2

    .line 67
    :pswitch_2
    if-le v6, v13, :cond_3

    rsub-int/lit8 v10, v3, 0x43

    goto :goto_2

    .line 68
    :cond_3
    rsub-int/lit8 v10, v3, 0x46

    goto :goto_2

    .line 71
    :pswitch_3
    if-le v6, v13, :cond_4

    rsub-int v10, v3, 0x86

    goto :goto_2

    .line 72
    :cond_4
    rsub-int v10, v3, 0x8c

    goto :goto_2

    .line 78
    :cond_5
    move v9, v10

    .restart local v9    # "numberOfUsedCharsInSegment":I
    goto :goto_0

    .line 85
    .end local v10    # "usedCharCount":I
    .restart local v5    # "mmsTriggerSmsPduBytes":I
    :pswitch_4
    add-int/lit8 v11, v5, -0x1

    rsub-int v11, v11, 0x8c

    mul-int/lit8 v11, v11, 0x8

    add-int/lit8 v11, v11, 0x6

    div-int/lit8 v11, v11, 0x7

    .line 84
    sub-int v7, v3, v11

    .line 86
    .restart local v7    # "numberOfRemainingCharsInSegment":I
    goto :goto_1

    .line 89
    .end local v7    # "numberOfRemainingCharsInSegment":I
    :pswitch_5
    add-int/lit8 v11, v5, -0x1

    rsub-int v11, v11, 0x8c

    mul-int/lit8 v11, v11, 0x8

    add-int/lit8 v11, v11, 0x8

    div-int/lit8 v11, v11, 0x10

    .line 88
    sub-int v7, v3, v11

    .line 90
    .restart local v7    # "numberOfRemainingCharsInSegment":I
    goto :goto_1

    .line 97
    .end local v7    # "numberOfRemainingCharsInSegment":I
    :cond_6
    move v7, v3

    .restart local v7    # "numberOfRemainingCharsInSegment":I
    goto :goto_1

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 61
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfSegments:I

    .line 167
    iput v0, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfUsedCharsInSegment:I

    .line 168
    iput v0, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfRemainingCharsInSegment:I

    .line 165
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 173
    instance-of v2, p1, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 174
    check-cast v0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    .line 176
    .local v0, "other":Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    iget v2, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfSegments:I

    iget v3, v0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfSegments:I

    if-ne v2, v3, :cond_0

    .line 177
    iget v2, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfUsedCharsInSegment:I

    iget v3, v0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfUsedCharsInSegment:I

    if-ne v2, v3, :cond_0

    .line 178
    iget v2, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfRemainingCharsInSegment:I

    iget v3, v0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfRemainingCharsInSegment:I

    if-ne v2, v3, :cond_0

    .line 179
    iget v2, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mEncoding:I

    iget v3, v0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mEncoding:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 176
    :cond_0
    return v1

    .line 182
    .end local v0    # "other":Lcom/sonyericsson/conversations/ui/SmsCounterInfo;
    :cond_1
    return v1
.end method

.method getEncoding()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mEncoding:I

    return v0
.end method

.method getNbrOfUsedBytesInPdus()I
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "nbrUsedBytesInLastPdu":I
    iget v1, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mEncoding:I

    packed-switch v1, :pswitch_data_0

    .line 136
    :pswitch_0
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfUsedCharsInSegment:I

    .line 140
    :goto_0
    iget v1, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfSegments:I

    add-int/lit8 v1, v1, -0x1

    mul-int/lit16 v1, v1, 0x8c

    add-int/2addr v1, v0

    return v1

    .line 130
    :pswitch_1
    iget v1, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfUsedCharsInSegment:I

    mul-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v0, v1, 0x8

    goto :goto_0

    .line 133
    :pswitch_2
    iget v1, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfUsedCharsInSegment:I

    mul-int/lit8 v0, v1, 0x2

    .line 134
    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getNumberOfRemainingCharsInSegment()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfRemainingCharsInSegment:I

    return v0
.end method

.method getNumberOfSegments()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfSegments:I

    return v0
.end method

.method getNumberOfUsedCharsInSegment()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfUsedCharsInSegment:I

    return v0
.end method

.method getSegmentSize()I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfRemainingCharsInSegment:I

    iget v1, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfUsedCharsInSegment:I

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 187
    iget v0, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfSegments:I

    .line 188
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfUsedCharsInSegment:I

    add-int v0, v1, v2

    .line 189
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfRemainingCharsInSegment:I

    add-int v0, v1, v2

    .line 190
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mEncoding:I

    add-int v0, v1, v2

    .line 191
    return v0
.end method

.method public isTextTooLong()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->getNbrOfUsedBytesInPdus()I

    move-result v1

    .line 149
    .local v1, "nbrOfBytesUsedInPdus":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTriggerSmsPduBytes()I

    move-result v0

    .line 150
    .local v0, "mmsTriggerSmsPduBytes":I
    if-lez v0, :cond_0

    if-gt v0, v1, :cond_0

    .line 151
    return v4

    .line 154
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTriggerSmsSegments()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfSegments:I

    if-ge v2, v3, :cond_1

    .line 155
    return v4

    .line 158
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfSegments:I

    if-ge v2, v3, :cond_2

    .line 159
    return v4

    .line 162
    :cond_2
    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfSegments:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfUsedCharsInSegment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    iget v2, p0, Lcom/sonyericsson/conversations/ui/SmsCounterInfo;->mNumberOfRemainingCharsInSegment:I

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
