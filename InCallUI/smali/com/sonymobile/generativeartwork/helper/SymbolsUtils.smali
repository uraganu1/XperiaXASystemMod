.class public Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;
.super Ljava/lang/Object;
.source "SymbolsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSymbolsFromDisplayName(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 9
    .param p0, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 88
    new-instance v3, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    invoke-direct {v3}, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;-><init>()V

    .line 89
    .local v3, "out":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    return-object v3

    .line 93
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    invoke-static {p0}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromPhoneNumber(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v3

    .line 117
    :cond_1
    :goto_0
    return-object v3

    .line 97
    :cond_2
    const-string/jumbo v5, "\\s+"

    const-string/jumbo v6, " "

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "delimitedName":[Ljava/lang/String;
    array-length v5, v0

    if-ge v5, v8, :cond_4

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v8, v5, :cond_3

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 103
    .local v2, "numChars":I
    :goto_1
    iget-object v5, v3, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    invoke-virtual {p0, v7, v2, v5, v7}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 102
    .end local v2    # "numChars":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "numChars":I
    goto :goto_1

    .line 105
    .end local v2    # "numChars":I
    :cond_4
    array-length v5, v0

    if-le v8, v5, :cond_5

    .line 106
    array-length v4, v0

    .line 108
    .local v4, "symbolNum":I
    :goto_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v4, :cond_1

    .line 109
    aget-object v5, v0, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 110
    iget-object v5, v3, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    aget-object v6, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v1

    .line 108
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 107
    .end local v1    # "i":I
    .end local v4    # "symbolNum":I
    :cond_5
    const/4 v4, 0x2

    .restart local v4    # "symbolNum":I
    goto :goto_2

    .line 112
    .restart local v1    # "i":I
    :cond_6
    iget-object v5, v3, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    const/16 v6, 0x20

    aput-char v6, v5, v1

    goto :goto_4
.end method

.method public static getSymbolsFromEmail(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 5
    .param p0, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v1, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    invoke-direct {v1}, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;-><init>()V

    .line 131
    .local v1, "out":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    return-object v1

    .line 135
    :cond_0
    const/4 v2, 0x0

    .line 137
    .local v2, "symbolNum":I
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 142
    .local v3, "testSymbol":C
    const/16 v4, 0x40

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    .line 143
    iget-object v4, v1, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    aput-char v3, v4, v2

    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 138
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v3    # "testSymbol":C
    :cond_2
    return-object v1
.end method

.method public static getSymbolsFromFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 2
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;-><init>()V

    .line 169
    .local v0, "out":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    invoke-static {p0}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromDisplayName(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    .line 177
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    invoke-static {p1}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromPhoneNumber(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-static {p2}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromEmail(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSymbolsFromPhoneNumber(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 56
    new-instance v2, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    invoke-direct {v2}, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;-><init>()V

    .line 58
    .local v2, "out":Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    invoke-static {p0}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    return-object v2

    .line 65
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1

    .line 66
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v4, v3, :cond_2

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 73
    .local v1, "numChars":I
    :goto_0
    iget-object v3, v2, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    invoke-virtual {v0, v5, v1, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 75
    return-object v2

    .line 71
    .end local v1    # "numChars":I
    :cond_2
    const/4 v1, 0x2

    .restart local v1    # "numChars":I
    goto :goto_0
.end method

.method private static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    const-string/jumbo v5, ""

    return-object v5

    .line 29
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 31
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 34
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 35
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 39
    :cond_3
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_4

    .line 40
    :goto_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 39
    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    goto :goto_2

    .line 43
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
