.class public Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;
.super Ljava/lang/Object;
.source "SharedPrefsUtil.java"


# static fields
.field public static final PREFERENCE_NAME:Ljava/lang/String; = "SocialPhonebookPref"

.field private static sSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIceCallSubscription(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "subscription"

    .line 236
    const/4 v2, -0x1

    .line 235
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getIceCanCallFromLockscreen(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 148
    const/4 v0, -0x1

    .line 150
    .local v0, "canIceCall":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 151
    const-string/jumbo v5, "ice_can_call_from_lockscreen"

    .line 150
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 156
    :goto_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 157
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getIceCanCallFromLockscreenOldValue(Landroid/content/Context;)Z

    move-result v2

    .line 158
    .local v2, "oldValue":Z
    invoke-static {p0, v2}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setIceCanCallFromLockscreen(Landroid/content/Context;Z)V

    .line 159
    return v2

    .line 152
    .end local v2    # "oldValue":Z
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, -0x1

    goto :goto_0

    .line 163
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    if-ne v0, v3, :cond_1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getIceCanCallFromLockscreenOldValue(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ice_can_call_from_lockscreen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getIceInfoEneteredFirstTime(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ice_entered_first_time"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getIceShowMedicalInfo(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 97
    const/4 v2, -0x1

    .line 99
    .local v2, "showMedicalInfo":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 100
    const-string/jumbo v5, "ice_show_medical_info"

    .line 99
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 105
    :goto_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 106
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getIceShowMedicalInfoOldValue(Landroid/content/Context;)Z

    move-result v1

    .line 107
    .local v1, "oldValue":Z
    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->setIceShowMedicalInfo(Landroid/content/Context;Z)V

    .line 108
    return v1

    .line 101
    .end local v1    # "oldValue":Z
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v2, -0x1

    goto :goto_0

    .line 112
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    if-ne v2, v3, :cond_1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getIceShowMedicalInfoOldValue(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "ice_show_medical_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->sSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 23
    const-string/jumbo v0, "SocialPhonebookPref"

    const/4 v1, 0x1

    .line 22
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->sSharedPrefs:Landroid/content/SharedPreferences;

    .line 25
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->sSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getShouldShowEnableIceToast(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "should_show_enable_ice_toast"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getShowOutOfBoxFavorites(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 265
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 268
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "favorites_show_out_of_box"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getShowQuickContactCallPlusTutorialCard(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 327
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 330
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "call_plus_quick_contact_tutorial"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static increaseGoogleAnalyticsGroupActionCount(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 384
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 386
    .local v3, "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 387
    .local v1, "defaultValue":I
    const-string/jumbo v4, "ga_groups_threshold_key"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 389
    .local v0, "count":I
    const-string/jumbo v4, "ga_groups_threshold_key"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 392
    return v0
.end method

.method public static isConferenceCallDialogUsed(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 403
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 404
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "conference_call_dialog_usage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isGoogleAnalyticsEventSent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 299
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isInitialMessageShown(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.isInitialEmptyCallLogMessageShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isSmartSearchEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 360
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "smart_search_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static setConferenceCallDialogUsage(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isUsed"    # Z

    .prologue
    .line 414
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 415
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 416
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "conference_call_dialog_usage"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 413
    return-void
.end method

.method public static setGoogleAnalyticsEventSent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 311
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 313
    .local v1, "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    return-void
.end method

.method public static setIceCallSubscription(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 248
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 249
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 252
    .local v1, "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "subscription"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 246
    return-void
.end method

.method public static setIceCanCallFromLockscreen(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "canCallFromLockscreen"    # Z

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    const-string/jumbo v1, "ice_can_call_from_lockscreen"

    .line 176
    const/4 v2, 0x1

    .line 174
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    const-string/jumbo v1, "ice_can_call_from_lockscreen"

    .line 180
    const/4 v2, 0x0

    .line 178
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setIceInfoEneteredFirstTime(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iceShown"    # Z

    .prologue
    .line 82
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 83
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 86
    .local v1, "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "ice_entered_first_time"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    return-void
.end method

.method public static setIceShowMedicalInfo(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iceShowMedicalInfo"    # Z

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "ice_show_medical_info"

    .line 125
    const/4 v2, 0x1

    .line 123
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    const-string/jumbo v1, "ice_show_medical_info"

    .line 129
    const/4 v2, 0x0

    .line 127
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static setInitialMessageIsShown(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isShown"    # Z

    .prologue
    .line 37
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 42
    .local v1, "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "com.sonyericsson.android.socialphonebook.isInitialEmptyCallLogMessageShown"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    return-void
.end method

.method public static setShouldShowEnableIceToast(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldShowToast"    # Z

    .prologue
    .line 214
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 218
    .local v1, "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "should_show_enable_ice_toast"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    return-void
.end method

.method public static setShowOutOfBoxFavorites(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldShowOutOfBox"    # Z

    .prologue
    .line 280
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 281
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 284
    .local v1, "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "favorites_show_out_of_box"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 278
    return-void
.end method

.method public static setShowQuickContactCallPlusTutorialCard(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shouldShowTutorialCard"    # Z

    .prologue
    .line 343
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 344
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 347
    .local v1, "sharedPreferencesEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "call_plus_quick_contact_tutorial"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 341
    return-void
.end method

.method public static setSmartSearchEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .prologue
    .line 370
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/SharedPrefsUtil;->getSPBSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 371
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "smart_search_enabled"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 373
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    return-void
.end method
