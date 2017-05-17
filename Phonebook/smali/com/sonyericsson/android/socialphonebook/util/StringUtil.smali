.class public Lcom/sonyericsson/android/socialphonebook/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 71
    if-nez p0, :cond_0

    .line 72
    return-object v2

    .line 74
    :cond_0
    move-object v1, p0

    .line 76
    .local v1, "dial":Ljava/lang/String;
    const-string/jumbo v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "at":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 78
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_1
    return-object v1
.end method

.method public static getUriName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "at":I
    if-ne v0, v3, :cond_0

    .line 54
    const-string/jumbo v2, "%40"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 57
    :cond_0
    if-eq v0, v3, :cond_1

    .line 58
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 61
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 40
    if-eqz p0, :cond_1

    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trimIncompleteSurrogatePairs(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "newText":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 98
    .local v3, "wasPreviousCharLowSurrogate":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .end local v3    # "wasPreviousCharLowSurrogate":Z
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 101
    .local v0, "currentChar":C
    if-nez v3, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    .line 98
    .local v3, "wasPreviousCharLowSurrogate":Z
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 106
    .end local v3    # "wasPreviousCharLowSurrogate":Z
    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 111
    .end local v0    # "currentChar":C
    :cond_3
    if-eqz v3, :cond_4

    .line 112
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 114
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 116
    .end local v1    # "i":I
    .end local v2    # "newText":Ljava/lang/StringBuilder;
    :cond_5
    return-object p0
.end method

.method public static trimTrailingNul(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    if-nez p0, :cond_0

    .line 18
    return-object v1

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 22
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 26
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
