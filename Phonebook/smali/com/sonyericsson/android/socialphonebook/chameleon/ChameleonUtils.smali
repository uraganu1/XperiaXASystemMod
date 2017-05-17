.class public Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;
.super Ljava/lang/Object;
.source "ChameleonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    }
.end annotation


# static fields
.field public static final HIDDEN_CODE_ACTION:Ljava/lang/String; = "com.sonymobile.sbmsprint.HiddenMenus.HIDDEN_CODE"

.field private static final HIDDEN_CODE_URI_PREFIX:Ljava/lang/String; = "sbmsprint_hidden_code://"

.field public static final OMA_NODE_PROVIDER_URI:Landroid/net/Uri;

.field public static final OMA_NODE_PROVIDER_VALUE_COLUMN:Ljava/lang/String; = "value"

.field public static final PHONESTATE_UNBRANDED_STR:Ljava/lang/String; = "Chameleon"

.field public static final PRELOAD_CONTACT_PREFIX:Ljava/lang/String; = "./Customization/Contacts/"

.field public static final VOICEMAIL_COLUMN_DOMESTIC_NBR:Ljava/lang/String; = "domestic_number"

.field public static final VOICEMAIL_COLUMN_ROAMING_NBR:Ljava/lang/String; = "international_roaming_number"

.field private static final VOICEMAIL_SELECTION:Ljava/lang/String; = "./Customization/SpeedDial/1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "content://com.sonymobile.omadm.sbmsprint.provider/master/application"

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->OMA_NODE_PROVIDER_URI:Landroid/net/Uri;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static excludeChameleonContactSelection(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 134
    const-string/jumbo v0, "_id"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v0, " NOT IN (SELECT "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v0, "contact_id"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v0, " FROM raw_contacts WHERE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string/jumbo v0, "sync1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v0, " LIKE \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v0, "./Customization/Contacts/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v0, "%\')"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    return-void
.end method

.method public static fetchPreloadContactIds(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 151
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 152
    .local v6, "contactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 153
    const-string/jumbo v0, "contact_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 155
    .local v2, "projection":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "sync1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string/jumbo v0, " LIKE \'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v0, "./Customization/Contacts/"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v0, "%\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "preloadCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 162
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 161
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 163
    .local v7, "preloadCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 164
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const-string/jumbo v0, "contact_id"

    .line 165
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 169
    .end local v7    # "preloadCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    if-eqz v7, :cond_0

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    if-eqz v1, :cond_4

    throw v1

    .restart local v7    # "preloadCursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v7, :cond_2

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_3
    if-eqz v9, :cond_5

    throw v9

    :catch_1
    move-exception v9

    goto :goto_3

    .end local v7    # "preloadCursor":Landroid/database/Cursor;
    :catch_2
    move-exception v4

    if-nez v1, :cond_3

    move-object v1, v4

    goto :goto_2

    :cond_3
    if-eq v1, v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v0

    .line 170
    .restart local v7    # "preloadCursor":Landroid/database/Cursor;
    :cond_5
    return-object v6

    .line 169
    .end local v7    # "preloadCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method

.method public static getDeviceRoamingState(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 88
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 90
    .local v1, "networkType":I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    .line 91
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    .line 95
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->GSM:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    .line 110
    .end local v1    # "networkType":I
    .local v2, "roamingState":Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    :goto_0
    return-object v2

    .line 92
    .end local v2    # "roamingState":Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    .restart local v1    # "networkType":I
    :cond_1
    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    .line 93
    const/16 v5, 0x8

    if-eq v1, v5, :cond_0

    .line 94
    const/16 v5, 0xa

    if-eq v1, v5, :cond_0

    .line 97
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "networkCountry":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "simCountry":Ljava/lang/String;
    if-eqz v0, :cond_2

    if-nez v3, :cond_3

    .line 100
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->NULL:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    .restart local v2    # "roamingState":Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    goto :goto_0

    .line 101
    .end local v2    # "roamingState":Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->DOMESTIC:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    .restart local v2    # "roamingState":Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    goto :goto_0

    .line 104
    .end local v2    # "roamingState":Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    :cond_4
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->INTERNATIONAL:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    .restart local v2    # "roamingState":Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    goto :goto_0

    .line 108
    .end local v0    # "networkCountry":Ljava/lang/String;
    .end local v1    # "networkType":I
    .end local v2    # "roamingState":Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    .end local v3    # "simCountry":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;->HOME:Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;

    .restart local v2    # "roamingState":Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils$RoamingState;
    goto :goto_0
.end method

.method public static getHiddenCodeUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sbmsprint_hidden_code://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVoicemailSelection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "./Customization/SpeedDial/1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 62
    return-object v0
.end method

.method public static isChameleonPreloadedContact(Ljava/lang/String;)Z
    .locals 1
    .param p0, "chameleonPreloadedNode"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p0, :cond_0

    .line 123
    const-string/jumbo v0, "./Customization/Contacts/"

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
