.class public Lcom/sonyericsson/conversations/util/AddressUtil;
.super Ljava/lang/Object;
.source "AddressUtil.java"


# static fields
.field private static sCountry:Ljava/lang/String;

.field private static volatile sMyPhoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNeedFormat:Z

.field private static sPattern:Ljava/util/regex/Pattern;

.field private static sPatternContent:Ljava/lang/String;

.field private static sReplacement:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPattern:Ljava/util/regex/Pattern;

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/conversations/util/AddressUtil;->sNeedFormat:Z

    .line 43
    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPatternContent:Ljava/lang/String;

    .line 45
    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sReplacement:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkIfMyPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const-class v5, Lcom/sonyericsson/conversations/util/AddressUtil;

    monitor-enter v5

    .line 195
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    monitor-exit v5

    .line 196
    return v7

    .line 198
    :cond_0
    :try_start_1
    const-string/jumbo v1, ""

    .line 199
    .local v1, "myselfSettingsNumber1":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 200
    .local v2, "myselfSettingsNumber2":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 201
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v3

    .line 203
    .local v3, "settings":Lcom/sonyericsson/conversations/settings/SettingsManager;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/sonyericsson/conversations/settings/SettingsManager;->getMyselfSimNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/sonyericsson/conversations/settings/SettingsManager;->getMyselfSimNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .end local v3    # "settings":Lcom/sonyericsson/conversations/settings/SettingsManager;
    :cond_1
    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 207
    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 206
    if-nez v6, :cond_2

    .line 208
    invoke-static {}, Lcom/sonyericsson/conversations/util/AddressUtil;->getSim1Number()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 206
    if-nez v6, :cond_2

    .line 209
    invoke-static {}, Lcom/sonyericsson/conversations/util/AddressUtil;->getSim2Number()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 206
    if-nez v6, :cond_2

    .line 210
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/AddressUtil;->isThisNumberMyselfContact(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    :cond_2
    monitor-exit v5

    .line 206
    return v4

    .end local v0    # "apis":Lcom/sonyericsson/conversations/Apis;
    .end local v1    # "myselfSettingsNumber1":Ljava/lang/String;
    .end local v2    # "myselfSettingsNumber2":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static formatBidiNumberString(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 3
    .param p0, "number"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, "startIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 164
    return-object p0

    .line 166
    :cond_0
    add-int/lit8 v1, v0, 0x1

    const-string/jumbo v2, "+\u200e"

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    return-object v1

    .line 168
    .end local v0    # "startIndex":I
    :cond_1
    return-object p0
.end method

.method public static formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 153
    if-nez p0, :cond_0

    .end local p0    # "number":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "number":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u202a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    const-string/jumbo v1, "\u202c"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static formatNumberToKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 175
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    sget-object v3, Lcom/sonyericsson/conversations/util/AddressUtil;->sCountry:Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 176
    .local v1, "parsedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 177
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v4

    .line 176
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 178
    .end local v1    # "parsedNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v2    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    new-instance v3, Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException;

    invoke-direct {v3, v0}, Lcom/sonyericsson/conversations/contact/NotAPhoneNumberException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static formatSmsOriginalAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "originalAddress"    # Ljava/lang/String;

    .prologue
    .line 60
    move-object v1, p0

    .line 61
    .local v1, "ret":Ljava/lang/String;
    sget-boolean v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sNeedFormat:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sPattern:Ljava/util/regex/Pattern;

    if-nez v2, :cond_0

    .line 62
    invoke-static {}, Lcom/sonyericsson/conversations/util/AddressUtil;->initXmsPattern()V

    .line 65
    :cond_0
    sget-boolean v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sNeedFormat:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sPattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    .line 66
    sget-object v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 67
    .local v0, "m":Ljava/util/regex/Matcher;
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    sget-object v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sPatternContent:Ljava/lang/String;

    sget-object v3, Lcom/sonyericsson/conversations/util/AddressUtil;->sReplacement:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_1
    return-object v1
.end method

.method private static getMyselfContactNumbers(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v8, "myPhoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 247
    const-string/jumbo v0, "data1"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 250
    .local v2, "proj":[Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 251
    const-string/jumbo v3, "data"

    .line 250
    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    .local v1, "dataUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 255
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 256
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 257
    const-string/jumbo v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 260
    .local v7, "indexName":I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, "phoneNbr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 267
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "indexName":I
    .end local v9    # "phoneNbr":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 268
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 267
    :cond_1
    :goto_1
    throw v0

    .line 268
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 272
    :cond_3
    :goto_2
    return-object v8

    .line 269
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v6    # "c":Landroid/database/Cursor;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static getSim1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSimNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSim2Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSimNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initXmsPattern()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsOAPattern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPatternContent:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsOAReplacement()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sReplacement:Ljava/lang/String;

    .line 86
    sget-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPatternContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sReplacement:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    sput-boolean v3, Lcom/sonyericsson/conversations/util/AddressUtil;->sNeedFormat:Z

    .line 83
    .local v0, "ex":Ljava/util/regex/PatternSyntaxException;
    :goto_0
    return-void

    .line 88
    .end local v0    # "ex":Ljava/util/regex/PatternSyntaxException;
    :cond_1
    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPatternContent:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/conversations/util/AddressUtil;->sPattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .restart local v0    # "ex":Ljava/util/regex/PatternSyntaxException;
    const-string/jumbo v1, "Pattern compile failed!"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 91
    sput-boolean v3, Lcom/sonyericsson/conversations/util/AddressUtil;->sNeedFormat:Z

    goto :goto_0
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static isThisNumberMyselfContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-object v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sMyPhoneNumbers:Ljava/util/List;

    if-nez v2, :cond_0

    .line 215
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/AddressUtil;->getMyselfContactNumbers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sMyPhoneNumbers:Ljava/util/List;

    .line 217
    :cond_0
    sget-object v2, Lcom/sonyericsson/conversations/util/AddressUtil;->sMyPhoneNumbers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    const/4 v2, 0x1

    return v2

    .line 222
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public static isValidAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x0

    return v1

    .line 111
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 117
    :goto_0
    return v0

    .line 112
    :cond_1
    const/4 v0, 0x1

    .local v0, "retVal":Z
    goto :goto_0

    .line 115
    .end local v0    # "retVal":Z
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    .local v0, "retVal":Z
    goto :goto_0
.end method

.method public static isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    return v0

    .line 143
    :cond_0
    sget-object v1, Lcom/sonyericsson/conversations/util/ConversationPatterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    sget-object v1, Lcom/sonyericsson/conversations/util/ConversationPatterns;->PHONE_INVALID_CHARACTERS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    :cond_1
    :goto_0
    return v0

    .line 145
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setSimCountry(Ljava/lang/String;)V
    .locals 2
    .param p0, "simCountry"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 75
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    sput-object v0, Lcom/sonyericsson/conversations/util/AddressUtil;->sCountry:Ljava/lang/String;

    .line 74
    return-void

    .line 76
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
