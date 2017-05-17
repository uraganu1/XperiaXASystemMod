.class public Lcom/sonymobile/cdma/sms/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# static fields
.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/16 v15, 0x80

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 249
    new-array v11, v14, [Ljava/lang/String;

    .line 252
    const-string/jumbo v12, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v12, v11, v13

    .line 249
    sput-object v11, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 266
    new-array v11, v14, [Ljava/lang/String;

    .line 269
    const-string/jumbo v12, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    aput-object v12, v11, v13

    .line 266
    sput-object v11, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 275
    sget-object v11, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v6, v11

    .line 276
    .local v6, "numTables":I
    sget-object v11, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v5, v11

    .line 277
    .local v5, "numShiftTables":I
    if-eq v6, v5, :cond_0

    .line 278
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error: language tables array length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 279
    const-string/jumbo v12, " != shift tables array length "

    .line 278
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 282
    :cond_0
    new-array v11, v6, [Landroid/util/SparseIntArray;

    sput-object v11, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 283
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 284
    sget-object v11, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v9, v11, v3

    .line 286
    .local v9, "table":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 287
    .local v10, "tableLen":I
    if-eqz v10, :cond_1

    if-eq v10, v15, :cond_1

    .line 288
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error: language tables index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 289
    const-string/jumbo v12, " length "

    .line 288
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 289
    const-string/jumbo v12, " (expected 128 or 0)"

    .line 288
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 292
    :cond_1
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v10}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 293
    .local v1, "charToGsmTable":Landroid/util/SparseIntArray;
    sget-object v11, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v1, v11, v3

    .line 294
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v10, :cond_2

    .line 295
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 296
    .local v0, "c":C
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 294
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 283
    .end local v0    # "c":C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "charToGsmTable":Landroid/util/SparseIntArray;
    .end local v4    # "j":I
    .end local v9    # "table":Ljava/lang/String;
    .end local v10    # "tableLen":I
    :cond_3
    new-array v11, v6, [Landroid/util/SparseIntArray;

    sput-object v11, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 301
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_7

    .line 302
    sget-object v11, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v7, v11, v3

    .line 304
    .local v7, "shiftTable":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 305
    .local v8, "shiftTableLen":I
    if-eqz v8, :cond_4

    if-eq v8, v15, :cond_4

    .line 306
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error: language shift tables index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 307
    const-string/jumbo v12, " length "

    .line 306
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 307
    const-string/jumbo v12, " (expected 128 or 0)"

    .line 306
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 310
    :cond_4
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 311
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    sget-object v11, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v2, v11, v3

    .line 312
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    if-ge v4, v8, :cond_6

    .line 313
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 314
    .restart local v0    # "c":C
    const/16 v11, 0x20

    if-eq v0, v11, :cond_5

    .line 315
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 312
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 301
    .end local v0    # "c":C
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 34
    .end local v2    # "charToShiftTable":Landroid/util/SparseIntArray;
    .end local v4    # "j":I
    .end local v7    # "shiftTable":Ljava/lang/String;
    .end local v8    # "shiftTableLen":I
    :cond_7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .locals 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .prologue
    const/4 v7, -0x1

    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 218
    .local v5, "sz":I
    sget-object v6, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p2

    .line 219
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v6, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 220
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 221
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 222
    .local v0, "c":C
    const/16 v6, 0x1b

    if-ne v0, v6, :cond_0

    .line 223
    const-string/jumbo v6, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v6}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 220
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v1, v0, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v7, :cond_1

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 228
    :cond_1
    invoke-virtual {v2, v0, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-eq v6, v7, :cond_2

    .line 229
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 230
    :cond_2
    if-eqz p1, :cond_3

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 233
    :cond_3
    return v7

    .line 236
    .end local v0    # "c":C
    :cond_4
    return v3
.end method

.method private static packSmsChar([BII)V
    .locals 4
    .param p0, "packedChars"    # [B
    .param p1, "bitOffset"    # I
    .param p2, "value"    # I

    .prologue
    .line 148
    div-int/lit8 v0, p1, 0x8

    .line 149
    .local v0, "byteOffset":I
    rem-int/lit8 v1, p1, 0x8

    .line 151
    .local v1, "shift":I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 153
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 154
    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 147
    :cond_0
    return-void
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .locals 15
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "startingSeptetOffset"    # I
    .param p2, "throwException"    # Z
    .param p3, "languageTable"    # I
    .param p4, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cdma/sms/EncodeException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 95
    .local v7, "dataLen":I
    if-eqz p2, :cond_0

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, v13, v0, v1}, Lcom/sonymobile/cdma/sms/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v10

    .line 97
    .local v10, "septetCount":I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_1

    .line 98
    new-instance v13, Lcom/sonymobile/cdma/sms/EncodeException;

    const-string/jumbo v14, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v13, v14}, Lcom/sonymobile/cdma/sms/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 95
    .end local v10    # "septetCount":I
    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    .line 100
    .restart local v10    # "septetCount":I
    :cond_1
    add-int v10, v10, p1

    .line 101
    const/16 v13, 0xff

    if-le v10, v13, :cond_2

    .line 102
    new-instance v13, Lcom/sonymobile/cdma/sms/EncodeException;

    const-string/jumbo v14, "Payload cannot exceed 255 septets"

    invoke-direct {v13, v14}, Lcom/sonymobile/cdma/sms/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 104
    :cond_2
    mul-int/lit8 v13, v10, 0x7

    add-int/lit8 v13, v13, 0x7

    div-int/lit8 v3, v13, 0x8

    .line 105
    .local v3, "byteCount":I
    add-int/lit8 v13, v3, 0x1

    new-array v9, v13, [B

    .line 106
    .local v9, "ret":[B
    sget-object v13, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v5, v13, p3

    .line 107
    .local v5, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v13, Lcom/sonymobile/cdma/sms/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v6, v13, p4

    .line 109
    .local v6, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v8, 0x0

    .line 110
    .local v8, "i":I
    move/from16 v11, p1

    .line 111
    .local v11, "septets":I
    mul-int/lit8 v2, p1, 0x7

    .line 112
    .local v2, "bitOffset":I
    :goto_1
    if-ge v8, v7, :cond_6

    if-ge v11, v10, :cond_6

    .line 113
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 114
    .local v4, "c":C
    const/4 v13, -0x1

    invoke-virtual {v5, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 115
    .local v12, "v":I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    .line 116
    const/4 v13, -0x1

    invoke-virtual {v6, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 117
    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    .line 118
    if-eqz p2, :cond_3

    .line 119
    new-instance v13, Lcom/sonymobile/cdma/sms/EncodeException;

    const-string/jumbo v14, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v13, v14}, Lcom/sonymobile/cdma/sms/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 121
    :cond_3
    const/16 v13, 0x20

    const/16 v14, 0x20

    invoke-virtual {v5, v13, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 129
    :cond_4
    :goto_2
    invoke-static {v9, v2, v12}, Lcom/sonymobile/cdma/sms/GsmAlphabet;->packSmsChar([BII)V

    .line 130
    add-int/lit8 v11, v11, 0x1

    .line 131
    add-int/lit8 v8, v8, 0x1

    .line 132
    add-int/lit8 v2, v2, 0x7

    goto :goto_1

    .line 124
    :cond_5
    const/16 v13, 0x1b

    invoke-static {v9, v2, v13}, Lcom/sonymobile/cdma/sms/GsmAlphabet;->packSmsChar([BII)V

    .line 125
    add-int/lit8 v2, v2, 0x7

    .line 126
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 134
    .end local v4    # "c":C
    .end local v12    # "v":I
    :cond_6
    int-to-byte v13, v10

    const/4 v14, 0x0

    aput-byte v13, v9, v14

    .line 135
    return-object v9
.end method
