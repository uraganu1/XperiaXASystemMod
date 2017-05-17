.class public Lcom/sonyericsson/android/socialphonebook/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ProviderNames;,
        Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    }
.end annotation


# static fields
.field public static final ASSISTED_DIALING_EXTRA_NAME:Ljava/lang/String; = "com.sonymobile.phone.FROM"

.field public static final ASSISTED_DIALING_EXTRA_VALUE:Ljava/lang/String; = "contacts"

.field public static final ASSISTED_JAPAN_DIALING_ACTION:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.action.CALL_JAPAN_NUMBER"

.field public static final ASSISTED_JAPAN_DIALING_EXTRA_INTENT:Ljava/lang/String; = "japanDialingIntent"

.field private static final CALL_ACTIVITY_NAME:Ljava/lang/String; = "com.android.server.telecom.components.UserCallActivity"

.field private static final CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

.field private static final EXTRA_CONFERENCE_CALL_KEY:Ljava/lang/String; = "org.codeaurora.extra.DIAL_CONFERENCE_URI"

.field public static final EXTRA_RECENT_SUB_KEY:Ljava/lang/String; = "preferred_subscription"

.field private static final EXTRA_VIDEO_CALL_KEY:Ljava/lang/String; = "somc_call_type"

.field private static final EXTRA_VIDEO_CALL_VALUE:Ljava/lang/String; = "video"

.field public static final PHONE_APP_ADDITIONAL_CALL_SETTINGS_ACTIVITY:Ljava/lang/String; = "com.android.phone.GsmUmtsAdditionalCallOptions"

.field public static final PHONE_APP_CALL_SETTINGS_ACTIVITY:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting"

.field private static final PHONE_APP_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final PRIVILEGED_CALL_ACTIVITY_NAME:Ljava/lang/String; = "com.android.server.telecom.PrivilegedCallActivity"

.field private static final PRIVILEGED_CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String;

.field private static final TELECOM_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.server.telecom"

.field public static final VIDEO_GROUP_SERVICE_ACTION_ADD_PERMANENTLY:Ljava/lang/String; = "com.sonymobile.videocalling.ADD_CONTACTS_PERMANENTLY_TO_GROUP"

.field public static final VIDEO_GROUP_SERVICE_ACTION_UPDATE_CURRENT_STATE:Ljava/lang/String; = "com.sonymobile.videocalling.UPDATE_CURRENT_STATE"

.field private static sInjectedPagageManager:Landroid/content/pm/PackageManager;

.field private static sPhotoDimension:I

.field private static sThumbnailSize:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 84
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->TAG:Ljava/lang/String;

    .line 102
    new-instance v0, Landroid/content/ComponentName;

    .line 103
    const-string/jumbo v1, "com.android.server.telecom"

    const-string/jumbo v2, "com.android.server.telecom.components.UserCallActivity"

    .line 102
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

    .line 105
    new-instance v0, Landroid/content/ComponentName;

    .line 106
    const-string/jumbo v1, "com.android.server.telecom"

    const-string/jumbo v2, "com.android.server.telecom.PrivilegedCallActivity"

    .line 105
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->PRIVILEGED_CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

    .line 139
    sput v3, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->sThumbnailSize:I

    .line 141
    sput v3, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->sPhotoDimension:I

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "a"    # Landroid/content/Intent;
    .param p1, "b"    # Landroid/content/Intent;

    .prologue
    .line 379
    if-ne p0, p1, :cond_0

    .line 380
    const/4 v0, 0x1

    return v0

    .line 382
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 383
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 385
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 372
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static beginFragmentTransaction(Landroid/app/FragmentManager;)Landroid/app/FragmentTransaction;
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 1026
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/FragmentTransactionWrapper;-><init>(Landroid/app/FragmentTransaction;)V

    return-object v0
.end method

