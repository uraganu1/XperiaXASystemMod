.class public final Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;
.super Ljava/lang/Object;
.source "LocaleUtil.java"


# static fields
.field private static final JAPANESE_NAME_SEPERATOR:Ljava/lang/String; = "  / "

.field private static final TAG:Ljava/lang/String;

.field private static final sDigitTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocaleType:I

.field private static final unsupportedSmartSearchLanguages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x40

    .line 19
    const-class v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    .line 25
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ja_JP"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "zh_CN"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mk_MK"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ru_RU"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "bg_BG"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "kk_KZ"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "uk_UA"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ko_KR"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "zh_TW"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "zh_HK"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    const-string/jumbo v1, "iw_IL"

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    .line 41
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "ar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "hy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "az"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "be"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "fa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "ka"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "el"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "hi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "kn"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "ml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "mr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "ta"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "tt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "te"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    const-string/jumbo v1, "th"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sLocaleType:I

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableNameForJP(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .param p0, "contacts"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x4

    .line 101
    const/16 v2, 0xc

    .line 100
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_0
    :goto_0
    return-object v1

    .line 105
    :cond_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLocaleString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current locale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocaleType()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sLocaleType:I

    return v0
.end method

.method public static initLocaleType()I
    .locals 3

    .prologue
    .line 66
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->getLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 67
    .local v0, "type":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sLocaleType:I

    .line 72
    :goto_0
    sget v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sLocaleType:I

    return v1

    .line 70
    :cond_0
    const/4 v1, 0x1

    sput v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sLocaleType:I

    goto :goto_0
.end method

.method public static isJapanLocale()Z
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->initLocaleType()I

    move-result v0

    .line 62
    .local v0, "type":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJapaneseLocaleChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "lastLocaleString"    # Ljava/lang/String;
    .param p1, "currentLocaleString"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 118
    .local v1, "isLastJapan":Z
    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    .local v0, "isCurrentJapan":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-eq v1, v0, :cond_1

    .line 120
    const/4 v2, 0x1

    return v2

    .line 122
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static isSmartSearchLanguageSupported()Z
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "language":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->unsupportedSmartSearchLanguages:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static needPromptDialPad()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 85
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->sDigitTypeMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/smartsearch/LocaleUtil;->getLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 87
    .local v0, "type":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 87
    :cond_0
    return v1
.end method
