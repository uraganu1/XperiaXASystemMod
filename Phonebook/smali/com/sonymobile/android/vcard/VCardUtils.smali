.class public Lcom/sonymobile/android/vcard/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/vcard/VCardUtils$TextUtilsPort;,
        Lcom/sonymobile/android/vcard/VCardUtils$PhoneNumberUtilsPort;,
        Lcom/sonymobile/android/vcard/VCardUtils$QuotedPrintableCodecPort;,
        Lcom/sonymobile/android/vcard/VCardUtils$DecoderException;
    }
.end annotation


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final LINE_FEED_NOT_PRECEDED_BY_CARRIAGE_RETURN_PATTERN:Ljava/lang/String; = "(?<!\r)\n"

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final sEscapeIndicatorsV30:[I

.field private static final sEscapeIndicatorsV40:[I

.field private static final sKnownImPropNameMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypeMap_StoI:Ljava/util/Map;
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

.field private static final sKnownPhoneTypesMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMobilePhoneLabelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneTypesUnknownToContactsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 140
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "CAR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CAR"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PAGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "PAGER"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ISDN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "ISDN"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "HOME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "WORK"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CELL"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CALLBACK"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "COMPANY-MAIN"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "RADIO"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "TTY-TDD"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "ASSISTANT"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    .line 163
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "MODEM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "MSG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "BBS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "VIDEO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    .line 169
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-GOOGLE-TALK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-NETMEETING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "MOBILE"

    aput-object v2, v1, v6

    const-string/jumbo v2, "\u643a\u5e2f\u96fb\u8a71"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u643a\u5e2f"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u30b1\u30a4\u30bf\u30a4"

    aput-object v2, v1, v7

    const-string/jumbo v2, "\uff79\uff72\uff80\uff72"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    .line 491
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Character;

    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    .line 593
    new-array v0, v8, [I

    const/16 v1, 0x3a

    aput v1, v0, v6

    const/16 v1, 0x3b

    aput v1, v0, v4

    const/16 v1, 0x2c

    aput v1, v0, v5

    const/16 v1, 0x20

    aput v1, v0, v7

    sput-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    .line 597
    new-array v0, v5, [I

    const/16 v1, 0x3b

    aput v1, v0, v6

    const/16 v1, 0x3a

    aput v1, v0, v4

    sput-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    return-void
.end method

.method public static appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 728
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    .line 729
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 730
    :cond_0
    return v1

    .line 729
    :cond_1
    if-ne v0, v4, :cond_2

    :goto_0
    move v0, v1

    .line 732
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 737
    return v4

    .line 729
    :cond_2
    if-nez v0, :cond_0

    goto :goto_0

    .line 733
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_4

    .line 732
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 734
    :cond_4
    return v1
.end method

.method public static varargs areAllEmpty([Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 704
    if-eqz p0, :cond_0

    .line 708
    array-length v2, p0

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 713
    return v4

    .line 705
    :cond_0
    return v4

    .line 708
    :cond_1
    aget-object v3, p0, v0

    .line 709
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_2
    return v1
.end method

.method public static constructListFromValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonymobile/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static constructListFromValue(Ljava/lang/String;IZ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x3b

    const/4 v0, 0x0

    .line 390
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 393
    :goto_0
    if-lt v0, v4, :cond_0

    .line 428
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    return-object v3

    .line 394
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v5, v2

    const/16 v2, 0x5c

    .line 395
    if-eq v5, v2, :cond_2

    .line 421
    :cond_1
    if-eq v5, v8, :cond_9

    .line 425
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_2
    add-int/lit8 v2, v4, -0x1

    if-ge v0, v2, :cond_1

    .line 396
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-char v2, v2

    .line 398
    if-nez p2, :cond_4

    .line 402
    :cond_3
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 404
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 407
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 411
    :goto_2
    invoke-static {v2, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->unescapeCharacter(CI)Ljava/lang/String;

    move-result-object v2

    .line 414
    :goto_3
    if-nez v2, :cond_8

    .line 418
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 398
    :cond_4
    if-ne v2, v8, :cond_3

    .line 400
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 403
    :cond_5
    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 405
    :cond_6
    invoke-static {v2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    const-string/jumbo v6, "vCard"

    const-string/jumbo v7, "Unknown vCard type"

    .line 409
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 415
    :cond_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    .line 344
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v1, 0x0

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/android/vcard/VCardUtils;->sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 353
    const/4 v0, 0x1

    .line 354
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    :goto_0
    array-length v5, v4

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_1

    .line 368
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 374
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :cond_0
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    .line 358
    :cond_1
    aget-object v6, v4, v2

    .line 359
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 358
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 360
    :cond_2
    if-nez v0, :cond_3

    .line 363
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    :goto_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    move v0, v1

    .line 361
    goto :goto_4

    .line 369
    :cond_4
    if-eqz v0, :cond_5

    .line 372
    :goto_5
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 370
    :cond_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public static containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/16 v10, 0x3a

    const/16 v9, 0x30

    const/16 v8, 0x2d

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 514
    if-eqz p0, :cond_1

    .line 524
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 539
    return v7

    .line 515
    :cond_1
    return v7

    .line 524
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 525
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v2

    .line 529
    :goto_0
    if-ge v1, v4, :cond_0

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    const/16 v6, 0x61

    .line 531
    if-le v6, v5, :cond_6

    :cond_3
    const/16 v6, 0x41

    if-le v6, v5, :cond_7

    :cond_4
    if-le v9, v5, :cond_8

    :cond_5
    if-ne v5, v8, :cond_9

    .line 529
    :goto_1
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_0

    :cond_6
    const/16 v6, 0x7b

    .line 531
    if-ge v5, v6, :cond_3

    goto :goto_1

    :cond_7
    const/16 v6, 0x5b

    if-ge v5, v6, :cond_4

    goto :goto_1

    :cond_8
    if-ge v5, v10, :cond_5

    goto :goto_1

    .line 535
    :cond_9
    return v2
.end method

.method public static varargs containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 507
    if-eqz p0, :cond_0

    .line 510
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 508
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/16 v8, 0x7e

    const/16 v7, 0x20

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 471
    if-eqz p0, :cond_1

    .line 476
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 488
    return v6

    .line 472
    :cond_1
    return v6

    .line 476
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 477
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v2

    .line 481
    :goto_0
    if-ge v1, v4, :cond_0

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 483
    if-le v7, v5, :cond_4

    .line 484
    :cond_3
    return v2

    .line 483
    :cond_4
    if-gt v5, v8, :cond_3

    .line 481
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_0
.end method

.method public static varargs containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 464
    if-eqz p0, :cond_0

    .line 467
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 465
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static containsOnlyPrintableAscii(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 440
    if-eqz p0, :cond_1

    .line 443
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 451
    return v4

    .line 441
    :cond_1
    return v4

    .line 443
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    return v3
.end method

.method public static varargs containsOnlyPrintableAscii([Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 433
    if-eqz p0, :cond_0

    .line 436
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 434
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static containsOnlyWhiteSpaces(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 550
    if-eqz p0, :cond_1

    .line 553
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 564
    return v6

    .line 551
    :cond_1
    return v6

    .line 553
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    move v1, v2

    .line 558
    :goto_0
    if-ge v1, v4, :cond_0

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 558
    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    goto :goto_0

    .line 560
    :cond_3
    return v2
.end method

.method public static varargs containsOnlyWhiteSpaces([Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 543
    if-eqz p0, :cond_0

    .line 546
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyWhiteSpaces(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 544
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sonymobile/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 877
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 880
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 881
    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 884
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 885
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 887
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 888
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 892
    :cond_0
    :goto_0
    return-object v0

    .line 878
    :cond_1
    return-object p0

    .line 888
    :cond_2
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 890
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    const-string/jumbo v0, "vCard"

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to encode: charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 895
    return-object v0
.end method

.method public static final getAppropriateParser(I)Lcom/sonymobile/android/vcard/VCardParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-static {p0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    invoke-static {p0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 863
    invoke-static {p0}, Lcom/sonymobile/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 866
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    const-string/jumbo v1, "Version is not specified"

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_0
    new-instance v0, Lcom/sonymobile/android/vcard/VCardParser_V21;

    invoke-direct {v0}, Lcom/sonymobile/android/vcard/VCardParser_V21;-><init>()V

    return-object v0

    .line 862
    :cond_1
    new-instance v0, Lcom/sonymobile/android/vcard/VCardParser_V30;

    invoke-direct {v0}, Lcom/sonymobile/android/vcard/VCardParser_V30;-><init>()V

    return-object v0

    .line 864
    :cond_2
    new-instance v0, Lcom/sonymobile/android/vcard/VCardParser_V40;

    invoke-direct {v0}, Lcom/sonymobile/android/vcard/VCardParser_V40;-><init>()V

    return-object v0
.end method

.method public static getPhoneNumberFormat(I)I
    .locals 1

    .prologue
    .line 335
    invoke-static {p0}, Lcom/sonymobile/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 338
    return v0

    :cond_0
    const/4 v0, 0x2

    .line 336
    return v0
.end method

.method public static getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x7

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 199
    if-eqz p1, :cond_0

    :goto_0
    const/4 v1, -0x1

    .line 207
    if-nez p0, :cond_1

    move v3, v2

    move-object v4, v0

    move v0, v1

    .line 260
    :goto_1
    if-ltz v0, :cond_f

    .line 268
    :goto_2
    if-nez v3, :cond_11

    .line 277
    :goto_3
    if-eqz v0, :cond_14

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0

    .line 208
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v2

    move-object v4, v0

    move v5, v1

    move v1, v2

    :cond_2
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v1

    move v0, v5

    goto :goto_1

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v6, "PREF"

    .line 213
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "FAX"

    .line 215
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "X-"

    .line 219
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_4
    move-object v6, v0

    .line 224
    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 229
    if-nez v0, :cond_8

    const-string/jumbo v0, "VOICE"

    .line 251
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 253
    if-ltz v5, :cond_e

    move v0, v1

    move v1, v3

    move-object v3, v4

    move v4, v5

    :goto_6
    move v5, v4

    move-object v4, v3

    move v3, v1

    move v1, v0

    .line 258
    goto :goto_4

    :cond_5
    move v0, v7

    move v1, v3

    move-object v3, v4

    move v4, v5

    .line 214
    goto :goto_6

    :cond_6
    move v0, v1

    move-object v3, v4

    move v1, v7

    move v4, v5

    .line 216
    goto :goto_6

    .line 219
    :cond_7
    if-gez v5, :cond_4

    const/4 v6, 0x2

    .line 220
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_5

    .line 230
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v9, "@"

    .line 243
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x6

    .line 244
    if-eq v6, v10, :cond_c

    :cond_9
    if-gez v5, :cond_d

    .line 249
    :cond_a
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_b
    :goto_8
    move v0, v1

    move v1, v3

    move-object v3, v4

    move v4, v5

    .line 251
    goto :goto_6

    .line 244
    :cond_c
    if-lez v9, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v9, v6, :cond_9

    goto :goto_7

    :cond_d
    if-eqz v5, :cond_a

    if-eq v5, v11, :cond_a

    goto :goto_8

    :cond_e
    move v0, v1

    move v4, v2

    move v1, v3

    move-object v3, v6

    .line 255
    goto :goto_6

    .line 261
    :cond_f
    if-nez v2, :cond_10

    move v0, v7

    .line 265
    goto/16 :goto_2

    :cond_10
    const/16 v0, 0xc

    .line 262
    goto/16 :goto_2

    :cond_11
    const/4 v1, 0x3

    .line 269
    if-eq v0, v1, :cond_12

    .line 271
    if-eq v0, v11, :cond_13

    const/4 v0, 0x5

    .line 274
    goto/16 :goto_3

    :cond_12
    const/4 v0, 0x4

    .line 270
    goto/16 :goto_3

    :cond_13
    const/16 v0, 0xd

    .line 272
    goto/16 :goto_3

    .line 278
    :cond_14
    return-object v4
.end method

.method public static getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getPropertyNameForIm(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static guessImageType([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 681
    if-eqz p0, :cond_3

    .line 684
    array-length v0, p0

    if-ge v0, v6, :cond_4

    .line 686
    :cond_0
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 692
    :cond_1
    array-length v0, p0

    if-ge v0, v4, :cond_6

    .line 696
    :cond_2
    return-object v5

    .line 682
    :cond_3
    return-object v5

    .line 684
    :cond_4
    aget-byte v0, p0, v2

    const/16 v1, 0x47

    if-ne v0, v1, :cond_0

    aget-byte v0, p0, v3

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    aget-byte v0, p0, v4

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "GIF"

    .line 685
    return-object v0

    .line 686
    :cond_5
    aget-byte v0, p0, v2

    const/16 v1, -0x77

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v3

    const/16 v1, 0x50

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v6

    const/16 v1, 0x47

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "PNG"

    .line 691
    return-object v0

    .line 692
    :cond_6
    aget-byte v0, p0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    aget-byte v0, p0, v3

    const/16 v1, -0x28

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "JPEG"

    .line 694
    return-object v0
.end method

.method public static isMobilePhoneLabel(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "_AUTO_CELL"

    .line 289
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sonymobile/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isV21Word(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v7, 0x7e

    const/16 v6, 0x20

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 577
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 583
    :goto_0
    if-lt v0, v2, :cond_1

    .line 590
    return v5

    .line 578
    :cond_0
    return v5

    .line 584
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 585
    if-le v6, v3, :cond_3

    .line 587
    :cond_2
    return v1

    .line 585
    :cond_3
    if-gt v3, v7, :cond_2

    sget-object v4, Lcom/sonymobile/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 583
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_0
.end method

.method public static isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x3d

    const/16 v9, 0xa

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v5

    .line 754
    :goto_0
    if-lt v0, v2, :cond_0

    .line 766
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 770
    if-nez p1, :cond_5

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 775
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v5

    .line 776
    :goto_1
    if-lt v0, v4, :cond_6

    .line 794
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    .line 798
    :goto_2
    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 801
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    array-length v7, v0

    move v4, v5

    move-object v2, v3

    :goto_4
    if-lt v4, v7, :cond_b

    .line 828
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 835
    :goto_5
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 843
    :goto_6
    :try_start_1
    invoke-static {v0}, Lcom/sonymobile/android/vcard/VCardUtils$QuotedPrintableCodecPort;->decodeQuotedPrintable([B)[B
    :try_end_1
    .catch Lcom/sonymobile/android/vcard/VCardUtils$DecoderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 850
    :goto_7
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    .line 755
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    .line 756
    if-eq v4, v10, :cond_2

    .line 764
    :cond_1
    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 754
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_2
    add-int/lit8 v6, v2, -0x1

    if-ge v0, v6, :cond_1

    .line 757
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    const/16 v7, 0x20

    .line 758
    if-ne v6, v7, :cond_4

    .line 759
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_4
    const/16 v7, 0x9

    .line 758
    if-eq v6, v7, :cond_3

    goto :goto_8

    :cond_5
    const-string/jumbo v0, "\r\n"

    .line 771
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 777
    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    .line 778
    if-eq v7, v9, :cond_8

    const/16 v8, 0xd

    .line 781
    if-eq v7, v8, :cond_9

    .line 791
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    :cond_7
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 779
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_a

    .line 782
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 784
    add-int/lit8 v7, v4, -0x1

    if-ge v0, v7, :cond_7

    .line 785
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-char v7, v7

    .line 786
    if-ne v7, v9, :cond_7

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 796
    :cond_a
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 803
    :cond_b
    aget-object v1, v0, v4

    .line 811
    if-nez v2, :cond_d

    :cond_c
    :goto_b
    const-string/jumbo v8, "="

    .line 815
    invoke-virtual {v1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 825
    :goto_c
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_4

    :cond_d
    const-string/jumbo v8, "="

    .line 811
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 812
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    .line 813
    goto :goto_b

    .line 816
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v8, v2, -0x2

    .line 818
    if-gez v8, :cond_10

    :cond_f
    move-object v2, v3

    .line 822
    goto :goto_c

    .line 818
    :cond_10
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_f

    .line 819
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 820
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_11
    const-string/jumbo v1, "vCard"

    const-string/jumbo v2, "Given raw string is empty."

    .line 830
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 839
    :catch_0
    move-exception v1

    const-string/jumbo v1, "vCard"

    .line 837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to decode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_6

    .line 847
    :catch_1
    move-exception v1

    const-string/jumbo v1, "vCard"

    const-string/jumbo v2, "DecoderException is thrown."

    .line 845
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 850
    :catch_2
    move-exception v1

    const-string/jumbo v1, "vCard"

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to encode: charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static replaceLFWithCRLF(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 906
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "(?<!\r)\n"

    const-string/jumbo v1, "\r\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    .line 302
    new-array v0, v0, [Ljava/lang/String;

    .line 303
    invoke-static {p0}, Lcom/sonymobile/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v1

    .line 304
    sparse-switch v1, :sswitch_data_0

    .line 325
    aput-object p3, v0, v2

    .line 326
    aput-object p2, v0, v3

    .line 327
    aput-object p1, v0, v4

    .line 331
    :goto_0
    return-object v0

    .line 306
    :sswitch_0
    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 312
    :cond_0
    aput-object p1, v0, v2

    .line 313
    aput-object p2, v0, v3

    .line 314
    aput-object p3, v0, v4

    goto :goto_0

    .line 306
    :cond_1
    new-array v1, v3, [Ljava/lang/String;

    aput-object p3, v1, v2

    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    aput-object p3, v0, v2

    .line 309
    aput-object p2, v0, v3

    .line 310
    aput-object p1, v0, v4

    goto :goto_0

    .line 319
    :sswitch_1
    aput-object p2, v0, v2

    .line 320
    aput-object p3, v0, v3

    .line 321
    aput-object p1, v0, v4

    goto :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 654
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 659
    :goto_0
    if-lt v0, v2, :cond_1

    .line 670
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 655
    :cond_0
    return-object v2

    .line 662
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    .line 663
    invoke-static {v3}, Lcom/sonymobile/android/vcard/JapaneseUtils;->tryGetHalfWidthText(C)Ljava/lang/String;

    move-result-object v4

    .line 664
    if-nez v4, :cond_2

    .line 667
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v3, 0x1

    .line 659
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_0

    .line 665
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x20

    const/16 v10, 0x22

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 623
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 628
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v3

    move v0, v3

    .line 631
    :goto_1
    if-lt v4, v6, :cond_2

    .line 646
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_0
    const-string/jumbo v0, ""

    :goto_2
    return-object v0

    :cond_1
    const-string/jumbo p0, ""

    goto :goto_0

    .line 632
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 633
    if-ge v7, v11, :cond_4

    .line 631
    :cond_3
    :goto_3
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    move v4, v2

    goto :goto_1

    .line 633
    :cond_4
    if-eq v7, v10, :cond_3

    .line 637
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 638
    array-length v8, p1

    move v2, v3

    :goto_4
    if-ge v2, v8, :cond_3

    aget v9, p1, v2

    .line 639
    if-eq v7, v9, :cond_5

    .line 638
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move v0, v1

    .line 641
    goto :goto_3

    .line 647
    :cond_6
    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonymobile/android/vcard/VCardUtils;->containsOnlyWhiteSpaces([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_7

    move-object v0, v2

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    invoke-static {p0, v0}, Lcom/sonymobile/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 619
    sget-object v0, Lcom/sonymobile/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    invoke-static {p0, v0}, Lcom/sonymobile/android/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