.method public static buildImIntent(Landroid/content/Context;Lcom/android/contacts/common/model/dataitem/ImDataItem;)Landroid/util/Pair;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "im"    # Lcom/android/contacts/common/model/dataitem/ImDataItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/common/model/dataitem/ImDataItem;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1125
    const/4 v2, 0x0

    .line 1126
    .local v2, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 1127
    .local v5, "secondaryIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v3

    .line 1129
    .local v3, "isEmail":Z
    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1133
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v1

    .line 1134
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1135
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v7, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 1130
    .end local v1    # "data":Ljava/lang/String;
    :cond_1
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v7, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 1138
    .restart local v1    # "data":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    const/4 v4, 0x5

    .line 1140
    .local v4, "protocol":I
    :goto_0
    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    .line 1141
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getChatCapability()I

    move-result v0

    .line 1142
    .local v0, "chatCapability":I
    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_4

    .line 1143
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.SENDTO"

    .line 1144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmpp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1143
    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1145
    .local v2, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "secondaryIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.SENDTO"

    .line 1146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmpp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?call"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1145
    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1161
    .end local v0    # "chatCapability":I
    :goto_1
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 1138
    .end local v4    # "protocol":I
    .local v2, "intent":Landroid/content/Intent;
    .restart local v5    # "secondaryIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .restart local v4    # "protocol":I
    goto :goto_0

    .line 1147
    .restart local v0    # "chatCapability":I
    :cond_4
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_5

    .line 1150
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.SENDTO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmpp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1152
    .local v2, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "secondaryIntent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.SENDTO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmpp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?call"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1151
    .local v5, "secondaryIntent":Landroid/content/Intent;
    goto :goto_1

    .line 1155
    .local v2, "intent":Landroid/content/Intent;
    .local v5, "secondaryIntent":Landroid/content/Intent;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "android.intent.action.SENDTO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmpp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1154
    .local v2, "intent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 1159
    .end local v0    # "chatCapability":I
    .local v2, "intent":Landroid/content/Intent;
    :cond_6
    invoke-static {p1, v4}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCustomImIntent(Lcom/android/contacts/common/model/dataitem/ImDataItem;I)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    goto/16 :goto_1
.end method

.method public static getAdditionalCallSettingsIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 807
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 808
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.phone"

    .line 809
    const-string/jumbo v3, "com.android.phone.GsmUmtsAdditionalCallOptions"

    .line 808
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 810
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    return-object v0
.end method

