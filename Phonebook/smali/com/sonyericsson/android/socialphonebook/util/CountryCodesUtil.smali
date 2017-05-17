.class public Lcom/sonyericsson/android/socialphonebook/util/CountryCodesUtil;
.super Ljava/lang/Object;
.source "CountryCodesUtil.java"


# static fields
.field public static final CHINA_ISO_NAME_2_CHAR:Ljava/lang/String; = "CN"

.field private static sCountryCodesLength:[I

.field private static sNorthAmericanCountryCodes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x64

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CountryCodesUtil;->sCountryCodesLength:[I

    .line 37
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CountryCodesUtil;->sNorthAmericanCountryCodes:[I

    .line 17
    return-void

    .line 20
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x4
        0x4
        0x4
        0x1
        0x4
        0x4
        0x4
        0x4
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x0
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x2
        0x3
        0x3
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x2
        0x2
        0x0
        0x2
        0x3
        0x2
        0x3
        0x3
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x2
        0x3
    .end array-data

    .line 37
    :array_1
    .array-data 4
        0x4da
        0x4de
        0x4f0
        0x4f4
        0x504
        0x53c
        0x541
        0x5a1
        0x5c1
        0x671
        0x680
        0x686
        0x687
        0x694
        0x6b9
        0x6de
        0x6e7
        0x6f8
        0x6fb
        0x711
        0x725
        0x739
        0x74c
        0x74d
        0x754
        0x793
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountryCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    return-object v8

    .line 64
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    return-object v8

    .line 68
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 69
    .local v3, "len":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 71
    .local v0, "ch":C
    const/16 v5, 0x37

    if-ne v0, v5, :cond_2

    .line 73
    const-string/jumbo v5, "7"

    return-object v5

    .line 74
    :cond_2
    const/16 v5, 0x31

    if-ne v0, v5, :cond_4

    .line 76
    if-lt v3, v7, :cond_3

    .line 77
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, "contryCode":I
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/util/CountryCodesUtil;->sNorthAmericanCountryCodes:[I

    invoke-static {v5, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-ltz v5, :cond_3

    .line 79
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 83
    .end local v1    # "contryCode":I
    :cond_3
    const-string/jumbo v5, "1"

    return-object v5

    .line 84
    :cond_4
    if-lt v3, v9, :cond_5

    .line 86
    invoke-virtual {p0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 87
    .local v2, "index":I
    sget-object v5, Lcom/sonyericsson/android/socialphonebook/util/CountryCodesUtil;->sCountryCodesLength:[I

    aget v4, v5, v2

    .line 89
    .local v4, "size":I
    if-lez v4, :cond_5

    if-lt v3, v4, :cond_5

    .line 90
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 94
    .end local v2    # "index":I
    .end local v4    # "size":I
    :cond_5
    return-object v8
.end method

.method public static getPhoneNumberWithoutCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 104
    if-eqz p0, :cond_1

    const-string/jumbo v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/CountryCodesUtil;->getCountryCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    :cond_0
    return-object v1

    .line 105
    .end local v0    # "countryCode":Ljava/lang/String;
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static isChineseOperatorSim(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const-string/jumbo v2, "phone"

    .line 137
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 139
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "simCountryIso":Ljava/lang/String;
    const-string/jumbo v2, "CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static isCountryChina(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "countryIso":Ljava/lang/String;
    const-string/jumbo v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x1

    return v1

    .line 127
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
