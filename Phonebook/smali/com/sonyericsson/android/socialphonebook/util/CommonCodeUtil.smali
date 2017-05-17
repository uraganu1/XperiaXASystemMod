.class public Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;
.super Ljava/lang/Object;
.source "CommonCodeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;,
        Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;
    }
.end annotation


# static fields
.field private static final LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_STRING_LENGTH_FOR_ADD_TO_CONTACTS:I = 0x32

.field private static final TAG:Ljava/lang/String;

.field private static sVoiceMailEntry:Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->sVoiceMailEntry:Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "-1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "-2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "-3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CollectionsWrapper$Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNotNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "reference"    # Ljava/lang/CharSequence;

    .prologue
    .line 276
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "CharSequence argument is empty."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    return-object p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 246
    :cond_0
    return-object p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    return-object p0
.end method

.method public static convertLegacyNumberPresentation(Ljava/lang/String;)I
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string/jumbo v0, "-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x3

    return v0

    .line 170
    :cond_0
    const-string/jumbo v0, "-2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const/4 v0, 0x2

    return v0

    .line 172
    :cond_1
    const-string/jumbo v0, "-3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const/4 v0, 0x4

    return v0

    .line 175
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not legacy number presentation!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAddToContactsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x32

    .line 105
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Illegal arguments."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v3, 0x0

    return-object v3

    .line 110
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 113
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 115
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v2, "sipValues":Landroid/content/ContentValues;
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v3, "data1"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const-string/jumbo v3, "data"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v2    # "sipValues":Landroid/content/ContentValues;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 129
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 131
    :cond_2
    const-string/jumbo v3, "name"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :cond_3
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 135
    return-object v1

    .line 125
    :cond_4
    const-string/jumbo v3, "phone"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getNumberPresentationMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numberPresentation"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 160
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 149
    .restart local v0    # "result":Ljava/lang/String;
    :pswitch_0
    const v1, 0x7f0900a0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 152
    .local v0, "result":Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f0900a1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 155
    .local v0, "result":Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f0900a2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getVoicemailDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->getVoicemailString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "voicemailString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    return-object v0

    .line 221
    :cond_0
    const v1, 0x7f09009f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 398
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLegacyNumberPresentation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->LEGACY_UNKNOWN_NUMBERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNotCallBackNumber(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "numberPresentation"    # I

    .prologue
    const/4 v1, 0x1

    .line 139
    if-ne p1, v1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    return v1

    .line 142
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isPortraitMode(Landroid/content/res/Resources;)Z
    .locals 3
    .param p0, "resource"    # Landroid/content/res/Resources;

    .prologue
    const/4 v1, 0x1

    .line 295
    if-nez p0, :cond_0

    .line 296
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Resources arguments is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 299
    .local v0, "cfg":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVoiceMailNumberOrUri(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numberOrUri"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->isVoiceMailUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->sVoiceMailEntry:Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->getNumber(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 193
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isVoiceMailUri(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string/jumbo v0, "voicemail:x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    return v0

    .line 206
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static launchAddToContacts(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 91
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 92
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Illegal arguments."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x0

    return v1

    .line 97
    :cond_1
    invoke-static {p1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->getAddToContactsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToFirst(Landroid/database/Cursor;)Z
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 284
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    return v0

    .line 285
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Cursor not valid, could not move to first"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public static parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 227
    if-nez p0, :cond_0

    .line 228
    return-object v0

    .line 230
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static phoneIsIdle(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 73
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 74
    if-nez p0, :cond_0

    .line 75
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Illegal arguments."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return v3

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 79
    .local v0, "result":Z
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    invoke-static {p0, v3}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->simIsIdle(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->simIsIdle(Landroid/content/Context;I)Z

    move-result v0

    .line 86
    .end local v0    # "result":Z
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 87
    return v0

    .line 80
    .restart local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_2
    const/4 v1, -0x1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->simIsIdle(Landroid/content/Context;I)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0
.end method

.method public static simIsIdle(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sub"    # I

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getCallState(Landroid/content/Context;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 410
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SecurityException in startService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v1, 0x0

    return-object v1
.end method

.method public static vibrate(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 306
    if-eqz p0, :cond_0

    .line 307
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 305
    :cond_0
    return-void
.end method
