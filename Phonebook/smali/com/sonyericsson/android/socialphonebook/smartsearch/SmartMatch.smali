.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;
.super Ljava/lang/Object;
.source "SmartMatch.java"


# static fields
.field private static final STROKE_LEGAL_HAVE_WILDCARDRANGE:Ljava/lang/String; = "[1-5]+[6]"

.field private static final STROKE_LEGAL_NOHAVE_WILDCARD_RANGE:Ljava/lang/String; = "[1-5]+"

.field private static final STROKE_WILDCARDCHAR:C = '6'

.field private static final SYM_CHAR_BOUND_LEFT:C = '['

.field private static final SYM_CHAR_BOUND_RIGHT:C = ']'

.field private static final SYM_SEPERATOR:C = '|'

.field private static final SYM_UNKNOWN_CHAR:C = '.'

.field private static final TAG:Ljava/lang/String; = "SmartMatch"


# instance fields
.field private mDigitCnt:I

.field private mDigitContactName:Ljava/lang/String;

.field private mDigits:Ljava/lang/String;

.field private mLen:I

.field private mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private atDigit(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 353
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mLen:I

    if-lt p1, v1, :cond_1

    .line 354
    :cond_0
    return v2

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitContactName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 357
    .local v0, "c":C
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->isDigit(C)Z

    move-result v1

    return v1
.end method

.method private atDigitAreaStart(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 369
    if-ltz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->atDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->atDigit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private atSplit(I)Z
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 341
    if-gez p1, :cond_0

    .line 342
    return v1

    .line 344
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitContactName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 345
    .local v0, "c":C
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_1

    const/16 v3, 0x7c

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static getCharsMatchedIdx(Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;)[F
    .locals 12
    .param p0, "matchedState"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 77
    if-nez p0, :cond_0

    .line 78
    return-object v9

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "matchedKeys":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 82
    return-object v9

    .line 84
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 85
    .local v7, "nameLen":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getLen()I

    move-result v6

    .line 86
    .local v6, "matchedNameLen":I
    if-eq v7, v6, :cond_2

    .line 87
    const-string/jumbo v9, "SmartMatch"

    const-string/jumbo v10, "Hilight error: length not match"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    new-array v4, v7, [F

    .line 91
    .local v4, "idx":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_3

    .line 92
    const/4 v9, 0x0

    aput v9, v4, v3

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_3
    const/4 v0, 0x0

    .line 96
    .local v0, "atCJK":Z
    const/4 v2, 0x0

    .line 97
    .local v2, "displayCharPos":I
    const/4 v8, 0x0

    .line 98
    .local v8, "thisCJKLen":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_a

    if-ge v3, v6, :cond_a

    .line 99
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 103
    .local v1, "c":C
    const/16 v9, 0x5b

    if-ne v1, v9, :cond_4

    .line 104
    const/4 v0, 0x1

    .line 105
    const/4 v8, 0x0

    .line 107
    :cond_4
    const/16 v9, 0x5d

    if-ne v1, v9, :cond_5

    .line 108
    const/4 v0, 0x0

    .line 109
    if-eqz v8, :cond_7

    .line 110
    aget v9, v4, v2

    int-to-float v10, v8

    div-float/2addr v9, v10

    aput v9, v4, v2

    .line 115
    :goto_2
    const/4 v8, 0x0

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 120
    :cond_5
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->isDisplayable(C)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 121
    if-eqz v0, :cond_8

    .line 122
    add-int/lit8 v8, v8, 0x1

    .line 123
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->isSet(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 124
    aget v9, v4, v2

    add-float/2addr v9, v11

    aput v9, v4, v2

    .line 98
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    :cond_7
    const-string/jumbo v9, "smartsearch.match.getCharsMatchedIdx(hilight)"

    const-string/jumbo v10, "unknown error"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 127
    :cond_8
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->isSet(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 128
    aput v11, v4, v2

    .line 130
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 135
    .end local v1    # "c":C
    :cond_a
    return-object v4
.end method

.method public static getMatchResultWeight(Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;)I
    .locals 25
    .param p0, "matchedState"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    .prologue
    .line 147
    if-nez p0, :cond_0

    .line 148
    const/16 v22, -0x1

    return v22

    .line 150
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getKey()Ljava/lang/String;

    move-result-object v14

    .line 152
    .local v14, "matchedKeys":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    .line 153
    .local v16, "nameLen":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getLen()I

    move-result v15

    .line 155
    .local v15, "matchedNameLen":I
    const/16 v20, 0x0

    .line 156
    .local v20, "unitCount":I
    const/4 v9, 0x0

    .line 157
    .local v9, "fullMatchedUnitCount":I
    const/16 v17, 0x0

    .line 158
    .local v17, "partialMatchedUnitCount":I
    const/4 v12, 0x0

    .line 159
    .local v12, "lastInUnit":Z
    const/4 v11, 0x0

    .line 160
    .local v11, "inUnit":Z
    const/4 v8, 0x1

    .line 161
    .local v8, "fullMatch":Z
    const/4 v13, 0x0

    .line 162
    .local v13, "matchedCount":I
    const/4 v4, 0x0

    .line 163
    .local v4, "charCountOfUnit":I
    const/4 v6, 0x0

    .line 164
    .local v6, "discreteUnit":I
    const/16 v18, 0x1

    .line 165
    .local v18, "previousUnitMatched":Z
    const/16 v19, 0x0

    .line 166
    .local v19, "thisUnitMatched":Z
    const/4 v7, 0x0

    .line 167
    .local v7, "everMatched":Z
    const/4 v3, 0x0

    .line 168
    .local v3, "charCount":I
    const/4 v10, 0x0

    .end local v12    # "lastInUnit":Z
    .end local v18    # "previousUnitMatched":Z
    .local v10, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v10, v0, :cond_d

    if-ge v10, v15, :cond_d

    .line 169
    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 170
    .local v2, "c":C
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->isDigit(C)Z

    move-result v22

    if-eqz v22, :cond_5

    const/4 v11, 0x1

    .line 171
    :goto_1
    if-eqz v11, :cond_1

    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 176
    :cond_1
    if-nez v11, :cond_2

    if-eqz v12, :cond_2

    .line 177
    add-int/lit8 v20, v20, 0x1

    .line 178
    if-eqz v8, :cond_6

    const/16 v22, 0x1

    :goto_2
    add-int v9, v9, v22

    .line 179
    if-eqz v8, :cond_7

    const/16 v22, 0x0

    :goto_3
    add-int v17, v17, v22

    .line 181
    move/from16 v18, v19

    .line 183
    .local v18, "previousUnitMatched":Z
    const/4 v8, 0x1

    .line 184
    const/4 v13, 0x0

    .line 185
    const/4 v4, 0x0

    .line 188
    .end local v18    # "previousUnitMatched":Z
    :cond_2
    if-eqz v11, :cond_3

    .line 189
    add-int/lit8 v4, v4, 0x1

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->isSet(I)Z

    move-result v22

    if-nez v22, :cond_9

    .line 191
    const/4 v8, 0x0

    .line 198
    :cond_3
    :goto_4
    if-eqz v11, :cond_4

    if-eqz v12, :cond_a

    .line 208
    :cond_4
    :goto_5
    move v12, v11

    .line 168
    .local v12, "lastInUnit":Z
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 170
    .end local v12    # "lastInUnit":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 178
    :cond_6
    const/16 v22, 0x0

    goto :goto_2

    .line 180
    :cond_7
    if-eqz v19, :cond_8

    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v4, v0, :cond_8

    const/16 v22, 0x1

    goto :goto_3

    :cond_8
    const/16 v22, 0x0

    goto :goto_3

    .line 193
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 199
    :cond_a
    if-lez v13, :cond_c

    const/16 v19, 0x1

    .line 200
    :goto_6
    if-nez v18, :cond_b

    if-eqz v19, :cond_b

    if-eqz v7, :cond_b

    .line 201
    add-int/lit8 v6, v6, 0x1

    .line 203
    :cond_b
    if-eqz v19, :cond_4

    .line 204
    const/4 v7, 0x1

    goto :goto_5

    .line 199
    :cond_c
    const/16 v19, 0x0

    goto :goto_6

    .line 210
    .end local v2    # "c":C
    :cond_d
    if-eqz v12, :cond_e

    .line 211
    add-int/lit8 v20, v20, 0x1

    .line 212
    if-eqz v8, :cond_14

    const/16 v22, 0x1

    :goto_7
    add-int v9, v9, v22

    .line 213
    if-eqz v8, :cond_15

    const/16 v22, 0x0

    :goto_8
    add-int v17, v17, v22

    .line 218
    :cond_e
    const/high16 v21, 0x447a0000    # 1000.0f

    .line 219
    .local v21, "weight":F
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getType()I

    move-result v5

    .line 221
    .local v5, "digistType":I
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->getLocaleType()I

    move-result v22

    and-int v22, v22, v5

    if-eqz v22, :cond_f

    .line 222
    const/high16 v21, 0x44fa0000    # 2000.0f

    .line 224
    :cond_f
    and-int/lit8 v22, v5, 0x2

    if-nez v22, :cond_10

    .line 225
    and-int/lit8 v22, v5, 0x40

    if-eqz v22, :cond_17

    .line 231
    :cond_10
    add-int v22, v17, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x42c80000    # 100.0f

    mul-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v22, v22, v23

    add-float v21, v21, v22

    .line 233
    add-int v22, v17, v9

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    .line 242
    :goto_9
    if-lez v6, :cond_11

    .line 243
    mul-int/lit16 v0, v6, 0xc8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    .line 246
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getFirstSetPos()I

    move-result v22

    mul-int/lit8 v22, v22, 0x5

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    .line 248
    if-lez v3, :cond_12

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getSetCount()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v3

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x42c80000    # 100.0f

    mul-float v22, v22, v23

    add-float v21, v21, v22

    .line 252
    :cond_12
    sget-boolean v22, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->DEBUG:Z

    if-eqz v22, :cond_13

    .line 254
    const-string/jumbo v22, "SmartMatch"

    .line 255
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "\n\t "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 256
    const-string/jumbo v24, "\n\t partialMatchedUnitCount="

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 256
    const-string/jumbo v24, "\n\t "

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 257
    const-string/jumbo v24, "fullMatchedUnitCount="

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 257
    const-string/jumbo v24, "\n\t "

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 258
    const-string/jumbo v24, "discreteUnit="

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 258
    const-string/jumbo v24, "\n\t "

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 258
    const-string/jumbo v24, "unitCount="

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 259
    const-string/jumbo v24, "\n\t "

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 259
    const-string/jumbo v24, "type="

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getType()I

    move-result v24

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 259
    const-string/jumbo v24, "\n\t "

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 259
    const-string/jumbo v24, "firstSetPos="

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getFirstSetPos()I

    move-result v24

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 260
    const-string/jumbo v24, "\n\t "

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 260
    const-string/jumbo v24, "setCount="

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getSetCount()I

    move-result v24

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 261
    const-string/jumbo v24, "\n\t "

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 261
    const-string/jumbo v24, "charCount="

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 262
    const-string/jumbo v24, "\n\t "

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 262
    const-string/jumbo v24, "weight="

    .line 255
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 253
    invoke-static/range {v22 .. v23}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_13
    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v22, v0

    return v22

    .line 212
    .end local v5    # "digistType":I
    .end local v21    # "weight":F
    :cond_14
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 213
    :cond_15
    if-eqz v19, :cond_16

    const/16 v22, 0x1

    move/from16 v0, v22

    if-le v4, v0, :cond_16

    const/16 v22, 0x1

    goto/16 :goto_8

    .line 214
    :cond_16
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 226
    .restart local v5    # "digistType":I
    .restart local v21    # "weight":F
    :cond_17
    and-int/lit16 v0, v5, 0x80

    move/from16 v22, v0

    if-nez v22, :cond_10

    .line 227
    and-int/lit8 v22, v5, 0x10

    if-nez v22, :cond_10

    .line 228
    and-int/lit8 v22, v5, 0x8

    if-nez v22, :cond_10

    .line 229
    and-int/lit8 v22, v5, 0x4

    if-nez v22, :cond_10

    .line 236
    add-int/lit8 v22, v17, -0x1

    mul-int/lit8 v22, v22, 0x64

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getFirstSetPos()I

    move-result v22

    mul-int/lit8 v22, v22, 0x32

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    goto/16 :goto_9
.end method

.method private initState()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitContactName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitContactName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 270
    :cond_0
    return-void

    .line 272
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitContactName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    .line 268
    return-void
.end method

.method private static isDigit(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 60
    const/16 v1, 0x2e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x7c

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x5d

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isDisplayable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 67
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->isDigit(C)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isLeftBounder(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 623
    const/16 v0, 0x5b

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLegalUserStrokeinput(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 627
    const-string/jumbo v0, "[1-5]+[6]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    const-string/jumbo v0, "[1-5]+"

    .line 627
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private matchADigitFromPos(IC)Z
    .locals 4
    .param p1, "pos"    # I
    .param p2, "c"    # C

    .prologue
    const/4 v3, 0x0

    .line 382
    const/4 v0, 0x1

    .line 383
    .local v0, "matchDigitAreaStart":Z
    if-lez p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->atDigitAreaStart(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mLen:I

    if-ge p1, v1, :cond_5

    .line 389
    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->atDigitAreaStart(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 392
    :cond_1
    const/4 v0, 0x1

    .line 393
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->atSplit(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 388
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 384
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const/4 v0, 0x0

    goto :goto_0

    .line 396
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitContactName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p2, :cond_2

    .line 397
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->set(I)V

    .line 398
    const/4 v1, 0x1

    return v1

    .line 401
    :cond_5
    return v3
.end method

.method private matchCyrillic(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
    .locals 9
    .param p1, "digName"    # Ljava/lang/String;
    .param p2, "digits"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v8, 0x0

    .line 503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 504
    :cond_0
    return-object v8

    .line 507
    :cond_1
    new-instance v5, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v5, v7}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;-><init>(I)V

    .line 508
    .local v5, "result":Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
    invoke-virtual {v5, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->setKey(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v5, p3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->setType(I)V

    .line 511
    const/4 v3, 0x0

    .line 512
    .local v3, "lastIsDigit":Z
    const/4 v6, 0x0

    .line 513
    .local v6, "startedMatch":Z
    const/4 v4, 0x0

    .line 514
    .local v4, "matchIndex":I
    const/4 v1, 0x0

    .end local v3    # "lastIsDigit":Z
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 515
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 516
    .local v0, "ch":C
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->isDigit(C)Z

    move-result v2

    .line 517
    .local v2, "isDigit":Z
    if-eqz v2, :cond_4

    .line 518
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v0, v7, :cond_3

    .line 519
    if-eqz v3, :cond_2

    if-eqz v6, :cond_4

    .line 520
    :cond_2
    const/4 v6, 0x1

    .line 521
    invoke-virtual {v5, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->set(I)V

    .line 522
    add-int/lit8 v4, v4, 0x1

    .line 523
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_4

    .line 524
    return-object v5

    .line 527
    :cond_3
    if-eqz v6, :cond_4

    .line 528
    return-object v8

    .line 532
    :cond_4
    move v3, v2

    .line 514
    .local v3, "lastIsDigit":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v0    # "ch":C
    .end local v2    # "isDigit":Z
    .end local v3    # "lastIsDigit":Z
    :cond_5
    return-object v8
.end method

.method private matchFromCurState()Z
    .locals 5

    .prologue
    .line 411
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getLastSetPos()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 412
    .local v2, "pos":I
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getSetCount()I

    move-result v0

    .line 416
    .local v0, "cnt":I
    :goto_0
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitCnt:I

    if-ge v0, v3, :cond_2

    .line 418
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigits:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->matchADigitFromPos(IC)Z

    move-result v1

    .line 419
    .local v1, "matched":Z
    if-nez v1, :cond_0

    .line 420
    const/4 v3, 0x0

    return v3

    .line 423
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getLastSetPos()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 424
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getSetCount()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-eq v3, v4, :cond_1

    .line 427
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    .end local v1    # "matched":Z
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public static matchNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private toNextMatchedState()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getLastSetPos()I

    move-result v1

    .line 324
    .local v1, "pos":I
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->toNextMatchedStateOneChar()Z

    move-result v0

    .line 325
    .local v0, "matched":Z
    if-eqz v0, :cond_1

    .line 326
    const/4 v2, 0x1

    return v2

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getLastSetPos()I

    move-result v1

    .line 330
    if-gez v1, :cond_0

    .line 331
    return v3
.end method

.method private toNextMatchedStateOneChar()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 282
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->getLastSetPos()I

    move-result v2

    .line 286
    .local v2, "pos":I
    if-ltz v2, :cond_0

    .line 287
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitContactName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 292
    .local v0, "c":C
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->unset(I)V

    .line 293
    add-int/lit8 v2, v2, 0x1

    .line 295
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mLen:I

    if-lt v2, v3, :cond_1

    .line 296
    return v4

    .line 289
    .end local v0    # "c":C
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigits:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "c":C
    goto :goto_0

    .line 300
    :cond_1
    const/4 v1, 0x1

    .line 301
    .local v1, "matchDigitAreaStart":Z
    :goto_1
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mLen:I

    if-ge v2, v3, :cond_4

    .line 302
    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->atDigitAreaStart(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 306
    :cond_2
    const/4 v1, 0x1

    .line 307
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitContactName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_3

    .line 308
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->set(I)V

    .line 309
    const/4 v3, 0x1

    return v3

    .line 301
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    :cond_4
    return v4
.end method


# virtual methods
.method public match(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
    .locals 9
    .param p1, "digName"    # Ljava/lang/String;
    .param p2, "digits"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v8, 0x0

    .line 443
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->getLocaleType()I

    move-result v1

    .line 444
    .local v1, "localType":I
    const/16 v7, 0x40

    if-eq v1, v7, :cond_0

    .line 445
    const/16 v7, 0x80

    if-ne v1, v7, :cond_1

    .line 446
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->matchCyrillic(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    move-result-object v7

    return-object v7

    .line 447
    :cond_1
    const/4 v7, 0x4

    if-ne v1, v7, :cond_2

    .line 449
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->matchStroke(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    move-result-object v7

    return-object v7

    .line 452
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 453
    :cond_3
    return-object v8

    .line 455
    :cond_4
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitContactName:Ljava/lang/String;

    .line 456
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigits:Ljava/lang/String;

    .line 457
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitContactName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mLen:I

    .line 458
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigits:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mDigitCnt:I

    .line 460
    const/4 v3, 0x0

    .line 461
    .local v3, "matchedCnt":I
    const/4 v6, 0x0

    .local v6, "weight":I
    const/16 v4, -0x2710

    .line 463
    .local v4, "maxWeight":I
    const/4 v5, 0x0

    .line 466
    .local v5, "maxWeightState":Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->initState()V

    .line 467
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v7, p1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->setKey(Ljava/lang/String;)V

    .line 468
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v7, p3}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->setType(I)V

    .line 471
    .end local v5    # "maxWeightState":Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->matchFromCurState()Z

    move-result v2

    .line 472
    .local v2, "matched":Z
    if-eqz v2, :cond_6

    .line 473
    add-int/lit8 v3, v3, 0x1

    .line 474
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-static {v7}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->getMatchResultWeight(Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;)I

    move-result v6

    .line 475
    if-le v6, v4, :cond_6

    .line 476
    move v4, v6

    .line 477
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->mState:Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual {v7}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->copy()Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    move-result-object v5

    .line 484
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->toNextMatchedState()Z

    move-result v0

    .line 486
    .local v0, "hasMoreState":Z
    if-nez v0, :cond_5

    .line 490
    const/4 v4, 0x0

    .line 492
    if-eqz v3, :cond_7

    if-nez v5, :cond_8

    .line 493
    :cond_7
    return-object v8

    .line 495
    :cond_8
    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->copy()Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    move-result-object v7

    return-object v7
.end method

.method public matchStroke(Ljava/lang/String;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
    .locals 15
    .param p1, "digName"    # Ljava/lang/String;
    .param p2, "digits"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 542
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 543
    :cond_0
    const/4 v13, 0x0

    return-object v13

    .line 546
    :cond_1
    const/4 v5, 0x0

    .line 547
    .local v5, "lastIsDigit":Z
    const/4 v6, 0x0

    .line 548
    .local v6, "lastIsLeftBound":Z
    const/4 v4, 0x0

    .line 549
    .local v4, "isLeftBounderFound":Z
    const/4 v3, 0x0

    .line 550
    .local v3, "isDigit":Z
    const/4 v11, 0x0

    .line 551
    .local v11, "startedMatch":Z
    const/4 v7, 0x0

    .line 552
    .local v7, "matchFound":Z
    const/4 v8, 0x0

    .line 555
    .local v8, "matchIndex":I
    const-string/jumbo v12, "."

    .line 557
    .local v12, "tSeperator":Ljava/lang/String;
    new-instance v10, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-direct {v10, v13}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;-><init>(I)V

    .line 558
    .local v10, "result":Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->setKey(Ljava/lang/String;)V

    .line 559
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->setType(I)V

    .line 561
    const/4 v2, 0x0

    .end local v3    # "isDigit":Z
    .end local v5    # "lastIsDigit":Z
    .end local v6    # "lastIsLeftBound":Z
    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v2, v13, :cond_b

    .line 562
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 564
    .local v9, "namechar":C
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->isDigit(C)Z

    move-result v3

    .line 567
    .local v3, "isDigit":Z
    if-eqz v3, :cond_7

    .line 568
    if-eqz v6, :cond_2

    .line 572
    const/4 v4, 0x1

    .line 574
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->isLegalUserStrokeinput(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 575
    const/4 v13, 0x0

    return-object v13

    .line 579
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 582
    .local v1, "digitchar":C
    if-eqz v4, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v8, v13, :cond_5

    .line 583
    const/16 v13, 0x36

    if-ne v13, v1, :cond_5

    .line 584
    const/16 v13, 0x31

    if-lt v9, v13, :cond_3

    const/16 v13, 0x35

    if-gt v9, v13, :cond_3

    .line 585
    const/4 v7, 0x1

    .line 593
    :cond_3
    :goto_1
    if-eqz v7, :cond_8

    .line 594
    if-eqz v5, :cond_4

    if-eqz v11, :cond_6

    .line 595
    :cond_4
    const/4 v11, 0x1

    .line 596
    invoke-virtual {v10, v2}, Lcom/sonyericsson/android/socialphonebook/smartsearch/MatchState;->set(I)V

    .line 597
    add-int/lit8 v8, v8, 0x1

    .line 598
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v8, v13, :cond_6

    .line 599
    return-object v10

    .line 588
    :cond_5
    if-ne v9, v1, :cond_3

    .line 589
    const/4 v7, 0x1

    goto :goto_1

    .line 603
    :cond_6
    const/4 v7, 0x0

    .line 615
    .end local v1    # "digitchar":C
    :cond_7
    :goto_2
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartMatch;->isLeftBounder(C)Z

    move-result v6

    .line 616
    .local v6, "lastIsLeftBound":Z
    move v5, v3

    .line 561
    .local v5, "lastIsDigit":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    .end local v5    # "lastIsDigit":Z
    .end local v6    # "lastIsLeftBound":Z
    .restart local v1    # "digitchar":C
    :cond_8
    if-eqz v11, :cond_a

    .line 605
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v14, v13, :cond_9

    .line 607
    const/4 v11, 0x0

    goto :goto_2

    .line 609
    :cond_9
    const/4 v13, 0x0

    return-object v13

    .line 611
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v14, v13, :cond_7

    .line 612
    const/4 v13, 0x0

    return-object v13

    .line 619
    .end local v1    # "digitchar":C
    .end local v3    # "isDigit":Z
    .end local v9    # "namechar":C
    :cond_b
    const/4 v13, 0x0

    return-object v13
.end method
