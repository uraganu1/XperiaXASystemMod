.class public Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;,
        Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;,
        Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;,
        Lcom/google/i18n/phonenumbers/PhoneNumberUtil$1;
    }
.end annotation


# static fields
.field private static synthetic -com_google_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I

.field private static synthetic -com_google_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I

.field private static final ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final CC_PATTERN:Ljava/util/regex/Pattern;

.field static final DEFAULT_METADATA_LOADER:Lcom/google/i18n/phonenumbers/MetadataLoader;

.field private static final DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final FG_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;
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

.field static final NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final NP_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field static final SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field static final UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_ALPHA:Ljava/lang/String;

.field private static final VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static instance:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final countryCodesForNonGeographicalRegion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final currentFilePrefix:Ljava/lang/String;

.field private final metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

.field private final nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

.field private final regionToMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedRegions:Ljava/util/Set;
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
.method private static synthetic -getcom_google_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->-com_google_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->-com_google_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->values()[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->-com_google_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_google_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->-com_google_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->-com_google_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->values()[Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->-com_google_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 14

    .prologue
    .line 65
    new-instance v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$1;

    invoke-direct {v10}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$1;-><init>()V

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->DEFAULT_METADATA_LOADER:Lcom/google/i18n/phonenumbers/MetadataLoader;

    .line 72
    const-class v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    .line 129
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v7, "mobileTokenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v11, "1"

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v11, "9"

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    .line 136
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v2, "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v10, 0x30

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x30

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/16 v10, 0x31

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x31

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const/16 v10, 0x32

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const/16 v10, 0x33

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x33

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/16 v10, 0x37

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 v10, 0x38

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/16 v10, 0x39

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v1, Ljava/util/HashMap;

    const/16 v10, 0x28

    invoke-direct {v1, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 149
    .local v1, "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v10, 0x41

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/16 v10, 0x42

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v10, 0x43

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x32

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/16 v10, 0x44

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x33

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v10, 0x45

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x33

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 v10, 0x46

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x33

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/16 v10, 0x47

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/16 v10, 0x48

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v10, 0x49

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x34

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v10, 0x4a

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v10, 0x4b

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v10, 0x4c

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x35

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/16 v10, 0x4d

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/16 v10, 0x4e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/16 v10, 0x4f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x36

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v10, 0x50

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v10, 0x51

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/16 v10, 0x52

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v10, 0x53

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x37

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v10, 0x54

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/16 v10, 0x55

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/16 v10, 0x56

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/16 v10, 0x57

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/16 v10, 0x58

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/16 v10, 0x59

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const/16 v10, 0x5a

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x39

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 177
    new-instance v5, Ljava/util/HashMap;

    const/16 v10, 0x64

    invoke-direct {v5, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 178
    .local v5, "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 179
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 180
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 182
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v6, "diallableCharMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 184
    const/16 v10, 0x2b

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2b

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/16 v10, 0x2a

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2a

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v0, "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 191
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    .end local v3    # "c":C
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 196
    const/16 v10, 0x2d

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const v10, 0xff0d

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/16 v10, 0x2010

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/16 v10, 0x2011

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/16 v10, 0x2012

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/16 v10, 0x2013

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/16 v10, 0x2014

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/16 v10, 0x2015

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/16 v10, 0x2212

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const/16 v10, 0x2f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2f

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const v10, 0xff0f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2f

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/16 v10, 0x3000

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/16 v10, 0x2060

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/16 v10, 0x2e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const v10, 0xff0e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    .line 222
    const-string/jumbo v10, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 221
    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "[, \\[\\]]"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 237
    sget-object v11, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "[, \\[\\]]"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 236
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 235
    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    .line 239
    const-string/jumbo v10, "[+\uff0b]+"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 240
    const-string/jumbo v10, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 241
    const-string/jumbo v10, "(\\p{Nd})"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 250
    const-string/jumbo v10, "[+\uff0b\\p{Nd}]"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 258
    const-string/jumbo v10, "[\\\\/] *x"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 264
    const-string/jumbo v10, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 268
    const-string/jumbo v10, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 287
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 289
    sget-object v11, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    .line 287
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 289
    const-string/jumbo v11, "\\p{Nd}"

    .line 287
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 289
    const-string/jumbo v11, "]*"

    .line 287
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 286
    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    .line 307
    const-string/jumbo v8, "x\uff58#\uff03~\uff5e"

    .line 311
    .local v8, "singleExtnSymbolsForMatching":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 313
    .local v9, "singleExtnSymbolsForParsing":Ljava/lang/String;
    invoke-static {v9}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    .line 314
    invoke-static {v8}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 342
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "(?:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")$"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x42

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 341
    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 347
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(?:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x42

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 346
    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 349
    const-string/jumbo v10, "(\\D+)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 355
    const-string/jumbo v10, "(\\$\\d)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    .line 356
    const-string/jumbo v10, "\\$NP"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    .line 357
    const-string/jumbo v10, "\\$FG"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    .line 358
    const-string/jumbo v10, "\\$CC"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    .line 363
    const-string/jumbo v10, "\\(?\\$1\\)?"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 365
    const/4 v10, 0x0

    sput-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 63
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;Ljava/util/Map;)V
    .locals 7
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "metadataLoader"    # Lcom/google/i18n/phonenumbers/MetadataLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/MetadataLoader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "countryCallingCodeToRegionCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    new-instance v3, Ljava/util/HashSet;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    .line 558
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 557
    iput-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    .line 566
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 565
    iput-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    .line 571
    new-instance v3, Lcom/google/i18n/phonenumbers/RegexCache;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Lcom/google/i18n/phonenumbers/RegexCache;-><init>(I)V

    iput-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    .line 576
    new-instance v3, Ljava/util/HashSet;

    const/16 v4, 0x140

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    .line 580
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 593
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    .line 594
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    .line 595
    iput-object p3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 596
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 597
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 600
    .local v2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    const-string/jumbo v3, "001"

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 605
    :cond_0
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 611
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    const-string/jumbo v4, "001"

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 612
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v5, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 615
    :cond_2
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 592
    return-void
.end method

.method private buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3002
    const-string/jumbo v6, ";phone-context="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3003
    .local v2, "indexOfPhoneContext":I
    if-lez v2, :cond_4

    .line 3004
    const-string/jumbo v6, ";phone-context="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v5, v2, v6

    .line 3007
    .local v5, "phoneContextStart":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_0

    .line 3011
    const/16 v6, 0x3b

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 3012
    .local v4, "phoneContextEnd":I
    if-lez v4, :cond_2

    .line 3013
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    .end local v4    # "phoneContextEnd":I
    :cond_0
    :goto_0
    const-string/jumbo v6, "tel:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 3024
    .local v3, "indexOfRfc3966Prefix":I
    if-ltz v3, :cond_3

    .line 3025
    const-string/jumbo v6, "tel:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v3, v6

    .line 3026
    .local v1, "indexOfNationalNumber":I
    :goto_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3035
    .end local v1    # "indexOfNationalNumber":I
    .end local v3    # "indexOfRfc3966Prefix":I
    .end local v5    # "phoneContextStart":I
    :goto_2
    const-string/jumbo v6, ";isub="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3036
    .local v0, "indexOfIsdn":I
    if-lez v0, :cond_1

    .line 3037
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p2, v0, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3001
    :cond_1
    return-void

    .line 3015
    .end local v0    # "indexOfIsdn":I
    .restart local v4    # "phoneContextEnd":I
    .restart local v5    # "phoneContextStart":I
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3025
    .end local v4    # "phoneContextEnd":I
    .restart local v3    # "indexOfRfc3966Prefix":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "indexOfNationalNumber":I
    goto :goto_1

    .line 3030
    .end local v1    # "indexOfNationalNumber":I
    .end local v3    # "indexOfRfc3966Prefix":I
    .end local v5    # "phoneContextStart":I
    :cond_4
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2731
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2733
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2735
    :cond_0
    return v1

    .line 2734
    :cond_1
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2738
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static createExtnPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "singleExtnSymbols"    # Ljava/lang/String;

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 334
    const-string/jumbo v1, "]|int|anexo|\uff49\uff4e\uff54)"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    const-string/jumbo v1, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    const-string/jumbo v1, "(\\p{Nd}{1,7})"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    const-string/jumbo v1, "#?|"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    const-string/jumbo v1, "[- ]+("

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    const-string/jumbo v1, "\\p{Nd}"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    const-string/jumbo v1, "{1,5})#"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createInstance(Lcom/google/i18n/phonenumbers/MetadataLoader;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .locals 3
    .param p0, "metadataLoader"    # Lcom/google/i18n/phonenumbers/MetadataLoader;

    .prologue
    .line 1042
    if-nez p0, :cond_0

    .line 1043
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "metadataLoader could not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_0
    new-instance v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    const-string/jumbo v1, "/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    .line 1046
    invoke-static {}, Lcom/google/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v2

    .line 1045
    invoke-direct {v0, v1, p0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;-><init>(Ljava/lang/String;Lcom/google/i18n/phonenumbers/MetadataLoader;Ljava/util/Map;)V

    return-object v0
.end method

.method static extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 694
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 695
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 696
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 698
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 699
    .local v2, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 700
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 701
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Stripped trailing characters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 704
    :cond_0
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 705
    .local v1, "secondNumber":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 706
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 708
    :cond_1
    return-object p0

    .line 710
    .end local v1    # "secondNumber":Ljava/util/regex/Matcher;
    .end local v2    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    :cond_2
    const-string/jumbo v3, ""

    return-object v3
.end method

.method private formatNsn(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1768
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatNsn(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1779
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v2

    .line 1783
    .local v2, "intlNumberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v3, :cond_1

    .line 1784
    :cond_0
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v0

    .line 1786
    .local v0, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 1787
    .local v1, "formattingPattern":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v1, :cond_2

    .end local p1    # "number":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 1785
    .end local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v1    # "formattingPattern":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    goto :goto_0

    .line 1789
    .restart local v1    # "formattingPattern":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_2
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1821
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 1823
    .local v6, "numberFormatRule":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1824
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v2, ""

    .line 1825
    .local v2, "formattedNationalNumber":Ljava/lang/String;
    sget-object v7, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_2

    .line 1826
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1827
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1829
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v0

    .line 1831
    .local v0, "carrierCodeFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->CC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1834
    sget-object v7, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1836
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1850
    .end local v0    # "carrierCodeFormattingRule":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_1

    .line 1852
    sget-object v7, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1853
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1854
    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1857
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1859
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-object v2

    .line 1839
    :cond_2
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 1840
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v7, :cond_3

    .line 1841
    if-eqz v5, :cond_3

    .line 1842
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1843
    sget-object v7, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1845
    .local v1, "firstGroupMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1847
    .end local v1    # "firstGroupMatcher":Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCountryCodeForValidRegion(Ljava/lang/String;)I
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2222
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2223
    .local v0, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid region code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2226
    :cond_0
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .locals 2

    .prologue
    const-class v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v1

    .line 1022
    :try_start_0
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 1023
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->DEFAULT_METADATA_LOADER:Lcom/google/i18n/phonenumbers/MetadataLoader;

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/google/i18n/phonenumbers/MetadataLoader;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->setInstance(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V

    .line 1025
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "countryCallingCode"    # I
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1256
    const-string/jumbo v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1256
    :goto_0
    return-object v0

    .line 1258
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method private getNumberTypeHelper(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 2
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .prologue
    .line 1992
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1993
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 1996
    :cond_0
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1997
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 1999
    :cond_1
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2000
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2002
    :cond_2
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2003
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2005
    :cond_3
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2006
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2008
    :cond_4
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2009
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2011
    :cond_5
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2012
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2014
    :cond_6
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2015
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2017
    :cond_7
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2018
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2021
    :cond_8
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    .line 2022
    .local v0, "isFixedLine":Z
    if-eqz v0, :cond_b

    .line 2023
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2024
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2025
    :cond_9
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2026
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2028
    :cond_a
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2032
    :cond_b
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2033
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    .line 2032
    if-eqz v1, :cond_c

    .line 2034
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2036
    :cond_c
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1
.end method

.method private getRegionCodeForNumberFromRegionList(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2154
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2155
    .local v1, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "regionCode$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2158
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2159
    .local v0, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2160
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2162
    return-object v2

    .line 2164
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_0

    .line 2165
    return-object v2

    .line 2168
    .end local v0    # "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v2    # "regionCode":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method private hasFormattingPatternForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 7
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v5, 0x0

    .line 1598
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1599
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1601
    .local v4, "phoneNumberRegion":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1602
    .local v2, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v2, :cond_0

    .line 1603
    return v5

    .line 1605
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1607
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 1608
    .local v1, "formatRule":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v1, :cond_1

    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method private hasUnexpectedItalianLeadingZero(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v0, 0x0

    .line 1594
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isLeadingZeroPossible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasValidCountryCallingCode(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isShorterThanPossibleNormalNumber(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)Z
    .locals 3
    .param p1, "regionMetadata"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2342
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    .line 2343
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v2

    .line 2342
    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2344
    .local v0, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v1

    .line 2345
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2344
    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidRegionCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1080
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isViablePhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 726
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 727
    const/4 v1, 0x0

    return v1

    .line 729
    :cond_0
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 730
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private static loadMetadataAndCloseInput(Ljava/io/ObjectInputStream;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .locals 5
    .param p0, "source"    # Ljava/io/ObjectInputStream;

    .prologue
    .line 662
    new-instance v1, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 664
    .local v1, "metadataCollection":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 669
    :try_start_1
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    return-object v1

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "error closing input stream (ignored)"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 673
    return-object v1

    .line 672
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 673
    return-object v1

    .line 665
    :catch_1
    move-exception v0

    .line 666
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "error reading input (ignored)"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 669
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 673
    return-object v1

    .line 670
    :catch_2
    move-exception v0

    .line 671
    :try_start_5
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "error closing input stream (ignored)"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 673
    return-object v1

    .line 672
    :catchall_1
    move-exception v2

    .line 673
    return-object v1

    .line 667
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v2

    .line 669
    :try_start_6
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 673
    return-object v1

    .line 670
    :catch_3
    move-exception v0

    .line 671
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "error closing input stream (ignored)"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 673
    return-object v1

    .line 672
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v2

    .line 673
    return-object v1
.end method

.method private maybeAppendFormattedExtension(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "metadata"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1934
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1935
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v0, :cond_1

    .line 1936
    const-string/jumbo v0, ";ext="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1938
    :cond_1
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1939
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1941
    :cond_2
    const-string/jumbo v0, " ext. "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 750
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 751
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 754
    :cond_0
    invoke-static {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static normalize(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 766
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    return-void
.end method

.method static normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 802
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "keepNonDigits"    # Z

    .prologue
    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 783
    .local v2, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-char v0, v4, v3

    .line 784
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 785
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 786
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 783
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 787
    :cond_1
    if-eqz p1, :cond_0

    .line 788
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 791
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_2
    return-object v2
.end method

.method public static normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 778
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .param p2, "removeNonMatches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, "normalizationReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 974
    .local v3, "normalizedNumber":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 975
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 976
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 977
    .local v2, "newDigit":Ljava/lang/Character;
    if-eqz v2, :cond_1

    .line 978
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 974
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 979
    :cond_1
    if-nez p2, :cond_0

    .line 980
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 984
    .end local v0    # "character":C
    .end local v2    # "newDigit":Ljava/lang/Character;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 18
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "keepRawInput"    # Z
    .param p4, "checkRegion"    # Z
    .param p5, "phoneNumber"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2880
    if-nez p1, :cond_0

    .line 2881
    new-instance v2, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2882
    const-string/jumbo v6, "The phone number supplied was null."

    .line 2881
    invoke-direct {v2, v3, v6}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2883
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa

    if-le v2, v3, :cond_1

    .line 2884
    new-instance v2, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2885
    const-string/jumbo v6, "The string supplied was too long to parse."

    .line 2884
    invoke-direct {v2, v3, v6}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2888
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 2889
    .local v14, "nationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2891
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2892
    new-instance v2, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2893
    const-string/jumbo v6, "The string supplied did not seem to be a phone number."

    .line 2892
    invoke-direct {v2, v3, v6}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2898
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2903
    :cond_3
    if-eqz p3, :cond_4

    .line 2904
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2908
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 2909
    .local v11, "extension":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 2910
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2913
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 2916
    .local v4, "regionMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2917
    .local v5, "normalizedNationalNumber":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 2922
    .local v9, "countryCode":I
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2940
    :cond_6
    if-eqz v9, :cond_a

    .line 2941
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v15

    .line 2942
    .local v15, "phoneNumberRegion":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2944
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 2958
    .end local v15    # "phoneNumberRegion":Ljava/lang/String;
    :cond_7
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_c

    .line 2959
    new-instance v2, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2960
    const-string/jumbo v6, "The string supplied is too short to be a phone number."

    .line 2959
    invoke-direct {v2, v3, v6}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2899
    .end local v4    # "regionMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "normalizedNationalNumber":Ljava/lang/StringBuilder;
    .end local v9    # "countryCode":I
    .end local v11    # "extension":Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2900
    const-string/jumbo v6, "Missing or invalid default region."

    .line 2899
    invoke-direct {v2, v3, v6}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2924
    .restart local v4    # "regionMetadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v5    # "normalizedNationalNumber":Ljava/lang/StringBuilder;
    .restart local v9    # "countryCode":I
    .restart local v11    # "extension":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 2925
    .local v10, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 2926
    .local v13, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Lcom/google/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    sget-object v3, Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v2, v3, :cond_9

    .line 2927
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    .line 2926
    if-eqz v2, :cond_9

    .line 2929
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v9

    .line 2932
    if-nez v9, :cond_6

    .line 2933
    new-instance v2, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2934
    const-string/jumbo v6, "Could not interpret numbers after plus-sign."

    .line 2933
    invoke-direct {v2, v3, v6}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2937
    :cond_9
    new-instance v2, Lcom/google/i18n/phonenumbers/NumberParseException;

    invoke-virtual {v10}, Lcom/google/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    invoke-virtual {v10}, Lcom/google/i18n/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2949
    .end local v10    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    :cond_a
    invoke-static {v14}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2950
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2951
    if-eqz p2, :cond_b

    .line 2952
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v9

    .line 2953
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2954
    :cond_b
    if-eqz p3, :cond_7

    .line 2955
    invoke-virtual/range {p5 .. p5}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 2962
    :cond_c
    if-eqz v4, :cond_f

    .line 2963
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2964
    .local v8, "carrierCode":Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2965
    .local v17, "potentialNationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v8}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2969
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isShorterThanPossibleNormalNumber(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2970
    move-object/from16 v5, v17

    .line 2971
    if-eqz p3, :cond_d

    .line 2972
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2977
    :cond_d
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v16

    .line 2978
    .local v16, "possibleNationalPrefix":Ljava/lang/String;
    if-eqz v16, :cond_e

    .line 2979
    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setPossibleNationalPrefix(Ljava/lang/String;)V

    .line 2981
    :cond_e
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "possibleNationalPrefix = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2984
    .end local v8    # "carrierCode":Ljava/lang/StringBuilder;
    .end local v16    # "possibleNationalPrefix":Ljava/lang/String;
    .end local v17    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 2985
    .local v12, "lengthOfNationalNumber":I
    const/4 v2, 0x2

    if-ge v12, v2, :cond_10

    .line 2986
    new-instance v2, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2987
    const-string/jumbo v6, "The string supplied is too short to be a phone number."

    .line 2986
    invoke-direct {v2, v3, v6}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2989
    :cond_10
    const/16 v2, 0x11

    if-le v12, v2, :cond_11

    .line 2990
    new-instance v2, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2991
    const-string/jumbo v6, "The string supplied is too long to be a phone number."

    .line 2990
    invoke-direct {v2, v3, v6}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 2993
    :cond_11
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-static {v2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->setItalianLeadingZerosForPhoneNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2994
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2879
    return-void
.end method

.method private parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "iddPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2584
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2585
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2586
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 2589
    .local v2, "matchEnd":I
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2590
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2591
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2592
    .local v3, "normalizedGroup":Ljava/lang/String;
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2593
    return v6

    .line 2596
    .end local v3    # "normalizedGroup":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2, v6, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2597
    return v7

    .line 2599
    .end local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "matchEnd":I
    :cond_1
    return v6
.end method

.method private prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "countryCallingCode"    # I
    .param p2, "numberFormat"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0x2b

    const/4 v2, 0x0

    .line 1749
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->-getcom_google_i18n_phonenumbers_PhoneNumberUtil$PhoneNumberFormatSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1762
    :pswitch_0
    return-void

    .line 1751
    :pswitch_1
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1752
    return-void

    .line 1754
    :pswitch_2
    const-string/jumbo v0, " "

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1755
    return-void

    .line 1757
    :pswitch_3
    const-string/jumbo v0, "-"

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1758
    const-string/jumbo v1, "tel:"

    .line 1757
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    return-void

    .line 1749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "rawInput"    # Ljava/lang/String;
    .param p2, "nationalPrefix"    # Ljava/lang/String;
    .param p3, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1573
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1574
    .local v1, "normalizedNationalNumber":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1581
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 1580
    invoke-virtual {p0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1582
    :catch_0
    move-exception v0

    .line 1583
    .local v0, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    return v3

    .line 1586
    .end local v0    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    :cond_0
    return v3
.end method

.method static declared-synchronized setInstance(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V
    .locals 2
    .param p0, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .prologue
    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 993
    :try_start_0
    sput-object p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 992
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static setItalianLeadingZerosForPhoneNumber(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 4
    .param p0, "nationalNumber"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x1

    .line 2856
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2857
    invoke-virtual {p1, v2}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2858
    const/4 v0, 0x1

    .line 2861
    .local v0, "numberOfLeadingZeros":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2862
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2865
    :cond_0
    if-eq v0, v2, :cond_1

    .line 2866
    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2855
    .end local v0    # "numberOfLeadingZeros":I
    :cond_1
    return-void
.end method

.method private testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 2
    .param p1, "numberPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2326
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2327
    .local v0, "numberMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2328
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v1

    .line 2330
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2331
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v1

    .line 2333
    :cond_1
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v1
.end method


# virtual methods
.method chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 6
    .param p2, "nationalNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;"
        }
    .end annotation

    .prologue
    .line 1794
    .local p1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "numFormat$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1795
    .local v1, "numFormat":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    .line 1796
    .local v3, "size":I
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    .line 1798
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v1, v5}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v5

    .line 1796
    invoke-virtual {v4, v5}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1799
    :cond_1
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1800
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1801
    return-object v1

    .line 1805
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "numFormat":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "size":I
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6
    .param p1, "fullNumber"    # Ljava/lang/StringBuilder;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 2456
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_1

    .line 2458
    :cond_0
    return v5

    .line 2461
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2462
    .local v1, "numberLength":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    if-gt v0, v3, :cond_3

    if-gt v0, v1, :cond_3

    .line 2463
    invoke-virtual {p1, v5, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2464
    .local v2, "potentialCountryCode":I
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2465
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2466
    return v2

    .line 2462
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2469
    .end local v2    # "potentialCountryCode":I
    :cond_3
    return v5
.end method

.method public format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1105
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1111
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    .line 1112
    .local v1, "rawInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1113
    return-object v1

    .line 1116
    .end local v1    # "rawInput":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1117
    .local v0, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1128
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1129
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1130
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1132
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v4, :cond_0

    .line 1135
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v4, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1138
    return-void

    .line 1140
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1141
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    return-void

    .line 1147
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 1151
    .local v3, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 1152
    .local v1, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v2, v1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1154
    invoke-direct {p0, v0, p2, p3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1126
    return-void
.end method

.method public formatByPattern(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            "Ljava/util/List",
            "<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1171
    .local p3, "userDefinedFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1172
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v6

    .line 1173
    .local v6, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1174
    return-object v6

    .line 1179
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1182
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1184
    .local v3, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v9, 0x14

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1187
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p3, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v2

    .line 1188
    .local v2, "formattingPattern":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v2, :cond_1

    .line 1190
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    :goto_0
    invoke-direct {p0, p1, v3, p2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1216
    invoke-direct {p0, v0, p2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1192
    :cond_1
    new-instance v7, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v7}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1196
    .local v7, "numFormatCopy":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v7, v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1197
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 1198
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 1199
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1200
    .local v4, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 1203
    sget-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->NP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1205
    sget-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->FG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\\$1"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1206
    invoke-virtual {v7, v5}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1213
    .end local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p0, v6, v7, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    .line 1212
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1209
    .restart local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    goto :goto_1
.end method

.method public formatInOriginalFormat(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 1474
    invoke-virtual/range {p1 .. p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1475
    invoke-direct/range {p0 .. p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasUnexpectedItalianLeadingZero(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1480
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1481
    sget-object v17, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 1478
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v17

    return-object v17

    .line 1484
    :cond_2
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->-getcom_google_i18n_phonenumbers_Phonenumber$PhoneNumber$CountryCodeSourceSwitchesValues()[I

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 1497
    invoke-virtual/range {p1 .. p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v16

    .line 1500
    .local v16, "regionCode":Ljava/lang/String;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 1501
    .local v10, "nationalPrefix":Ljava/lang/String;
    sget-object v17, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v8

    .line 1502
    .local v8, "nationalFormat":Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 1505
    :cond_3
    move-object v5, v8

    .line 1556
    .end local v8    # "nationalFormat":Ljava/lang/String;
    .end local v10    # "nationalPrefix":Ljava/lang/String;
    .end local v16    # "regionCode":Ljava/lang/String;
    .local v5, "formattedNumber":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v15

    .line 1559
    .local v15, "rawInput":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 1560
    invoke-static {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1561
    .local v11, "normalizedFormattedNumber":Ljava/lang/String;
    invoke-static {v15}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1562
    .local v12, "normalizedRawInput":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1563
    move-object v5, v15

    .line 1566
    .end local v11    # "normalizedFormattedNumber":Ljava/lang/String;
    .end local v12    # "normalizedRawInput":Ljava/lang/String;
    :cond_4
    return-object v5

    .line 1486
    .end local v5    # "formattedNumber":Ljava/lang/String;
    .end local v15    # "rawInput":Ljava/lang/String;
    :pswitch_0
    sget-object v17, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1489
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1492
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :pswitch_2
    sget-object v17, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1510
    .end local v5    # "formattedNumber":Ljava/lang/String;
    .restart local v8    # "nationalFormat":Ljava/lang/String;
    .restart local v10    # "nationalPrefix":Ljava/lang/String;
    .restart local v16    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v17

    .line 1509
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1512
    move-object v5, v8

    .line 1513
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1517
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v7

    .line 1518
    .local v7, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual/range {p0 .. p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v9

    .line 1520
    .local v9, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v4

    .line 1524
    .local v4, "formatRule":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v4, :cond_7

    .line 1525
    move-object v5, v8

    .line 1526
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1532
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 1534
    .local v3, "candidateNationalPrefixRule":Ljava/lang/String;
    const-string/jumbo v17, "$1"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1535
    .local v6, "indexOfFirstGroup":I
    if-gtz v6, :cond_8

    .line 1536
    move-object v5, v8

    .line 1537
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_0

    .line 1540
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1541
    invoke-static {v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1542
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_9

    .line 1544
    move-object v5, v8

    .line 1545
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_0

    .line 1548
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_9
    new-instance v13, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v13}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1549
    .local v13, "numFormatCopy":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v13, v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1550
    invoke-virtual {v13}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1551
    new-instance v14, Ljava/util/ArrayList;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1552
    .local v14, "numberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1553
    sget-object v17, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatByPattern(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_0

    .line 1484
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .prologue
    .line 1812
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatOutOfCountryCallingNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1396
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1397
    sget-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 1398
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Trying to format number from invalid region "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1400
    const-string/jumbo v12, ". International formatting applied."

    .line 1398
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1397
    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1401
    sget-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1403
    :cond_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1404
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v7

    .line 1405
    .local v7, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1406
    return-object v7

    .line 1408
    :cond_1
    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    .line 1409
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1412
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v10}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1414
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v9

    if-ne v0, v9, :cond_3

    .line 1421
    sget-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1424
    :cond_3
    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v6

    .line 1425
    .local v6, "metadataForRegionCallingFrom":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v6}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v3

    .line 1429
    .local v3, "internationalPrefix":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 1430
    .local v4, "internationalPrefixForFormatting":Ljava/lang/String;
    sget-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1431
    move-object v4, v3

    .line 1437
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1440
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v5

    .line 1442
    .local v5, "metadataForRegion":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v7, v5, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1443
    .local v1, "formattedNationalNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v2, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v5, v9, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1446
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 1447
    const-string/jumbo v9, " "

    invoke-virtual {v2, v11, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v11, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1432
    .end local v1    # "formattedNationalNumber":Ljava/lang/String;
    .end local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v5    # "metadataForRegion":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v8    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1434
    invoke-virtual {v6}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1451
    .restart local v1    # "formattedNationalNumber":Ljava/lang/String;
    .restart local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v5    # "metadataForRegion":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v8    # "regionCode":Ljava/lang/String;
    :cond_6
    sget-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1450
    invoke-direct {p0, v0, v9, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method getMetadataForNonGeographicalRegion(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2059
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 2060
    :try_start_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2061
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2063
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2065
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    const-string/jumbo v2, "001"

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    .line 2064
    invoke-virtual {p0, v0, v2, p1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/google/i18n/phonenumbers/MetadataLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    .line 2068
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0

    .line 2059
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2045
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2046
    const/4 v0, 0x0

    return-object v0

    .line 2048
    :cond_0
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 2049
    :try_start_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2052
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->currentFilePrefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->metadataLoader:Lcom/google/i18n/phonenumbers/MetadataLoader;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, p1, v3, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/google/i18n/phonenumbers/MetadataLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 2055
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object v0

    .line 2048
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1734
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1735
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v2

    new-array v1, v2, [C

    .line 1736
    .local v1, "zeros":[C
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1737
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    .end local v1    # "zeros":[C
    :cond_0
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1740
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "stripNonDigits"    # Z

    .prologue
    const/4 v6, 0x0

    .line 2244
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2245
    .local v0, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    .line 2246
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 2247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid or missing region code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2248
    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    .line 2247
    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2249
    const-string/jumbo v5, ") provided."

    .line 2247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2246
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2250
    return-object v6

    .line 2252
    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v1

    .line 2254
    .local v1, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2255
    return-object v6

    .line 2257
    :cond_2
    if-eqz p2, :cond_3

    .line 2260
    const-string/jumbo v2, "~"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2262
    :cond_3
    return-object v1
.end method

.method public getRegionCodeForCountryCode(I)Ljava/lang/String;
    .locals 3
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2180
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2181
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const-string/jumbo v1, "ZZ"

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v7, 0x0

    .line 2137
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2138
    .local v0, "countryCode":I
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2139
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 2140
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2141
    .local v1, "numberString":Ljava/lang/String;
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 2142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Missing/invalid country_code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") for number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2141
    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2143
    return-object v7

    .line 2145
    .end local v1    # "numberString":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2146
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 2148
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumberFromRegionList(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method isLeadingZeroPossible(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2282
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 2281
    invoke-direct {p0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2283
    .local v0, "mainMetadataForCallingCode":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2284
    const/4 v1, 0x0

    return v1

    .line 2286
    :cond_0
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->isLeadingZeroPossible()Z

    move-result v1

    return v1
.end method

.method public isNANPACountry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isNumberMatchingDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 2080
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2082
    .local v0, "nationalNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberPossibleForDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2083
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 2082
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isNumberPossibleForDesc(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 2073
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2075
    .local v0, "possibleNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2094
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2095
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isValidNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2115
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2116
    .local v0, "countryCode":I
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2117
    .local v1, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_0

    .line 2118
    const-string/jumbo v4, "001"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2119
    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v4

    if-eq v0, v4, :cond_1

    .line 2122
    :cond_0
    return v3

    .line 2124
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 2125
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;ILcom/google/i18n/phonenumbers/MetadataLoader;)V
    .locals 14
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "countryCallingCode"    # I
    .param p4, "metadataLoader"    # Lcom/google/i18n/phonenumbers/MetadataLoader;

    .prologue
    .line 621
    const-string/jumbo v10, "001"

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 622
    .local v5, "isNonGeoRegion":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 623
    if-eqz v5, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 622
    :goto_0
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "fileName":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/google/i18n/phonenumbers/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 625
    .local v9, "source":Ljava/io/InputStream;
    if-nez v9, :cond_1

    .line 626
    sget-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "missing metadata: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 627
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "missing metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v2    # "fileName":Ljava/lang/String;
    .end local v9    # "source":Ljava/io/InputStream;
    :cond_0
    move-object/from16 v10, p2

    .line 623
    goto :goto_0

    .line 629
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v9    # "source":Ljava/io/InputStream;
    :cond_1
    const/4 v3, 0x0

    .line 631
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v9}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 632
    .local v4, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-static {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->loadMetadataAndCloseInput(Ljava/io/ObjectInputStream;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    .end local v3    # "in":Ljava/io/ObjectInputStream;
    move-result-object v7

    .line 633
    .local v7, "metadataCollection":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v7}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v8

    .line 634
    .local v8, "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 635
    sget-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "empty metadata: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 636
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "empty metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 647
    .end local v7    # "metadataCollection":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 648
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    :goto_1
    sget-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "cannot load/parse metadata: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 649
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cannot load/parse metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 638
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/io/ObjectInputStream;
    .restart local v7    # "metadataCollection":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :cond_2
    :try_start_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 639
    sget-object v10, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "invalid metadata (too many entries): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 641
    :cond_3
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 642
    .local v6, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v5, :cond_4

    .line 643
    iget-object v10, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    :goto_2
    return-void

    .line 645
    :cond_4
    iget-object v10, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regionToMetadataMap:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 647
    .end local v4    # "in":Ljava/io/ObjectInputStream;
    .end local v6    # "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v7    # "metadataCollection":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v8    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method maybeExtractCountryCode(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 15
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultRegionMetadata"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "nationalNumber"    # Ljava/lang/StringBuilder;
    .param p4, "keepRawInput"    # Z
    .param p5, "phoneNumber"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2508
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    .line 2509
    const/4 v12, 0x0

    return v12

    .line 2511
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2513
    .local v4, "fullNumber":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "NonMatch"

    .line 2514
    .local v7, "possibleCountryIddPrefix":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 2515
    invoke-virtual/range {p2 .. p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    .line 2517
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v12

    const/16 v13, 0x56

    if-ne v12, v13, :cond_2

    .line 2518
    const-string/jumbo v7, "00"

    .line 2521
    :cond_2
    invoke-virtual {p0, v4, v7}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    .line 2522
    .local v1, "countryCodeSource":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    if-eqz p4, :cond_3

    .line 2523
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2525
    :cond_3
    sget-object v12, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v1, v12, :cond_6

    .line 2526
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x2

    if-gt v12, v13, :cond_4

    .line 2527
    new-instance v12, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v13, Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2528
    const-string/jumbo v14, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    .line 2527
    invoke-direct {v12, v13, v14}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 2531
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {p0, v4, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v9

    .line 2532
    .local v9, "potentialCountryCode":I
    if-eqz v9, :cond_5

    .line 2533
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2534
    return v9

    .line 2539
    :cond_5
    new-instance v12, Lcom/google/i18n/phonenumbers/NumberParseException;

    sget-object v13, Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;

    .line 2540
    const-string/jumbo v14, "Country calling code supplied was not recognised."

    .line 2539
    invoke-direct {v12, v13, v14}, Lcom/google/i18n/phonenumbers/NumberParseException;-><init>(Lcom/google/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 2541
    .end local v9    # "potentialCountryCode":I
    :cond_6
    if-eqz p2, :cond_a

    .line 2545
    invoke-virtual/range {p2 .. p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v2

    .line 2546
    .local v2, "defaultCountryCode":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2547
    .local v3, "defaultCountryCodeString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2548
    .local v6, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2550
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2551
    .local v10, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    .line 2553
    .local v5, "generalDesc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    iget-object v12, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 2555
    .local v11, "validNumberPattern":Ljava/util/regex/Pattern;
    const/4 v12, 0x0

    .line 2554
    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0, v12}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2557
    iget-object v12, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 2561
    .local v8, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_7

    .line 2562
    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    .line 2561
    if-nez v12, :cond_8

    .line 2563
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v8, v12}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v12

    .line 2564
    sget-object v13, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2563
    if-ne v12, v13, :cond_a

    .line 2565
    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2566
    if-eqz p4, :cond_9

    .line 2567
    sget-object v12, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2569
    :cond_9
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2570
    return v2

    .line 2575
    .end local v2    # "defaultCountryCode":I
    .end local v3    # "defaultCountryCodeString":Ljava/lang/String;
    .end local v5    # "generalDesc":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v6    # "normalizedNumber":Ljava/lang/String;
    .end local v8    # "possibleNumberPattern":Ljava/util/regex/Pattern;
    .end local v10    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v11    # "validNumberPattern":Ljava/util/regex/Pattern;
    :cond_a
    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2576
    const/4 v12, 0x0

    return v12
.end method

.method maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2707
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2710
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2712
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 2713
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2716
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2717
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2718
    return-object v0

    .line 2712
    .end local v0    # "extension":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2722
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    const-string/jumbo v4, ""

    return-object v4
.end method

.method maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .locals 4
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "possibleIddPrefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2618
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 2619
    sget-object v2, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v2

    .line 2622
    :cond_0
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2623
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2624
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2626
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2627
    sget-object v2, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v2

    .line 2630
    :cond_1
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-virtual {v2, p2}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2631
    .local v0, "iddPattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)V

    .line 2632
    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2633
    sget-object v2, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 2632
    :goto_0
    return-object v2

    .line 2634
    :cond_2
    sget-object v2, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0
.end method

.method maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z
    .locals 12
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "metadata"    # Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "carrierCode"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2649
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 2650
    .local v3, "numberLength":I
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v4

    .line 2651
    .local v4, "possibleNationalPrefix":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 2653
    :cond_0
    return v10

    .line 2656
    :cond_1
    iget-object v8, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-virtual {v8, v4}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 2657
    .local v5, "prefixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2659
    iget-object v8, p0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/i18n/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2661
    .local v1, "nationalNumberRule":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 2665
    .local v0, "isViableOriginalNumber":Z
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .line 2666
    .local v2, "numOfGroups":I
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object v6

    .line 2667
    .local v6, "transformRule":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 2670
    :cond_2
    if-eqz v0, :cond_3

    .line 2671
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2674
    :cond_3
    if-eqz p3, :cond_4

    if-lez v2, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2675
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p1, v10, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2678
    return v11

    .line 2668
    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2682
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2683
    .local v7, "transformedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v3, v8}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2684
    if-eqz v0, :cond_6

    .line 2685
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2688
    :cond_6
    if-eqz p3, :cond_7

    if-le v2, v11, :cond_7

    .line 2689
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v10, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2692
    return v11

    .line 2672
    .end local v7    # "transformedNumber":Ljava/lang/StringBuilder;
    :cond_8
    return v10

    .line 2686
    .restart local v7    # "transformedNumber":Ljava/lang/StringBuilder;
    :cond_9
    return v10

    .line 2695
    .end local v0    # "isViableOriginalNumber":Z
    .end local v1    # "nationalNumberRule":Ljava/util/regex/Pattern;
    .end local v2    # "numOfGroups":I
    .end local v6    # "transformRule":Ljava/lang/String;
    .end local v7    # "transformedNumber":Ljava/lang/StringBuilder;
    :cond_a
    return v10
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2763
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2764
    .local v0, "phoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2765
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2774
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2773
    return-void
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 2794
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2795
    .local v0, "phoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2796
    return-object v0
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    .line 2806
    invoke-direct/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 2805
    return-void
.end method
