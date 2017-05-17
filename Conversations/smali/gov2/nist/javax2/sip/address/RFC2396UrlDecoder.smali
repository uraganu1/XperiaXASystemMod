.class public Lgov2/nist/javax2/sip/address/RFC2396UrlDecoder;
.super Ljava/lang/Object;
.source "RFC2396UrlDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x25

    .line 61
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 62
    .local v7, "translatedUri":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x3

    new-array v2, v9, [B

    .local v2, "encodedchars":[B
    const/4 v4, 0x0

    .line 64
    .local v4, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "length":I
    const/4 v3, 0x0

    .line 66
    .local v3, "encodedcharsLength":I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 105
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 67
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_2

    .line 101
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_1
    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v4, 0x3

    :try_start_0
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-byte v9, v9

    int-to-byte v8, v9

    .line 76
    .local v8, "x":B
    int-to-byte v9, v8

    aput-byte v9, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    add-int/lit8 v3, v3, 0x1

    .line 83
    add-int/lit8 v4, v4, 0x3

    .line 72
    .end local v8    # "x":B
    :cond_2
    if-lt v4, v5, :cond_4

    .line 90
    :cond_3
    :try_start_1
    new-instance v6, Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v6, v2, v9, v3, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 91
    .local v6, "translatedPart":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    .line 98
    goto :goto_0

    .line 72
    .end local v6    # "translatedPart":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_3

    .line 73
    add-int/lit8 v9, v4, 0x2

    if-lt v9, v5, :cond_1

    .line 85
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "% character should be followed by 2 hexadecimal characters."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 81
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Illegal hex characters in pattern %"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v4, 0x1

    add-int/lit8 v12, v4, 0x3

    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 97
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "Problem in decodePath: UTF-8 encoding not supported."

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
