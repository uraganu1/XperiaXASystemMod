.class public Lcom/android/vcard/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardUtils$DecoderException;,
        Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;,
        Lcom/android/vcard/VCardUtils$PhoneNumberUtilsPort;,
        Lcom/android/vcard/VCardUtils$TextUtilsPort;
    }
.end annotation


# static fields
.field private static final sEscapeIndicatorsV30:[I

.field private static final sEscapeIndicatorsV40:[I

.field private static final sKnownCombinationTypeMap:Ljava/util/Map;
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
    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 140
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "CAR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CAR"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PAGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "PAGER"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ISDN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "ISDN"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "HOME"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "WORK"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CELL"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "OTHER"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "CALLBACK"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "COMPANY-MAIN"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "RADIO"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "TTY-TDD"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "ASSISTANT"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "OTHER-FAX"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "TLX"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "MSG"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string/jumbo v1, "VOICE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    .line 165
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "MODEM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "MSG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "BBS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/android/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string/jumbo v1, "VIDEO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    .line 171
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 176
    const-string/jumbo v2, "X-GOOGLE-TALK"

    .line 175
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-NETMEETING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-CUSTOM-IM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 188
    const-string/jumbo v2, "MOBILE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u643a\u5e2f\u96fb\u8a71"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u643a\u5e2f"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u30b1\u30a4\u30bf\u30a4"

    aput-object v2, v1, v6

    .line 189
    const-string/jumbo v2, "\uff79\uff72\uff80\uff72"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 187
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardUtils;->sKnownCombinationTypeMap:Ljava/util/Map;

    .line 192
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownCombinationTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "WORK;PAGER"

    .line 193
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 192
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/vcard/VCardUtils;->sKnownCombinationTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "WORK;CELL"

    .line 195
    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 194
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/Character;

    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

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

    aput-object v2, v1, v6

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 507
    sput-object v0, Lcom/android/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    .line 610
    const/16 v0, 0x3a

    const/16 v1, 0x3b

    const/16 v2, 0x2c

    const/16 v3, 0x20

    .line 609
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    .line 614
    const/16 v0, 0x3b

    const/16 v1, 0x3a

    .line 613
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 744
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v1, v2, 0x3

    .line 745
    .local v1, "remainder":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    if-eq v1, v5, :cond_1

    if-eqz v1, :cond_1

    .line 746
    :cond_0
    return v4

    .line 748
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 749
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_2

    .line 750
    return v4

    .line 748
    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 753
    :cond_3
    return v5
.end method

.method public static constructListFromValue(Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "vcardType"    # I
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
    .line 411
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 414
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_6

    .line 415
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 416
    .local v1, "ch":C
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_4

    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_4

    .line 417
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 419
    .local v5, "nextCh":C
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion40(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 420
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .line 431
    .local v6, "unescapedString":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_3

    .line 432
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    add-int/lit8 v2, v2, 0x1

    .line 414
    .end local v5    # "nextCh":C
    .end local v6    # "unescapedString":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    .restart local v5    # "nextCh":C
    :cond_0
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 422
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "unescapedString":Ljava/lang/String;
    goto :goto_1

    .line 424
    .end local v6    # "unescapedString":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->isVersion21(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 426
    const-string/jumbo v7, "vCard"

    const-string/jumbo v8, "Unknown vCard type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_2
    invoke-static {v5}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "unescapedString":Ljava/lang/String;
    goto :goto_1

    .line 435
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 437
    .end local v5    # "nextCh":C
    .end local v6    # "unescapedString":Ljava/lang/String;
    :cond_4
    const/16 v7, 0x3b

    if-ne v1, v7, :cond_5

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 441
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 444
    .end local v1    # "ch":C
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    return-object v4
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    .line 371
    invoke-static/range {v0 .. v5}, Lcom/android/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "suffix"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x20

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {p0, p1, p2, p3}, Lcom/android/vcard/VCardUtils;->sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "nameList":[Ljava/lang/String;
    const/4 v1, 0x1

    .line 381
    .local v1, "first":Z
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 382
    const/4 v1, 0x0

    .line 383
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_0
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v3, v2, v4

    .line 386
    .local v3, "namePart":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 387
    if-eqz v1, :cond_2

    .line 388
    const/4 v1, 0x0

    .line 392
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 395
    .end local v3    # "namePart":Ljava/lang/String;
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 396
    if-nez v1, :cond_4

    .line 397
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    :cond_4
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static containsOnlyPrintableAscii(Ljava/util/Collection;)Z
    .locals 4
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
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 456
    if-nez p0, :cond_0

    .line 457
    return v3

    .line 459
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "value$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 463
    invoke-static {v0}, Lcom/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 464
    const/4 v2, 0x0

    return v2

    .line 467
    .end local v0    # "value":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method public static varargs containsOnlyPrintableAscii([Ljava/lang/String;)Z
    .locals 1
    .param p0, "values"    # [Ljava/lang/String;

    .prologue
    .line 449
    if-nez p0, :cond_0

    .line 450
    const/4 v0, 0x1

    return v0

    .line 452
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static final convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "originalString"    # Ljava/lang/String;
    .param p1, "sourceCharset"    # Ljava/lang/String;
    .param p2, "targetCharset"    # Ljava/lang/String;

    .prologue
    .line 869
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 870
    return-object p0

    .line 872
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 873
    .local v2, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 876
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 877
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 879
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 880
    :catch_0
    move-exception v3

    .line 881
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "vCard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to encode: charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v4, 0x0

    return-object v4
.end method

.method public static getPhoneNumberFormat(I)I
    .locals 1
    .param p0, "vcardType"    # I

    .prologue
    .line 362
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x2

    return v0

    .line 365
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .locals 21
    .param p1, "number"    # Ljava/lang/String;
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
    .line 210
    .local p0, "types":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 211
    const-string/jumbo p1, ""

    .line 213
    :cond_0
    const/4 v12, -0x1

    .line 214
    .local v12, "type":I
    const/4 v9, 0x0

    .line 215
    .local v9, "label":Ljava/lang/String;
    const/4 v5, 0x0

    .line 216
    .local v5, "isFax":Z
    const/4 v2, 0x0

    .line 218
    .local v2, "hasPref":Z
    if-eqz p0, :cond_c

    .line 219
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 220
    sget-object v19, Lcom/android/vcard/VCardUtils;->sKnownCombinationTypeMap:Ljava/util/Map;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 221
    .local v8, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 222
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 223
    .local v7, "key":Ljava/lang/String;
    const/4 v4, 0x1

    .line 224
    .local v4, "isExist":Z
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "type1$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 225
    .local v13, "type1":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-gez v19, :cond_2

    .line 226
    const/4 v4, 0x0

    .line 230
    .end local v13    # "type1":Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_1

    .line 231
    sget-object v19, Lcom/android/vcard/VCardUtils;->sKnownCombinationTypeMap:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 232
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    return-object v19

    .line 237
    .end local v4    # "isExist":Z
    .end local v6    # "iter":Ljava/util/Iterator;
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "type1$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v9    # "label":Ljava/lang/String;
    .local v17, "typeStringOrg$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 238
    .local v16, "typeStringOrg":Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 241
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    .line 242
    .local v18, "typeStringUpperCase":Ljava/lang/String;
    const-string/jumbo v19, "PREF"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 243
    const/4 v2, 0x1

    goto :goto_0

    .line 244
    :cond_6
    const-string/jumbo v19, "FAX"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 245
    const/4 v5, 0x1

    goto :goto_0

    .line 248
    :cond_7
    const-string/jumbo v19, "X-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    if-gez v12, :cond_9

    .line 249
    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 253
    .local v10, "labelCandidate":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_5

    .line 257
    sget-object v19, Lcom/android/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 258
    .local v11, "tmp":Ljava/lang/Integer;
    if-eqz v11, :cond_b

    .line 259
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 272
    .local v15, "typeCandidate":I
    const-string/jumbo v19, "@"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 273
    .local v3, "indexOfAt":I
    const/16 v19, 0x6

    move/from16 v0, v19

    if-ne v15, v0, :cond_a

    .line 274
    if-lez v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v3, v0, :cond_a

    .line 278
    :cond_8
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_0

    .line 251
    .end local v3    # "indexOfAt":I
    .end local v10    # "labelCandidate":Ljava/lang/String;
    .end local v11    # "tmp":Ljava/lang/Integer;
    .end local v15    # "typeCandidate":I
    :cond_9
    move-object/from16 v10, v16

    .restart local v10    # "labelCandidate":Ljava/lang/String;
    goto :goto_1

    .line 275
    .restart local v3    # "indexOfAt":I
    .restart local v11    # "tmp":Ljava/lang/Integer;
    .restart local v15    # "typeCandidate":I
    :cond_a
    if-ltz v12, :cond_8

    .line 276
    if-eqz v12, :cond_8

    .line 277
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ne v12, v0, :cond_5

    goto :goto_2

    .line 280
    .end local v3    # "indexOfAt":I
    .end local v15    # "typeCandidate":I
    :cond_b
    if-gez v12, :cond_5

    .line 281
    const/4 v12, 0x0

    .line 282
    move-object v9, v10

    .local v9, "label":Ljava/lang/String;
    goto/16 :goto_0

    .line 287
    .end local v9    # "label":Ljava/lang/String;
    .end local v10    # "labelCandidate":Ljava/lang/String;
    .end local v11    # "tmp":Ljava/lang/Integer;
    .end local v16    # "typeStringOrg":Ljava/lang/String;
    .end local v17    # "typeStringOrg$iterator":Ljava/util/Iterator;
    .end local v18    # "typeStringUpperCase":Ljava/lang/String;
    :cond_c
    if-gez v12, :cond_d

    .line 288
    if-eqz v2, :cond_f

    .line 289
    const/16 v12, 0xc

    .line 295
    :cond_d
    :goto_3
    if-eqz v5, :cond_e

    .line 296
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_10

    .line 297
    const/4 v12, 0x5

    .line 304
    :cond_e
    :goto_4
    if-nez v12, :cond_12

    .line 305
    return-object v9

    .line 292
    :cond_f
    const/4 v12, 0x1

    goto :goto_3

    .line 298
    :cond_10
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v12, v0, :cond_11

    .line 299
    const/4 v12, 0x4

    goto :goto_4

    .line 300
    :cond_11
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ne v12, v0, :cond_e

    .line 301
    const/16 v12, 0xd

    goto :goto_4

    .line 307
    :cond_12
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    return-object v19
.end method

.method public static parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "strictLineBreaking"    # Z
    .param p2, "sourceCharset"    # Ljava/lang/String;
    .param p3, "targetCharset"    # Ljava/lang/String;

    .prologue
    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 770
    .local v9, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_2

    .line 771
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 772
    .local v3, "ch":C
    const/16 v17, 0x3d

    move/from16 v0, v17

    if-ne v3, v0, :cond_1

    add-int/lit8 v17, v9, -0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    .line 773
    add-int/lit8 v17, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 774
    .local v13, "nextCh":C
    const/16 v17, 0x20

    move/from16 v0, v17

    if-eq v13, v0, :cond_0

    const/16 v17, 0x9

    move/from16 v0, v17

    if-ne v13, v0, :cond_1

    .line 775
    :cond_0
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    add-int/lit8 v7, v7, 0x1

    .line 770
    .end local v13    # "nextCh":C
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 780
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 782
    .end local v3    # "ch":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 786
    .local v14, "quotedPrintable":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 787
    const-string/jumbo v17, "\r\n"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 817
    .local v11, "lines":[Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    array-length v0, v11

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    aget-object v10, v11, v17

    .line 819
    .local v10, "line":Ljava/lang/String;
    const-string/jumbo v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 820
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 822
    :cond_3
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 789
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "lines":[Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v9

    .line 791
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_8

    .line 793
    invoke-virtual {v14, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 794
    .restart local v3    # "ch":C
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v3, v0, :cond_6

    .line 795
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 797
    :cond_6
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v3, v0, :cond_7

    .line 798
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v17, v9, -0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    .line 801
    add-int/lit8 v17, v7, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 802
    .restart local v13    # "nextCh":C
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v13, v0, :cond_5

    .line 803
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 807
    .end local v13    # "nextCh":C
    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 810
    .end local v3    # "ch":C
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 811
    .local v8, "lastLine":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_9

    .line 812
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .restart local v11    # "lines":[Ljava/lang/String;
    goto/16 :goto_2

    .line 825
    .end local v8    # "lastLine":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 826
    .local v16, "rawString":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 827
    const-string/jumbo v17, "vCard"

    const-string/jumbo v18, "Given raw string is empty."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_b
    const/4 v15, 0x0

    .line 832
    .local v15, "rawBytes":[B
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 838
    .local v15, "rawBytes":[B
    :goto_6
    const/4 v4, 0x0

    .line 840
    .local v4, "decodedBytes":[B
    :try_start_1
    invoke-static {v15}, Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;->decodeQuotedPrintable([B)[B
    :try_end_1
    .catch Lcom/android/vcard/VCardUtils$DecoderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 847
    .local v4, "decodedBytes":[B
    :goto_7
    :try_start_2
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v17

    .line 833
    .end local v4    # "decodedBytes":[B
    .local v15, "rawBytes":[B
    :catch_0
    move-exception v6

    .line 834
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v17, "vCard"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to decode: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .local v15, "rawBytes":[B
    goto :goto_6

    .line 841
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .local v4, "decodedBytes":[B
    :catch_1
    move-exception v5

    .line 842
    .local v5, "e":Lcom/android/vcard/VCardUtils$DecoderException;
    const-string/jumbo v17, "vCard"

    const-string/jumbo v18, "DecoderException is thrown."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    move-object v4, v15

    .local v4, "decodedBytes":[B
    goto :goto_7

    .line 848
    .end local v5    # "e":Lcom/android/vcard/VCardUtils$DecoderException;
    :catch_2
    move-exception v6

    .line 849
    .restart local v6    # "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v17, "vCard"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failed to encode: charset="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    return-object v17
.end method

.method public static sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "nameOrder"    # I
    .param p1, "familyName"    # Ljava/lang/String;
    .param p2, "middleName"    # Ljava/lang/String;
    .param p3, "givenName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 329
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 330
    .local v0, "list":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v1

    .line 331
    .local v1, "nameOrderType":I
    sparse-switch v1, :sswitch_data_0

    .line 352
    aput-object p3, v0, v3

    .line 353
    aput-object p2, v0, v4

    .line 354
    aput-object p1, v0, v5

    .line 358
    :goto_0
    return-object v0

    .line 333
    :sswitch_0
    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    new-array v2, v4, [Ljava/lang/String;

    aput-object p3, v2, v3

    invoke-static {v2}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    .line 333
    if-eqz v2, :cond_0

    .line 335
    aput-object p3, v0, v3

    .line 336
    aput-object p2, v0, v4

    .line 337
    aput-object p1, v0, v5

    goto :goto_0

    .line 339
    :cond_0
    aput-object p1, v0, v3

    .line 340
    aput-object p2, v0, v4

    .line 341
    aput-object p3, v0, v5

    goto :goto_0

    .line 346
    :sswitch_1
    aput-object p2, v0, v3

    .line 347
    aput-object p3, v0, v4

    .line 348
    aput-object p1, v0, v5

    goto :goto_0

    .line 331
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
