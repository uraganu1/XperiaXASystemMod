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
    .locals 7

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x0

    .line 88
    new-instance v1, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    invoke-direct {v1}, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;-><init>()V

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "\\s+"

    const-string/jumbo v4, " "

    .line 97
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 99
    array-length v2, v4

    if-lt v2, v0, :cond_2

    .line 105
    array-length v2, v4

    if-gt v0, v2, :cond_4

    :goto_0
    move v2, v3

    .line 108
    :goto_1
    if-lt v2, v0, :cond_5

    move-object v0, v1

    .line 117
    :goto_2
    return-object v0

    .line 90
    :cond_0
    return-object v1

    .line 94
    :cond_1
    invoke-static {p0}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromPhoneNumber(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 103
    :goto_3
    iget-object v2, v1, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    invoke-virtual {p0, v3, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    move-object v0, v1

    .line 104
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_3

    .line 105
    :cond_4
    array-length v0, v4

    goto :goto_0

    .line 109
    :cond_5
    aget-object v5, v4, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 112
    iget-object v5, v1, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    const/16 v6, 0x20

    aput-char v6, v5, v2

    .line 108
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    :cond_6
    iget-object v5, v1, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    aget-object v6, v4, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    aput-char v6, v5, v2

    goto :goto_4
.end method

.method public static getSymbolsFromEmail(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 130
    new-instance v2, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    invoke-direct {v2}, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;-><init>()V

    .line 131
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 137
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 148
    :cond_0
    return-object v2

    .line 132
    :cond_1
    return-object v2

    :cond_2
    const/4 v3, 0x2

    .line 137
    if-ge v1, v3, :cond_0

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x40

    .line 142
    if-ne v3, v4, :cond_4

    .line 138
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/16 v4, 0x2e

    .line 142
    if-eq v3, v4, :cond_3

    .line 143
    iget-object v4, v2, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    int-to-char v3, v3

    aput-char v3, v4, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getSymbolsFromFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    invoke-direct {v0}, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;-><init>()V

    .line 169
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromDisplayName(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    invoke-static {p1}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromPhoneNumber(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {p2}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->getSymbolsFromEmail(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSymbolsFromPhoneNumber(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    .line 56
    new-instance v2, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    invoke-direct {v2}, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;-><init>()V

    .line 58
    invoke-static {p0}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    .line 69
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_2

    .line 73
    :goto_1
    iget-object v3, v2, Lcom/sonymobile/generativeartwork/helper/OutputSymbols;->Symbols:[C

    invoke-virtual {v0, v5, v1, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 75
    return-object v2

    .line 60
    :cond_0
    return-object v2

    :cond_1
    const/4 v3, 0x1

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method

.method private static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 31
    :goto_0
    if-lt v0, v2, :cond_1

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    .line 26
    return-object v0

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0xa

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    .line 35
    if-ne v4, v5, :cond_4

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const/16 v4, 0x61

    .line 39
    if-ge v3, v4, :cond_6

    :cond_3
    const/16 v4, 0x41

    if-ge v3, v4, :cond_8

    .line 31
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v4, 0x2b

    .line 37
    if-ne v3, v4, :cond_2

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 v4, 0x7a

    .line 39
    if-gt v3, v4, :cond_3

    .line 40
    :cond_7
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/generativeartwork/helper/SymbolsUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const/16 v4, 0x5a

    .line 39
    if-le v3, v4, :cond_7

    goto :goto_1
.end method
