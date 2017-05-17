.class public Lcom/sonymobile/android/vcard/VCardConfig;
.super Ljava/lang/Object;
.source "VCardConfig.java"


# static fields
.field public static final DEFAULT_EXPORT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_IMPORT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_INTERMEDIATE_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final FLAG_APPEND_TYPE_PARAM:I = 0x4000000

.field public static final FLAG_CONVERT_PHONETIC_NAME_STRINGS:I = 0x8000000

.field private static final FLAG_DOCOMO:I = 0x20000000

.field public static final FLAG_REFRAIN_IMAGE_EXPORT:I = 0x800000

.field public static final FLAG_REFRAIN_PHONE_NUMBER_FORMATTING:I = 0x2000000

.field public static final FLAG_REFRAIN_QP_TO_NAME_PROPERTIES:I = 0x10000000

.field private static final FLAG_USE_ANDROID_PROPERTY:I = -0x80000000

.field private static final FLAG_USE_DEFACT_PROPERTY:I = 0x40000000

.field static final LOG_LEVEL:I = 0x0

.field static final LOG_LEVEL_NONE:I = 0x0

.field static final LOG_LEVEL_PERFORMANCE_MEASUREMENT:I = 0x1

.field static final LOG_LEVEL_SHOW_WARNING:I = 0x2

.field static final LOG_LEVEL_VERBOSE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field public static final NAME_ORDER_DEFAULT:I = 0x0

.field public static final NAME_ORDER_EUROPE:I = 0x4

.field public static final NAME_ORDER_JAPANESE:I = 0x8

.field private static final NAME_ORDER_MASK:I = 0xc

.field public static VCARD_TYPE_DEFAULT:I = 0x0

.field public static final VCARD_TYPE_DOCOMO:I = 0x38000008

.field static final VCARD_TYPE_DOCOMO_STR:Ljava/lang/String; = "docomo"

.field public static final VCARD_TYPE_UNKNOWN:I = 0x0

.field public static final VCARD_TYPE_V21_EUROPE:I = -0x3ffffffc

.field static final VCARD_TYPE_V21_EUROPE_STR:Ljava/lang/String; = "v21_europe"

.field public static final VCARD_TYPE_V21_GENERIC:I = -0x40000000

.field static VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String; = null

.field public static final VCARD_TYPE_V21_JAPANESE:I = -0x3ffffff8

.field public static final VCARD_TYPE_V21_JAPANESE_MOBILE:I = 0x18000008

.field static final VCARD_TYPE_V21_JAPANESE_MOBILE_STR:Ljava/lang/String; = "v21_japanese_mobile"

.field static final VCARD_TYPE_V21_JAPANESE_STR:Ljava/lang/String; = "v21_japanese_utf8"

.field public static final VCARD_TYPE_V30_EUROPE:I = -0x3ffffffb

.field static final VCARD_TYPE_V30_EUROPE_STR:Ljava/lang/String; = "v30_europe"

.field public static final VCARD_TYPE_V30_GENERIC:I = -0x3fffffff

.field static final VCARD_TYPE_V30_GENERIC_STR:Ljava/lang/String; = "v30_generic"

.field public static final VCARD_TYPE_V30_JAPANESE:I = -0x3ffffff7

.field static final VCARD_TYPE_V30_JAPANESE_STR:Ljava/lang/String; = "v30_japanese_utf8"

.field public static final VCARD_TYPE_V40_GENERIC:I = -0x3ffffffe

.field static final VCARD_TYPE_V40_GENERIC_STR:Ljava/lang/String; = "v40_generic"

.field public static final VERSION_21:I = 0x0

.field public static final VERSION_30:I = 0x1

.field public static final VERSION_40:I = 0x2

.field public static final VERSION_MASK:I = 0x3

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

    const-string/jumbo v0, "v21_generic"

    .line 284
    sput-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String;

    .line 389
    sput v2, Lcom/sonymobile/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    .line 395
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    .line 396
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/sonymobile/android/vcard/VCardConfig;->VCARD_TYPE_V21_GENERIC_STR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v30_generic"

    const v2, -0x3fffffff    # -2.0000002f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v21_europe"

    const v2, -0x3ffffffc    # -2.000001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v30_europe"

    const v2, -0x3ffffffb    # -2.0000012f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v21_japanese_utf8"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v30_japanese_utf8"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "v21_japanese_mobile"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "docomo"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    .line 406
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 410
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    return-void
.end method

.method public static appendTypeParamName(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 462
    invoke-static {p0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static getNameOrderType(I)I
    .locals 1

    .prologue
    .line 441
    and-int/lit8 v0, p0, 0xc

    return v0
.end method

.method public static getVCardTypeFromString(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 413
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 414
    sget-object v1, Lcom/sonymobile/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "default"

    .line 416
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "vCard"

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown vCard type String: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget v0, Lcom/sonymobile/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    return v0

    .line 415
    :cond_0
    sget-object v1, Lcom/sonymobile/android/vcard/VCardConfig;->sVCardTypeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 417
    :cond_1
    sget v0, Lcom/sonymobile/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    return v0
.end method

.method public static isDoCoMo(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x20000000

    .line 489
    and-int/2addr v1, p0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isJapaneseDevice(I)Z
    .locals 2

    .prologue
    .line 473
    sget-object v0, Lcom/sonymobile/android/vcard/VCardConfig;->sJapaneseMobileTypeSet:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVersion21(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 425
    and-int/lit8 v1, p0, 0x3

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVersion30(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 429
    and-int/lit8 v1, p0, 0x3

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static isVersion40(I)Z
    .locals 2

    .prologue
    .line 433
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static needsToConvertPhoneticString(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 481
    and-int/2addr v1, p0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static onlyOneNoteFieldIsAvailable(I)Z
    .locals 1

    .prologue
    const v0, 0x38000008

    .line 485
    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static refrainPhoneNumberFormatting(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x2000000

    .line 477
    and-int/2addr v1, p0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldRefrainQPToNameProperties(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-static {p0}, Lcom/sonymobile/android/vcard/VCardConfig;->shouldUseQuotedPrintable(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static shouldUseQuotedPrintable(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-static {p0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static showPerformanceLog()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public static usesAndroidSpecificProperty(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    .line 445
    and-int/2addr v1, p0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static usesDefactProperty(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    .line 449
    and-int/2addr v1, p0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