.method public static getBitmapOptions(Landroid/content/Context;[B)Landroid/graphics/BitmapFactory$Options;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoData"    # [B

    .prologue
    const/4 v9, 0x0

    .line 209
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 211
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 212
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 213
    array-length v7, p1

    invoke-static {p1, v9, v7, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 214
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 215
    .local v5, "outWidth":I
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 218
    .local v4, "outHeight":I
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v0

    .line 219
    .local v0, "config":Lcom/sonyericsson/android/socialphonebook/Configuration;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getLargePhotoWidth()I

    move-result v2

    .line 220
    .local v2, "maxWidth":I
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getLargePhotoHeight()I

    move-result v1

    .line 222
    .local v1, "maxHeight":I
    if-gt v5, v2, :cond_0

    if-le v4, v1, :cond_1

    .line 223
    :cond_0
    div-int v7, v5, v2

    div-int v8, v4, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 224
    .local v6, "scale":I
    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 226
    .end local v6    # "scale":I
    :cond_1
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 229
    .end local v0    # "config":Lcom/sonyericsson/android/socialphonebook/Configuration;
    .end local v1    # "maxHeight":I
    .end local v2    # "maxWidth":I
    .end local v4    # "outHeight":I
    .end local v5    # "outWidth":I
    :cond_2
    return-object v3
.end method

.method public static getCallIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "originatesFromContact"    # Z

    .prologue
    .line 631
    invoke-static {p1, p2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getPrivilegedCallIntent(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 636
    .local v0, "callIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.server.telecom"

    invoke-static {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->PRIVILEGED_CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 646
    :cond_0
    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isInternationalCallToJapan(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 648
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonyericsson.android.socialphonebook.action.CALL_JAPAN_NUMBER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, "callJapanIntent":Landroid/content/Intent;
    const-string/jumbo v2, "japanDialingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 651
    return-object v1

    .line 653
    .end local v1    # "callJapanIntent":Landroid/content/Intent;
    :cond_1
    return-object v0
.end method

.method public static getCallIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "originatesFromContact"    # Z

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "originatesFromContact"    # Z

    .prologue
    .line 590
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 793
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 794
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.phone"

    .line 795
    const-string/jumbo v3, "com.android.phone.CallFeaturesSetting"

    .line 794
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 796
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 797
    return-object v0
.end method

.method public static getCallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 614
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const-string/jumbo v0, "sip"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 617
    :cond_0
    const-string/jumbo v0, "tel"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getConferenceCallIntent([Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .param p0, "numbers"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    .local v2, "numbersToCall":Ljava/lang/StringBuilder;
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, p0, v4

    .line 754
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 755
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 759
    .end local v1    # "number":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "tel"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 760
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v3, v5}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getPrivilegedCallIntent(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 761
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 762
    return-object v0
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 394
    const-string/jumbo v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 395
    .local v0, "detector":Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCustomImIntent(Lcom/android/contacts/common/model/dataitem/ImDataItem;I)Landroid/content/Intent;
    .locals 7
    .param p0, "im"    # Lcom/android/contacts/common/model/dataitem/ImDataItem;
    .param p1, "protocol"    # I

    .prologue
    const/4 v6, 0x0

    .line 1101
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v2

    .line 1102
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v1

    .line 1103
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1104
    return-object v6

    .line 1106
    :cond_0
    const/4 v5, -0x1

    if-eq p1, v5, :cond_1

    .line 1108
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v2

    .line 1110
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1111
    return-object v6

    .line 1113
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "authority":Ljava/lang/String;
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v6, "imto"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1116
    .local v3, "imUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.SENDTO"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1117
    .local v4, "intent":Landroid/content/Intent;
    return-object v4
.end method

.method public static getInvitableIntent(Lcom/android/contacts/common/model/account/AccountType;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .param p0, "accountType"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 406
    .local v2, "resPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/account/AccountType;->getInviteContactActivityClassName()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "className":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 410
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 411
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string/jumbo v3, "com.android.contacts.action.INVITE_CONTACT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 417
    return-object v1
.end method

.method private static getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1183
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->sInjectedPagageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1184
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->sInjectedPagageManager:Landroid/content/pm/PackageManager;

    goto :goto_0
.end method

.method public static getPhotoDimension(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 524
    sget v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->sPhotoDimension:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 525
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 526
    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 527
    const-string/jumbo v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 525
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 529
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 531
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->sPhotoDimension:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 539
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    sget v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->sPhotoDimension:I

    return v0

    .line 534
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 535
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 534
    throw v0
.end method

.method private static getPrivilegedCallIntent(Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "originatesFromContact"    # Z

    .prologue
    .line 776
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 777
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 780
    if-eqz p1, :cond_0

    .line 781
    const-string/jumbo v1, "com.sonymobile.phone.FROM"

    const-string/jumbo v2, "contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    :cond_0
    return-object v0
.end method

.method public static getReadOnlyAccountTypes()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v0, "accTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v2

    .line 546
    .local v2, "syncAdapterTypes":[Landroid/content/SyncAdapterType;
    if-eqz v2, :cond_2

    .line 547
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v2, v3

    .line 548
    .local v1, "syncAdapter":Landroid/content/SyncAdapterType;
    const-string/jumbo v5, "com.android.contacts"

    iget-object v6, v1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 549
    invoke-virtual {v1}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 547
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 550
    :cond_1
    iget-object v5, v1, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 554
    .end local v1    # "syncAdapter":Landroid/content/SyncAdapterType;
    :cond_2
    return-object v0
.end method

.method public static getRelativeTimeSpan(J)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "date"    # J

    .prologue
    .line 1042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1044
    .local v2, "now":J
    const/high16 v6, 0x80000

    .line 1046
    .local v6, "flags":I
    invoke-static {p0, p1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1051
    .local v10, "local":Landroid/text/format/Time;
    invoke-virtual {v10, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1052
    iget-wide v8, v10, Landroid/text/format/Time;->gmtoff:J

    .line 1053
    .local v8, "gmtoff":J
    invoke-static {p0, p1, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    invoke-static {v2, v3, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    sub-int v7, v0, v1

    .line 1055
    .local v7, "days":I
    int-to-long v0, v7

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v0, v4

    add-long p0, v2, v0

    .line 1058
    .end local v7    # "days":I
    .end local v8    # "gmtoff":J
    .end local v10    # "local":Landroid/text/format/Time;
    :cond_0
    const-wide/32 v4, 0xea60

    move-wide v0, p0

    .line 1057
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSendEmailIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SENDTO"

    .line 572
    const-string/jumbo v2, "mailto"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 571
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 574
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static getSendMessageIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 561
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SENDTO"

    .line 562
    const-string/jumbo v2, "sms"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 561
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 564
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method public static getSimPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 429
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    .line 431
    const-string/jumbo v1, "phone"

    .line 430
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 432
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 435
    .end local v0    # "manager":Landroid/telephony/TelephonyManager;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSipCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 691
    const-string/jumbo v0, "sip"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getPrivilegedCallIntent(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/res/Resources;)I
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 1236
    const/4 v1, 0x0

    .line 1237
    .local v1, "statusBarHeight":I
    const-string/jumbo v2, "status_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1238
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 1239
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1241
    :cond_0
    return v1
.end method

.method public static getThumbnailSize(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 501
    sget v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->sThumbnailSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 502
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 503
    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    .line 504
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "thumbnail_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 502
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 505
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 507
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->sThumbnailSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 515
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    sget v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->sThumbnailSize:I

    return v0

    .line 510
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 511
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 510
    throw v0
.end method

.method public static getVideoCallIntent(Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "includeVideoState"    # Z

    .prologue
    .line 730
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getPrivilegedCallIntent(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 731
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->PRIVILEGED_CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 732
    const-string/jumbo v1, "somc_call_type"

    const-string/jumbo v2, "video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    if-eqz p1, :cond_0

    .line 738
    const-string/jumbo v1, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    .line 739
    const/4 v2, 0x3

    .line 738
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    :cond_0
    return-object v0
.end method

.method public static getVideoCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 702
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getVideoCallIntent(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "simNumber"    # Ljava/lang/String;

    .prologue
    .line 715
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 716
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->arePhoneNumbersEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 715
    :goto_0
    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getVideoCallIntent(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 716
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getVideoGroupServiceAddPermanentlyIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1205
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.videocalling.ADD_CONTACTS_PERMANENTLY_TO_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVideoGroupServiceUpdateCurrentStateIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1197
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.videocalling.UPDATE_CURRENT_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVoicemailCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 664
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    const-string/jumbo v2, "voicemail:x"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 669
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 670
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 675
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->CALL_INTENT_DESTINATION:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 676
    return-object v0

    .line 667
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "voicemail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public static initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;
    .param p2, "originatesFromContact"    # Z

    .prologue
    .line 325
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isCallingInPinnedModeAndNotify(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 324
    return-void
.end method

.method public static initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 336
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSendMessageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 335
    return-void
.end method

.method public static isAccountPhotoCapable(Lcom/android/contacts/common/model/account/AccountType;)Z
    .locals 1
    .param p0, "type"    # Lcom/android/contacts/common/model/account/AccountType;

    .prologue
    .line 1016
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 350
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    .line 352
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 353
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 354
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 355
    .local v0, "gc":I
    const/16 v3, 0xf

    if-eq v0, v3, :cond_1

    .line 356
    const/16 v3, 0x10

    if-eq v0, v3, :cond_1

    .line 357
    if-eqz v0, :cond_1

    .line 358
    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    .line 359
    const/16 v3, 0xe

    if-eq v0, v3, :cond_1

    .line 360
    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    .line 361
    const/4 v3, 0x1

    return v3

    .line 353
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "gc":I
    :cond_2
    return v4
.end method

.method public static isIceContact(Landroid/content/ContentResolver;J)Z
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1245
    new-array v2, v9, [Ljava/lang/String;

    .line 1246
    const-string/jumbo v0, "_id"

    aput-object v0, v2, v8

    .line 1248
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "_id=?"

    .line 1249
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    .line 1250
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 1252
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ExtendContacts;->CONTENT_ICE_URI:Landroid/net/Uri;

    .line 1253
    const/4 v5, 0x0

    move-object v0, p0

    .line 1252
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1254
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 1259
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    if-eqz v7, :cond_4

    throw v7

    :cond_1
    if-eqz v6, :cond_2

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    throw v7

    :catch_0
    move-exception v7

    goto :goto_1

    .line 1255
    :cond_3
    return v8

    .line 1259
    :catch_1
    move-exception v7

    goto :goto_0

    .line 1257
    :cond_4
    return v9

    .line 1259
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_2
    if-eqz v6, :cond_5

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    if-eqz v1, :cond_7

    throw v1

    :catch_3
    move-exception v5

    if-nez v1, :cond_6

    move-object v1, v5

    goto :goto_3

    :cond_6
    if-eq v1, v5, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method public static isIntentResolvable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 823
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInternationalCallToJapan(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1073
    if-nez p0, :cond_0

    .line 1074
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isInternationalCallToJapan called with null Context"

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    return v6

    .line 1077
    :cond_0
    const-string/jumbo v4, "kddi"

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1079
    .local v2, "isKddiBrand":Z
    if-nez v2, :cond_1

    return v6

    .line 1081
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isRoamingEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 1082
    .local v1, "isInRoaming":Z
    if-nez v1, :cond_2

    return v6

    .line 1084
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1090
    .local v3, "strippedPhoneNumber":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 1089
    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "internationalPhoneNumber":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1093
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1096
    :cond_3
    return v6

    .line 1094
    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method public static isModifyAccountsDisallowed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 986
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 987
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "no_modify_accounts"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isOutgoingCallsAllowed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1008
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1009
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "no_outgoing_calls"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 835
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 837
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    return v3

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method public static isPhoneShownAsPrimaryIcon(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1218
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    const/4 v1, 0x1

    return v1

    .line 1222
    :cond_0
    const-string/jumbo v1, ""

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getSendMessageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1223
    .local v0, "smsIntent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSmsCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1224
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 1223
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSmsAllowed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 997
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 998
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "no_sms"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isUserOwner()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1231
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoId"    # J
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 169
    const/4 v8, 0x0

    .line 170
    .local v8, "photoCursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 171
    .local v7, "photoBm":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 174
    .local v9, "photoData":[B
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 176
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "data15"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 177
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 174
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 179
    .local v8, "photoCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    .end local v9    # "photoData":[B
    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    .line 184
    if-nez p3, :cond_1

    .line 186
    invoke-static {p0, v9}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getBitmapOptions(Landroid/content/Context;[B)Landroid/graphics/BitmapFactory$Options;

    move-result-object p3

    .line 189
    :cond_1
    array-length v0, v9

    const/4 v1, 0x0

    invoke-static {v9, v1, v0, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 195
    .end local v7    # "photoBm":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v8, :cond_3

    .line 196
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 200
    .end local v8    # "photoCursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    return-object v7

    .line 180
    .restart local v7    # "photoBm":Landroid/graphics/Bitmap;
    .restart local v8    # "photoCursor":Landroid/database/Cursor;
    .restart local v9    # "photoData":[B
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .local v9, "photoData":[B
    goto :goto_0

    .line 191
    .end local v8    # "photoCursor":Landroid/database/Cursor;
    .end local v9    # "photoData":[B
    :catch_0
    move-exception v6

    .line 192
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadContactPhoto query error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    const/4 v7, 0x0

    .line 195
    if-eqz v8, :cond_3

    .line 196
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 194
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 195
    if-eqz v8, :cond_5

    .line 196
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_5
    throw v0
.end method

.method public static loadContactPhoto(Landroid/content/Context;Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "bitmapColumnIndex"    # I
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v1, 0x0

    .line 156
    if-nez p1, :cond_0

    .line 157
    return-object v1

    .line 160
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 161
    .local v0, "data":[B
    if-nez p3, :cond_1

    .line 162
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getBitmapOptions(Landroid/content/Context;[B)Landroid/graphics/BitmapFactory$Options;

    move-result-object p3

    .line 164
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .locals 1
    .param p0, "protocol"    # I

    .prologue
    .line 256
    packed-switch p0, :pswitch_data_0

    .line 274
    const/4 v0, 0x0

    return-object v0

    .line 258
    :pswitch_0
    const-string/jumbo v0, "GTalk"

    return-object v0

    .line 260
    :pswitch_1
    const-string/jumbo v0, "AIM"

    return-object v0

    .line 262
    :pswitch_2
    const-string/jumbo v0, "MSN"

    return-object v0

    .line 264
    :pswitch_3
    const-string/jumbo v0, "Yahoo"

    return-object v0

    .line 266
    :pswitch_4
    const-string/jumbo v0, "ICQ"

    return-object v0

    .line 268
    :pswitch_5
    const-string/jumbo v0, "JABBER"

    return-object v0

    .line 270
    :pswitch_6
    const-string/jumbo v0, "SKYPE"

    return-object v0

    .line 272
    :pswitch_7
    const-string/jumbo v0, "QQ"

    return-object v0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static queryForAllRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    const/4 v7, 0x0

    .line 300
    .local v7, "rawContactIdCursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v8, "rawContactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 303
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 302
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 305
    .local v7, "rawContactIdCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 306
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 310
    .end local v7    # "rawContactIdCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 311
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryForAllRawContactIds query error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    if-eqz v7, :cond_0

    .line 314
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 317
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v8

    .line 313
    .restart local v7    # "rawContactIdCursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v7, :cond_0

    .line 314
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 312
    .end local v7    # "rawContactIdCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 313
    if-eqz v7, :cond_2

    .line 314
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_2
    throw v0
.end method

.method public static queryForContactId(Landroid/content/ContentResolver;J)J
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "rawContactId"    # J

    .prologue
    .line 278
    const/4 v8, 0x0

    .line 279
    .local v8, "contactIdCursor":Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 281
    .local v6, "contactId":J
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 282
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "contact_id"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 281
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 284
    .local v8, "contactIdCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 291
    :cond_0
    if-eqz v8, :cond_1

    .line 292
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 295
    .end local v8    # "contactIdCursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-wide v6

    .line 287
    :catch_0
    move-exception v9

    .line 288
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryForContactId query error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    const-wide/16 v6, -0x1

    .line 291
    if-eqz v8, :cond_1

    .line 292
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 290
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 291
    if-eqz v8, :cond_2

    .line 292
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_2
    throw v0
.end method

.method public static setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1189
    sput-object p0, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->sInjectedPagageManager:Landroid/content/pm/PackageManager;

    .line 1188
    return-void
.end method

.method public static final shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "mimetype1"    # Ljava/lang/CharSequence;
    .param p1, "data1"    # Ljava/lang/CharSequence;
    .param p2, "mimetype2"    # Ljava/lang/CharSequence;
    .param p3, "data2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 446
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 449
    :cond_0
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 452
    :cond_1
    if-eqz p1, :cond_2

    if-nez p3, :cond_3

    :cond_2
    return v1

    .line 456
    :cond_3
    const-string/jumbo v0, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 458
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final shouldCollapsePhoneNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "number1WithLetters"    # Ljava/lang/String;
    .param p1, "number2WithLetters"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 463
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "number1":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, "number2":Ljava/lang/String;
    const/4 v0, 0x0

    .line 467
    .local v0, "index1":I
    const/4 v1, 0x0

    .line 470
    .local v1, "index2":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 471
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 474
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 475
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 479
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v0, v6, :cond_4

    const/4 v3, 0x1

    .line 480
    .local v3, "number1End":Z
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_5

    const/4 v5, 0x1

    .line 481
    .local v5, "number2End":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 482
    return v5

    .line 472
    .end local v3    # "number1End":Z
    .end local v5    # "number2End":Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 479
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "number1End":Z
    goto :goto_2

    .line 480
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "number2End":Z
    goto :goto_3

    .line 484
    :cond_6
    if-eqz v5, :cond_7

    return v8

    .line 487
    :cond_7
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_8

    return v8

    .line 490
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static verifyIfActivityIsTransactionSafe(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1176
    instance-of v0, p0, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;

    if-nez v0, :cond_0

    .line 1177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity must be instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1178
    const-class v2, Lcom/sonyericsson/android/socialphonebook/TransactionSafeResolvable;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 1177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1175
    :cond_0
    return-void
.end method
