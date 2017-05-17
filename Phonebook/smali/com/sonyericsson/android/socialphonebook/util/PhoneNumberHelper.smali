.class public final Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;
.super Ljava/lang/Object;
.source "PhoneNumberHelper.java"


# static fields
.field private static final CACHE_ENTRY_SIZE:I = 0x1f4

.field private static final COUNTRY_DETECTOR:Ljava/lang/String; = "country_detector"

.field private static final MATCHING_METHOD_SOFTBANK:Ljava/lang/String; = "softbank"

.field private static sCountryCode:Ljava/lang/String;

.field private static sFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->sCountryCode:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/CachedPhoneNumberFormatter;

    .line 33
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->sCountryCode:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1f4

    .line 32
    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/CachedPhoneNumberFormatter;-><init>(Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->sFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLtrDirection(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "chrSeq"    # Ljava/lang/CharSequence;

    .prologue
    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "\u202a"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string/jumbo v1, "\u202c"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "brand"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 118
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "brand"    # Ljava/lang/String;
    .param p3, "isNumberMatchingMethodStrict"    # Z

    .prologue
    .line 125
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 124
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Z
    .locals 1
    .param p0, "number1"    # Ljava/lang/String;
    .param p1, "number2"    # Ljava/lang/String;
    .param p2, "brand"    # Ljava/lang/String;
    .param p3, "isNumberMatchingMethodStrict"    # Z
    .param p4, "collapseCallLogMatchingMethod"    # Ljava/lang/String;
    .param p5, "number1Presentation"    # I

    .prologue
    .line 131
    invoke-static {p0, p5}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isNotCallBackNumber(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 139
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    const-string/jumbo v0, "softbank"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    if-eqz v0, :cond_3

    .line 141
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->normalizeSoftbankNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->normalizeSoftbankNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 146
    :cond_3
    invoke-static {p2, p3, p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->shouldUseStrictMatching(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 150
    :cond_4
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/CountryCodesUtil;->getPhoneNumberWithoutCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/CountryCodesUtil;->getPhoneNumberWithoutCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static checkCountryCode(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->sCountryCode:Ljava/lang/String;

    .line 62
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/CachedPhoneNumberFormatter;

    new-instance v2, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->sCountryCode:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberFormatter;-><init>(Ljava/lang/String;)V

    .line 63
    const/16 v3, 0x1f4

    .line 62
    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/CachedPhoneNumberFormatter;-><init>(Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;I)V

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->sFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    .line 55
    :cond_1
    return-void
.end method

.method public static createPhoneNumberTextWatcher(Landroid/content/Context;)Landroid/text/TextWatcher;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->checkCountryCode(Landroid/content/Context;)V

    .line 114
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->sCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/PhoneNumberTextWatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static formatPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->checkCountryCode(Landroid/content/Context;)V

    .line 73
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->sFormatter:Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/formatting/phonenumber/Formatter;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPhoneNumberForAccessibility(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "numberStripped":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-char v0, v4, v3

    .line 88
    .local v0, "c":C
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "c":C
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 45
    if-nez p0, :cond_0

    .line 46
    return-object v2

    .line 48
    :cond_0
    const-string/jumbo v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 49
    .local v0, "detector":Landroid/location/CountryDetector;
    if-nez v0, :cond_1

    .line 50
    return-object v2

    .line 52
    :cond_1
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static normalizeSoftbankNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/Constants;->SOFTBANK_DIALING_PREFIXES:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "prefix$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 177
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    const-string/jumbo v2, "00"

    const-string/jumbo v3, "+"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 181
    :cond_2
    const-string/jumbo v2, "+81"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 182
    const-string/jumbo v2, "\\+81"

    const-string/jumbo v3, "0"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 185
    :cond_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 187
    return-object p0
.end method

.method public static removeLtrDirection(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "textToRemoveLtr"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string/jumbo v0, "\\u202A|\\u202C"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static shouldUseStrictMatching(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "brand"    # Ljava/lang/String;
    .param p1, "isNumberMatchingMethodStrict"    # Z
    .param p2, "number1"    # Ljava/lang/String;
    .param p3, "number2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 208
    :cond_0
    return v1

    .line 210
    :cond_1
    const-string/jumbo v0, "+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    :cond_2
    if-eqz p1, :cond_4

    .line 216
    return v2

    .line 211
    :cond_3
    const-string/jumbo v0, "docomo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 210
    if-eqz v0, :cond_2

    .line 212
    return v2

    .line 219
    :cond_4
    return v1
.end method
