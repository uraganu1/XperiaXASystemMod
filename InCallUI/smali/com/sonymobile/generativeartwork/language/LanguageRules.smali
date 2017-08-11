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

    if-lt v0, v1, :cond_0

    .line 28
    const-string/jumbo v0, "CJK_STROKES"

    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->forName(Ljava/lang/String;)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/language/LanguageRules;->CJK_STROKES:Ljava/lang/Character$UnicodeBlock;

    .line 29
    const-string/jumbo v0, "ARABIC_SUPPLEMENT"

    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->forName(Ljava/lang/String;)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/generativeartwork/language/LanguageRules;->ARABIC_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    .line 21
    :goto_0
    return-void

    .line 31
    :cond_0
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    sput-object v0, Lcom/sonymobile/generativeartwork/language/LanguageRules;->CJK_STROKES:Ljava/lang/Character$UnicodeBlock;

    .line 32
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

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
    .locals 9
    .param p0, "data"    # Lcom/sonymobile/generativeartwork/language/LanguageData;

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 45
    iput-boolean v3, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->isLanguageAllowed:Z

    .line 46
    iput v4, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->numSkippedLetters:I

    .line 59
    iget-object v6, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_4

    aget-char v1, v6, v5

    .line 60
    .local v1, "letter":C
    iget-boolean v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->isLanguageAllowed:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isSymbol(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    .line 60
    if-nez v2, :cond_1

    .line 62
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isLatin(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isCyrillic(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isGreek(C)Z

    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isArmenian(C)Z

    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 63
    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isGeorgian(C)Z

    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 64
    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isTamil(C)Z

    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 64
    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isEastAsianSymbols(C)Z

    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 64
    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isArabic(C)Z

    move-result v2

    .line 62
    if-nez v2, :cond_2

    .line 65
    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isHebrew(C)Z

    move-result v2

    .line 60
    :goto_1
    iput-boolean v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->isLanguageAllowed:Z

    .line 59
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 60
    goto :goto_1

    :cond_2
    move v2, v3

    .line 62
    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_1

    .line 68
    .end local v1    # "letter":C
    :cond_4
    iget-boolean v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->isLanguageAllowed:Z

    if-eqz v2, :cond_b

    .line 75
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v2, v2, v4

    invoke-static {v2}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isEastAsianSymbols(C)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v2, v2, v4

    invoke-static {v2}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isHebrew(C)Z

    move-result v2

    if-nez v2, :cond_5

    .line 76
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v2, v2, v4

    invoke-static {v2}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isArabic(C)Z

    move-result v2

    .line 75
    if-eqz v2, :cond_6

    .line 78
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aput-char v8, v2, v3

    .line 93
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    array-length v2, v2

    if-ge v0, v2, :cond_c

    .line 94
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v1, v2, v0

    .line 95
    .restart local v1    # "letter":C
    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isLatin(C)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isCyrillic(C)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isGreek(C)Z

    move-result v2

    if-nez v2, :cond_7

    .line 96
    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isArmenian(C)Z

    move-result v2

    .line 95
    if-eqz v2, :cond_8

    .line 97
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 101
    :cond_8
    invoke-static {v1}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isSymbol(C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 102
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aput-char v8, v2, v0

    .line 109
    :cond_9
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aget-char v2, v2, v0

    if-ne v2, v8, :cond_a

    .line 110
    iget v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->numSkippedLetters:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->numSkippedLetters:I

    .line 93
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 114
    .end local v0    # "i":I
    .end local v1    # "letter":C
    :cond_b
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    array-length v2, v2

    iput v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->numSkippedLetters:I

    .line 115
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    array-length v2, v2

    if-ge v0, v2, :cond_c

    .line 116
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mCharacter:[C

    aput-char v8, v2, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 43
    :cond_c
    return-void
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

    .line 161
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    const/4 v2, 0x1

    aget-char v1, v1, v2

    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    aget-char v2, v2, v3

    add-int/2addr v1, v2

    int-to-char v1, v1

    .line 160
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

    .line 141
    iget-object v2, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    aget-char v2, v2, v3

    iget-object v3, p0, Lcom/sonymobile/generativeartwork/language/LanguageData;->mOriginalChars:[C

    const/4 v4, 0x0

    aget-char v3, v3, v4

    add-int/2addr v2, v3

    int-to-char v2, v2

    .line 140
    invoke-static {v1, v2, v0}, Lcom/sonymobile/generativeartwork/utils/Utils;->generateRand(CCI)I

    move-result v1

    return v1
.end method

.method private static isArabic(C)Z
    .locals 2
    .param p0, "chr"    # C

    .prologue
    .line 231
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 232
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonymobile/generativeartwork/language/LanguageRules;->ARABIC_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 232
    if-nez v1, :cond_0

    .line 234
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ARABIC_PRESENTATION_FORMS_B:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 232
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

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
    .locals 2
    .param p0, "chr"    # C

    .prologue
    .line 167
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 173
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 175
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->IDEOGRAPHIC_DESCRIPTION_CHARACTERS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 176
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 177
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 177
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 178
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 179
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 180
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 181
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 181
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 182
    sget-object v1, Lcom/sonymobile/generativeartwork/language/LanguageRules;->CJK_STROKES:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 183
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 184
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 185
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 186
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 187
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_0

    .line 188
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->YIJING_HEXAGRAM_SYMBOLS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 173
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
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
    .locals 2
    .param p0, "chr"    # C

    .prologue
    .line 192
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 193
    .local v0, "blck":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 193
    if-nez v1, :cond_0

    .line 195
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 193
    if-nez v1, :cond_0

    .line 196
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v1}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 193
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isSymbol(C)Z
    .locals 1
    .param p0, "chr"    # C

    .prologue
    .line 239
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonymobile/generativeartwork/language/LanguageRules;->isLatin(C)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
