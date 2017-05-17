.class public Lcom/android/mms/dom/smil/TimeImpl;
.super Ljava/lang/Object;
.source "TimeImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/Time;


# instance fields
.field mResolved:Z

.field mResolvedOffset:D

.field mTimeType:S


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "timeValue"    # Ljava/lang/String;
    .param p2, "constraints"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string/jumbo v1, "indefinite"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    .line 83
    iput-short v2, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    .line 70
    :goto_0
    return-void

    .line 84
    :cond_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_3

    .line 85
    const/4 v0, 0x1

    .line 86
    .local v0, "sign":I
    const-string/jumbo v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 92
    :cond_1
    :goto_1
    int-to-float v1, v0

    invoke-static {p1}, Lcom/android/mms/dom/smil/TimeImpl;->parseClockValue(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v2, v1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolvedOffset:D

    .line 93
    iput-boolean v6, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolved:Z

    .line 94
    iput-short v6, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    goto :goto_0

    .line 88
    :cond_2
    const-string/jumbo v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 90
    const/4 v0, -0x1

    goto :goto_1

    .line 96
    .end local v0    # "sign":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unsupported time value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseClockValue(Ljava/lang/String;)F
    .locals 12
    .param p0, "clockValue"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const v10, 0x476a6000    # 60000.0f

    const/high16 v9, 0x447a0000    # 1000.0f

    .line 132
    const/4 v4, 0x0

    .line 135
    .local v4, "result":F
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 138
    const-string/jumbo v7, "ms"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 139
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v4

    .line 185
    :goto_0
    return v4

    .line 140
    :cond_0
    const-string/jumbo v7, "s"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 141
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v7

    mul-float v4, v9, v7

    goto :goto_0

    .line 142
    :cond_1
    const-string/jumbo v7, "min"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 143
    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v7

    mul-float v4, v10, v7

    goto :goto_0

    .line 144
    :cond_2
    const-string/jumbo v7, "h"

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 145
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    const v8, 0x4a5bba00    # 3600000.0f

    mul-float v4, v8, v7

    goto :goto_0

    .line 149
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_1
    invoke-static {p0, v7, v8}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    mul-float/2addr v7, v9

    return v7

    .line 150
    :catch_0
    move-exception v0

    .line 155
    .local v0, "_":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string/jumbo v7, ":"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "timeValues":[Ljava/lang/String;
    array-length v7, v6

    if-ne v7, v11, :cond_4

    .line 160
    const/4 v2, 0x0

    .line 169
    .local v2, "indexOfMinutes":I
    :goto_1
    aget-object v7, v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v7

    float-to-int v3, v7

    .line 170
    .local v3, "minutes":I
    if-ltz v3, :cond_6

    const/16 v7, 0x3b

    if-gt v3, v7, :cond_6

    .line 171
    const v7, 0xea60

    mul-int/2addr v7, v3

    int-to-float v7, v7

    add-float/2addr v4, v7

    .line 177
    add-int/lit8 v7, v2, 0x1

    aget-object v7, v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v5

    .line 178
    .local v5, "seconds":F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_7

    const/high16 v7, 0x42700000    # 60.0f

    cmpg-float v7, v5, v7

    if-gez v7, :cond_7

    .line 179
    mul-float v7, v10, v5

    add-float/2addr v4, v7

    goto :goto_0

    .line 161
    .end local v2    # "indexOfMinutes":I
    .end local v3    # "minutes":I
    .end local v5    # "seconds":F
    :cond_4
    array-length v7, v6

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 162
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/mms/dom/smil/TimeImpl;->parseFloat(Ljava/lang/String;IZ)F

    move-result v7

    float-to-int v7, v7

    const v8, 0x36ee80

    mul-int/2addr v7, v8

    int-to-float v4, v7

    .line 163
    const/4 v2, 0x1

    .restart local v2    # "indexOfMinutes":I
    goto :goto_1

    .line 165
    .end local v2    # "indexOfMinutes":I
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    .end local v0    # "_":Ljava/lang/NumberFormatException;
    .end local v6    # "timeValues":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 173
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "_":Ljava/lang/NumberFormatException;
    .restart local v2    # "indexOfMinutes":I
    .restart local v3    # "minutes":I
    .restart local v6    # "timeValues":[Ljava/lang/String;
    :cond_6
    :try_start_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 181
    .restart local v5    # "seconds":F
    :cond_7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method private static parseFloat(Ljava/lang/String;IZ)F
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "ignoreLast"    # I
    .param p2, "parseDecimal"    # Z

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 212
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 213
    .local v0, "indexOfComma":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 214
    if-nez p2, :cond_0

    .line 215
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "int value contains decimal"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 220
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 222
    .local v1, "result":F
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 222
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 221
    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 227
    :goto_0
    return v1

    .line 224
    .end local v1    # "result":F
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v1, v2

    .restart local v1    # "result":F
    goto :goto_0
.end method


# virtual methods
.method public getResolved()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolved:Z

    return v0
.end method

.method public getResolvedOffset()D
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mResolvedOffset:D

    return-wide v0
.end method

.method public getTimeType()S
    .locals 1

    .prologue
    .line 268
    iget-short v0, p0, Lcom/android/mms/dom/smil/TimeImpl;->mTimeType:S

    return v0
.end method
