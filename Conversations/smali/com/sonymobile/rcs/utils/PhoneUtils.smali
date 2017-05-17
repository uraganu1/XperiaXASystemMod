.class public Lcom/sonymobile/rcs/utils/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# static fields
.field private static COUNTRY_CODE:Ljava/lang/String;

.field private static COUNTRY_ISO_CODE:Ljava/lang/String;

.field private static final PATTERN_FROM_DISPLAY_NAME:Ljava/util/regex/Pattern;

.field private static PHONE_CONTEXT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static TEL_URI_SUPPORTED:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/rcs/utils/PhoneUtils;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/utils/PhoneUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/sonymobile/rcs/utils/PhoneUtils;->TEL_URI_SUPPORTED:Ljava/lang/Boolean;

    const-string/jumbo v0, "^\\s*?\"?([^\"<]*)\"?\\s*?<.*>$"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/utils/PhoneUtils;->PATTERN_FROM_DISPLAY_NAME:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "contact1"    # Ljava/lang/String;
    .param p1, "contact2"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "number1":Ljava/lang/String;
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "number2":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 314
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 313
    :cond_1
    if-eqz v1, :cond_0

    .line 316
    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static extractDisplayNameFromHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "from"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 291
    if-eqz p0, :cond_1

    .line 293
    sget-object v3, Lcom/sonymobile/rcs/utils/PhoneUtils;->PATTERN_FROM_DISPLAY_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 294
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_2

    .line 300
    :cond_0
    return-object v2

    .line 292
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-object v2

    .line 295
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 296
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method private static extractNoFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 249
    if-eqz p0, :cond_1

    .line 252
    const/4 v4, 0x0

    .local v4, "isTelUri":Z
    :try_start_0
    const-string/jumbo v5, "tel:"

    .line 256
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 257
    .local v2, "index1":I
    if-ne v2, v6, :cond_2

    .line 265
    :goto_0
    if-eqz v4, :cond_4

    :cond_0
    :goto_1
    const-string/jumbo v5, ";"

    .line 274
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 275
    .local v3, "index2":I
    if-ne v3, v6, :cond_5

    .line 278
    :goto_2
    return-object p0

    .line 250
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    .end local v4    # "isTelUri":Z
    :cond_1
    return-object v7

    .restart local v2    # "index1":I
    .restart local v4    # "isTelUri":Z
    :cond_2
    const-string/jumbo v5, ">"

    .line 258
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 259
    .local v1, "index0":I
    if-ne v1, v6, :cond_3

    .line 262
    :goto_3
    const/4 v4, 0x1

    goto :goto_0

    .line 260
    :cond_3
    add-int/lit8 v5, v2, 0x4

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .end local v1    # "index0":I
    :cond_4
    const-string/jumbo v5, "sip:"

    .line 267
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 268
    if-eq v2, v6, :cond_0

    const-string/jumbo v5, "@"

    .line 269
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 270
    .restart local v3    # "index2":I
    add-int/lit8 v5, v2, 0x4

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    .line 276
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_2

    .line 278
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    return-object v7
.end method

.method public static extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 219
    :try_start_0
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNoFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 221
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToInternational(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 223
    return-object v1
.end method

.method public static extractNumberFromUriForTelekom(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 236
    :try_start_0
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->extractNoFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 243
    return-object v1
.end method

.method public static formatNumberToInternational(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    .line 122
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "phoneNumber":Ljava/lang/String;
    sget-object v4, Lcom/sonymobile/rcs/utils/PhoneUtils;->COUNTRY_ISO_CODE:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 131
    :goto_0
    sget-object v4, Lcom/sonymobile/rcs/utils/PhoneUtils;->COUNTRY_ISO_CODE:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 136
    sget-object v4, Lcom/sonymobile/rcs/utils/PhoneUtils;->COUNTRY_ISO_CODE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sonymobile/rcs/utils/PhoneUtils;->COUNTRY_ISO_CODE:Ljava/lang/String;

    .line 139
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    :goto_1
    return-object v2

    .line 118
    .end local v2    # "phoneNumber":Ljava/lang/String;
    :cond_0
    return-object v5

    .line 128
    .restart local v2    # "phoneNumber":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sonymobile/rcs/utils/PhoneUtils;->COUNTRY_ISO_CODE:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_2
    return-object v2

    .line 141
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    .line 142
    .local v3, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    sget-object v4, Lcom/sonymobile/rcs/utils/PhoneUtils;->COUNTRY_ISO_CODE:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 143
    .local v1, "parsedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .end local v1    # "parsedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v4, Lcom/sonymobile/rcs/utils/PhoneUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to parse the number, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 159
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "<"

    .line 166
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "index0":I
    const/4 v1, -0x1

    .line 167
    if-ne v0, v1, :cond_1

    :goto_0
    const-string/jumbo v1, "tel:"

    .line 173
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "sip:"

    .line 175
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 179
    :goto_1
    sget-object v1, Lcom/sonymobile/rcs/utils/PhoneUtils;->TEL_URI_SUPPORTED:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 184
    :goto_2
    sget-object v1, Lcom/sonymobile/rcs/utils/PhoneUtils;->TEL_URI_SUPPORTED:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToInternational(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getHomeDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";user=phone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 160
    .end local v0    # "index0":I
    :cond_0
    return-object v2

    .line 168
    .restart local v0    # "index0":I
    :cond_1
    add-int/lit8 v1, v0, 0x1

    const-string/jumbo v2, ">"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "@"

    .line 176
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 180
    :cond_4
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isTelUriFormatUsed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/rcs/utils/PhoneUtils;->TEL_URI_SUPPORTED:Ljava/lang/Boolean;

    .line 181
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getPhoneContext()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonymobile/rcs/utils/PhoneUtils;->PHONE_CONTEXT:Ljava/lang/String;

    goto :goto_2

    .line 186
    :cond_5
    sget-object v1, Lcom/sonymobile/rcs/utils/PhoneUtils;->PHONE_CONTEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 187
    :cond_6
    invoke-static {}, Lcom/sonymobile/rcs/utils/PhoneUtils;->isNormalizationNeeded()Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "+"

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7
    const-string/jumbo v1, "+"

    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";phone-context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getHomeDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 196
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";phone-context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/rcs/utils/PhoneUtils;->PHONE_CONTEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getActiveNetworkType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string/jumbo v3, "connectivity"

    .line 363
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 365
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, "ni":Landroid/net/NetworkInfo;
    const/4 v2, -0x1

    .line 367
    .local v2, "type":I
    if-nez v1, :cond_0

    .line 370
    :goto_0
    return v2

    .line 368
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    goto :goto_0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/sonymobile/rcs/utils/PhoneUtils;->COUNTRY_CODE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    sget-object v0, Lcom/sonymobile/rcs/utils/PhoneUtils;->COUNTRY_CODE:Ljava/lang/String;

    return-object v0

    .line 105
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/utils/PhoneUtils;->COUNTRY_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v0, Lcom/sonymobile/rcs/utils/PhoneUtils;

    monitor-enter v0

    .line 95
    :try_start_0
    invoke-static {p0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->createInstance(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 96
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isMobileNetwork(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, "result":Z
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 346
    .local v0, "networkType":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v1

    .line 348
    :cond_1
    if-nez v0, :cond_0

    .line 349
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMobileRoaming(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v3, "connectivity"

    .line 328
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "connectivityMgr":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .line 330
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 331
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .end local v0    # "connectivityMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    return v4
.end method

.method public static isNormalizationNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 402
    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getHomeDomain()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "t-mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getHomeDomain()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "telekom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getHomeDomain()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "telefonica.de"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method
