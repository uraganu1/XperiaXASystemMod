.class public final Lcom/sonymobile/generativeartwork/language/LanguageRules;
.super Ljava/lang/Object;
.source "LanguageRules.java"


# static fields
.field private static final ARABIC_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

.field private static final CJK_STROKES:Ljava/lang/Character$UnicodeBlock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 31
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    sput-object v0, Lcom/sonymobile/generativeartwork/language/LanguageRules;->CJK_STROKES:Ljava/lang/Character$UnicodeBlock;

    .line 32
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

    sput-object v0, Lcom/sonymobile/generativeartwork/language/LanguageRules;->ARABIC_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    .line 34
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "CJK_STROKES"

    .line 28
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->forName(Ljava/lang/String;)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/language/LanguageRules;->CJK_STROKES:Ljava/lang/Character$UnicodeBlock;

    const-string/jumbo v0, "ARABIC_SUPPLEMENT"

    .line 29
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->forName(Ljava/lang/String;)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/language/LanguageRules;->ARABIC_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lcom/sonymobile/generativeartwork/language/LanguageData;)V
    .locals 10
    .param p0, "data"    # Lcom/sonymobile/generativeartwork/language/LanguageData;

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0x20

    const/4 v6, 0x0

    .line 45
    iput-boolean v7, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->isLanguageAllowed:Z

    .line 46
    iput v6, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->numSkippedLetters:I

    .line 59
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 68
    iget-boolean v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->isLanguageAllowed:Z

    if-nez v5, :cond_7

    .line 114
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    array-length v5, v5

    iput v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->numSkippedLetters:I

    const/4 v1, 0x0

    .line 115
    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    array-length v5, v5

    if-lt v1, v5, :cond_e

    .line 119
    :cond_0
    return-void

    .line 59
    .end local v1    # "i":I
    :cond_1
    aget-char v5, v0, v2

    int-to-char v4, v5

    .line 60
    .local v4, "letter":C
    iget-boolean v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->isLanguageAllowed:Z

    if-nez v5, :cond_4

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    :goto_2
    move v5, v7

    :goto_3
    iput-boolean v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->isLanguageAllowed:Z

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_4
    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isSymbol(C)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_6

    :goto_4
    move v5, v6

    goto :goto_3

    :cond_6
    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isLatin(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isCyrillic(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isGreek(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isArmenian(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isGeorgian(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isTamil(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isEastAsianSymbols(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isArabic(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isHebrew(C)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_4

    .line 75
    .end local v4    # "letter":C
    :cond_7
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v5, v5, v6

    invoke-static {v5}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isEastAsianSymbols(C)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 78
    :cond_8
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aput-char v9, v5, v7

    :goto_5
    const/4 v1, 0x0

    .line 93
    .restart local v1    # "i":I
    :goto_6
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 94
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v5, v5, v1

    int-to-char v4, v5

    .line 95
    .restart local v4    # "letter":C
    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isLatin(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 97
    :cond_9
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    aput-char v7, v5, v1

    .line 101
    :goto_7
    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isSymbol(C)Z

    move-result v5

    if-nez v5, :cond_c

    .line 109
    :goto_8
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v5, v5, v1

    if-eq v5, v9, :cond_d

    .line 93
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 75
    .end local v1    # "i":I
    .end local v4    # "letter":C
    :cond_a
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v5, v5, v6

    invoke-static {v5}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isHebrew(C)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v5, v5, v6

    invoke-static {v5}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isArabic(C)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_5

    .line 95
    .restart local v1    # "i":I
    .restart local v4    # "letter":C
    :cond_b
    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isCyrillic(C)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isGreek(C)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v4}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isArmenian(C)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_7

    .line 102
    :cond_c
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aput-char v9, v5, v1

    goto :goto_8

    .line 110
    :cond_d
    iget v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->numSkippedLetters:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->numSkippedLetters:I

    goto :goto_9

    .line 116
    .end local v4    # "letter":C
    :cond_e
    iget-object v5, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aput-char v9, v5, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public static getColorPaletteId(Lcom/sonymobile/generativeartwork/language/LanguageData;I)I
    .locals 4
    .param p0, "data"    # Lcom/sonymobile/generativeartwork/language/LanguageData;
    .param p1, "paletteSize"    # I

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    aget-char v0, v0, v3

    iget-object v1, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    const/4 v2, 0x1

    aget-char v1, v1, v2

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    aget-char v2, v2, v3

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-static {v0, v1, p1}, Lcom/sonymobile/generativeartwork/utils/Utils;->generateRand(CCI)I

    move-result v0

    return v0
.end method

.method public static getFirstStockImageId(Lcom/sonymobile/generativeartwork/language/LanguageData;)I
    .locals 4
    .param p0, "data"    # Lcom/sonymobile/generativeartwork/language/LanguageData;

    .prologue
    .line 128
    invoke-static {}, Lcom/sonymobile/generativeartwork/gl/LetterStock;->getNumImages()I

    move-result v0

    .line 129
    .local v0, "stockSize":I
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    const/4 v3, 0x1

    aget-char v2, v2, v3

    invoke-static {v1, v2, v0}, Lcom/sonymobile/generativeartwork/utils/Utils;->generateRand(CCI)I

    move-result v1

    return v1
.end method

.method public static getSecondStockImageId(Lcom/sonymobile/generativeartwork/language/LanguageData;)I
    .locals 5
    .param p0, "data"    # Lcom/sonymobile/generativeartwork/language/LanguageData;

    .prologue
    const/4 v3, 0x1

    .line 139
    invoke-static {}, Lcom/sonymobile/generativeartwork/gl/LetterStock;->getNumImages()I

    move-result v0

    .line 140
    .local v0, "stockSize":I
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    aget-char v1, v1, v3

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    aget-char v2, v2, v3

    iget-object v3, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    const/4 v4, 0x0

    aget-char v3, v3, v4

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-static {v1, v2, v0}, Lcom/sonymobile/generativeartwork/utils/Utils;->generateRand(CCI)I

    move-result v1

    return v1
.end method

.method private static isArabic(C)Z
    .locals 3
    .param p0, "chr"    # C

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 232
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/sonymobile/generativeartwork/language/LanguageRules;->ARABIC_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_B:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private static isArmenian(C)Z
    .locals 2
    .param p0, "chr"    # C

    .prologue
    .line 210
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 211
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARMENIAN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isCyrillic(C)Z
    .locals 2
    .param p0, "chr"    # C

    .prologue
    .line 200
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 201
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CYRILLIC:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isEastAsianSymbols(C)Z
    .locals 3
    .param p0, "chr"    # C

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 173
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->IDEOGRAPHIC_DESCRIPTION_CHARACTERS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sonymobile/generativeartwork/language/LanguageRules;->CJK_STROKES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->YIJING_HEXAGRAM_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0
.end method

.method private static isGeorgian(C)Z
    .locals 2
    .param p0, "chr"    # C

    .prologue
    .line 216
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 217
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GEORGIAN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isGreek(C)Z
    .locals 2
    .param p0, "chr"    # C

    .prologue
    .line 205
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 206
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GREEK:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isHebrew(C)Z
    .locals 2
    .param p0, "chr"    # C

    .prologue
    .line 221
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 222
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HEBREW:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isLatin(C)Z
    .locals 3
    .param p0, "chr"    # C

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 193
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private static isSymbol(C)Z
    .locals 2
    .param p0, "chr"    # C

    .prologue
    const/4 v0, 0x0

    .line 239
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isLatin(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isTamil(C)Z
    .locals 2
    .param p0, "chr"    # C

    .prologue
    .line 226
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 227
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->TAMIL:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
