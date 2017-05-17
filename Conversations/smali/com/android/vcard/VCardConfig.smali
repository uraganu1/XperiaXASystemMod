.class public Lcom/android/vcard/VCardConfig;
.super Ljava/lang/Object;
.source "VCardConfig.java"


# static fields
.field public static VCARD_TYPE_DEFAULT:I

.field static VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String;

.field private static final sJapaneseMobileTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVCardTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x38000008

    const v5, 0x18000008

    const v4, -0x3ffffff7    # -2.0000021f

    const v3, -0x3ffffff8    # -2.000002f

    const/high16 v2, -0x40000000    # -2.0f

    .line 280
    const-string/jumbo v0, "v21_generic"

    sput-object v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String;

    .line 385
    sput v2, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    .line 392
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v30_generic"

    const v2, -0x3fffffff    # -2.0000002f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v21_europe"

    const v2, -0x3ffffffc    # -2.000001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v30_europe"

    const v2, -0x3ffffffb    # -2.0000012f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v21_japanese_utf8"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v30_japanese_utf8"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v21_japanese_mobile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "docomo"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    .line 402
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNameOrderType(I)I
    .locals 1
    .param p0, "vcardType"    # I

    .prologue
    .line 437
    and-int/lit8 v0, p0, 0xc

    return v0
.end method

.method public static isJapaneseDevice(I)Z
    .locals 2
    .param p0, "vcardType"    # I

    .prologue
    .line 469
    sget-object v0, Lcom/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVersion21(I)Z
    .locals 2
    .param p0, "vcardType"    # I

    .prologue
    const/4 v0, 0x0

    .line 421
    and-int/lit8 v1, p0, 0x3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isVersion30(I)Z
    .locals 2
    .param p0, "vcardType"    # I

    .prologue
    const/4 v0, 0x1

    .line 425
    and-int/lit8 v1, p0, 0x3

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVersion40(I)Z
    .locals 2
    .param p0, "vcardType"    # I

    .prologue
    .line 429
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static refrainPhoneNumberFormatting(I)Z
    .locals 2
    .param p0, "vcardType"    # I

    .prologue
    const/4 v0, 0x0

    .line 473
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
