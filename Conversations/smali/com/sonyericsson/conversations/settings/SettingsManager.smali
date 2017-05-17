.class public Lcom/sonyericsson/conversations/settings/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/settings/SettingsManager$SecureSettingsObserver;,
        Lcom/sonyericsson/conversations/settings/SettingsManager$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentDefaultSmsPackage:Ljava/lang/String;

.field private mOnUpgradeListener:Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;

.field private mRetryAlarmEnabled:Z

.field private mSecureSettingsObserver:Lcom/sonyericsson/conversations/settings/SettingsManager$SecureSettingsObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/sonyericsson/conversations/settings/SettingsManager$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/settings/SettingsManager$1;-><init>(Lcom/sonyericsson/conversations/settings/SettingsManager;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mOnUpgradeListener:Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private addOrCancelDefaultSmsAppReminderAlarm(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "addAlarm"    # Z

    .prologue
    .line 175
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/sonyericsson/conversations/util/SwitchDefaultAppReminderService;->INTENT_ACTION_SWITCH_DEFAULT_SMS_APP:Ljava/lang/String;

    .line 176
    const-class v6, Lcom/sonyericsson/conversations/util/SwitchDefaultAppReminderService;

    const/4 v7, 0x0

    .line 175
    invoke-direct {v4, v5, v7, p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v4, "service":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 178
    const/high16 v6, 0x40000000    # 2.0f

    .line 177
    invoke-static {p1, v5, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 179
    .local v1, "operation":Landroid/app/PendingIntent;
    const-string/jumbo v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 180
    .local v0, "am":Landroid/app/AlarmManager;
    if-eqz p2, :cond_1

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xa4cb800

    add-long v2, v6, v8

    .line 183
    .local v2, "retryAt":J
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 184
    sget-boolean v5, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    .line 185
    const-string/jumbo v5, "Switch default sms app reminder is scheduled at: "

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    .line 186
    const-string/jumbo v6, "kk:mm:ss."

    invoke-static {v6, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    .line 185
    invoke-virtual {v5, v6}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    .line 187
    const-wide/16 v6, 0x3e8

    rem-long v6, v2, v6

    .line 185
    invoke-virtual {v5, v6, v7}, Lcom/sonymobile/conversations/util/LogUtil;->add(J)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    .line 173
    .end local v2    # "retryAt":J
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 191
    sget-boolean v5, Lcom/sonymobile/conversations/util/LogUtil;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    .line 192
    const-string/jumbo v5, "Switch default sms app reminder is canceled"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsDebug()V

    goto :goto_0
.end method

.method private isDefaultSmsAppNotificationEnabled()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/settings/Settings;->isDefaultSmsAppNotificationEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSecureSettingsObserver:Lcom/sonyericsson/conversations/settings/SettingsManager$SecureSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    return-void
.end method

.method public currentDefaultSmsPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mCurrentDefaultSmsPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mCurrentDefaultSmsPackage:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mCurrentDefaultSmsPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    const-string/jumbo v1, "sms_default_application"

    .line 118
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mCurrentDefaultSmsPackage:Ljava/lang/String;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mCurrentDefaultSmsPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getMyselfSimNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "simCardSlotIndex"    # I

    .prologue
    .line 285
    packed-switch p1, :pswitch_data_0

    .line 291
    const-string/jumbo v0, ""

    return-object v0

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_key_sim_1_number"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_key_sim_2_number"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getOnUpgradeListener()Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mOnUpgradeListener:Lcom/sonyericsson/conversations/upgrade/OnUpgradeListener;

    return-object v0
.end method

.method public getRecentStickersJsonString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_key_recent_stickers"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 81
    new-instance v1, Lcom/sonyericsson/conversations/settings/SettingsManager$SecureSettingsObserver;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/settings/SettingsManager$SecureSettingsObserver;-><init>(Lcom/sonyericsson/conversations/settings/SettingsManager;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSecureSettingsObserver:Lcom/sonyericsson/conversations/settings/SettingsManager$SecureSettingsObserver;

    .line 82
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 83
    const-string/jumbo v2, "sms_default_application"

    .line 82
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 84
    .local v0, "defaultSmsAppSettingUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSecureSettingsObserver:Lcom/sonyericsson/conversations/settings/SettingsManager$SecureSettingsObserver;

    const/4 v3, 0x0

    .line 84
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    invoke-direct {p0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsAppNotificationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 89
    const-string/jumbo v2, "pref_key_show_reminder_notification_to_switch_default_sms_app"

    .line 88
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/conversations/settings/SettingsManager;->addOrCancelDefaultSmsAppReminderAlarm(Landroid/content/Context;Z)V

    .line 92
    iput-boolean v4, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mRetryAlarmEnabled:Z

    goto :goto_0
.end method

.method public isDefaultSmsPackage()Z
    .locals 3

    .prologue
    .line 106
    iget-object v2, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->currentDefaultSmsPackage()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "currentDefaultSmsPackage":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public isFileTransferAutoAcceptQuestionAsked()Z
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 225
    const-string/jumbo v1, "pref_key_file_transfer_auto_accept_question_asked"

    .line 226
    const/4 v2, 0x0

    .line 224
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isJoynWelcomeScreenDisplayed()Z
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_key_joyn_welcome_screen_displayed"

    .line 203
    const/4 v2, 0x0

    .line 202
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isUserDefinedDisplayName()Z
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_key_rcs_user_alias"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWelcomeScreenDisplayed()Z
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_key_welcome_screen_displayed"

    .line 214
    const/4 v2, 0x0

    .line 213
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mCurrentDefaultSmsPackage:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getNotificationManagerProxy()Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/notifications/NotificationManagerApi;->updateBadgeIcon()V

    .line 153
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsAppNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/settings/SettingsManager;->persistShowChangeDefaultSmsAppBannerChoice(Z)V

    .line 159
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mRetryAlarmEnabled:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->addOrCancelDefaultSmsAppReminderAlarm(Landroid/content/Context;Z)V

    .line 161
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mRetryAlarmEnabled:Z

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 165
    const-string/jumbo v1, "pref_key_show_reminder_notification_to_switch_default_sms_app"

    .line 164
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/conversations/settings/SettingsManager;->addOrCancelDefaultSmsAppReminderAlarm(Landroid/content/Context;Z)V

    .line 168
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mRetryAlarmEnabled:Z

    goto :goto_0
.end method

.method public persistGeoTagSettings(ZLandroid/app/Activity;)V
    .locals 4
    .param p1, "include"    # Z
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 348
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 350
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 351
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 352
    const-string/jumbo v2, "pref_key_geotag"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 356
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 347
    return-void

    .line 354
    :cond_0
    const-string/jumbo v2, "pref_key_geotag"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public persistOnDefaultSmsAppOneTimeReminderShown()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_key_show_reminder_notification_to_switch_default_sms_app"

    .line 143
    const/4 v2, 0x0

    .line 142
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    return-void
.end method

.method public persistShowChangeDefaultSmsAppBannerChoice(Z)V
    .locals 2
    .param p1, "showBanner"    # Z

    .prologue
    .line 135
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_key_show_change_default_sms_app_banner"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    return-void
.end method

.method public saveRecentStickersJsonArray(Ljava/lang/String;)V
    .locals 2
    .param p1, "recentsJSON"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 338
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_key_recent_stickers"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 336
    return-void
.end method

.method public setAddRecipientTooltipShown()V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 280
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_key_rcs_tooltip_add_recepient_displayed"

    const/4 v2, 0x1

    .line 279
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    return-void
.end method

.method public setFileTransferAutoAcceptQuestionAsked(Z)V
    .locals 2
    .param p1, "asked"    # Z

    .prologue
    .line 230
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 232
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_key_file_transfer_auto_accept_question_asked"

    .line 231
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    return-void
.end method

.method public setJoynWelcomeScreenDisplayed(Z)V
    .locals 2
    .param p1, "displayed"    # Z

    .prologue
    .line 207
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_key_joyn_welcome_screen_displayed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    return-void
.end method

.method public setNewGroupChatTooltipShown()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_key_rcs_tooltip_new_group_chat_displayed"

    const/4 v2, 0x1

    .line 266
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    return-void
.end method

.method public setResendUndeliveredMessageDialogShown()V
    .locals 3

    .prologue
    .line 323
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 324
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_key_rcs_undelivered_message_dialog_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    return-void
.end method

.method public setUndeliveredMessageResendBehavior(Z)V
    .locals 2
    .param p1, "alwaysResendViaXms"    # Z

    .prologue
    .line 312
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 313
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_key_rcs_undelivered_message"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 311
    return-void
.end method

.method public setWelcomeScreenDisplayed(Z)V
    .locals 2
    .param p1, "displayed"    # Z

    .prologue
    .line 218
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "pref_key_welcome_screen_displayed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    return-void
.end method

.method public shallDisplayChangeDefaultSmsAppBanner()Z
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isRcseConfigured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 130
    const-string/jumbo v1, "pref_key_show_change_default_sms_app_banner"

    .line 131
    const/4 v2, 0x1

    .line 129
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAlwaysResendUndeliveredMessage()Z
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_key_rcs_undelivered_message"

    .line 302
    const/4 v2, 0x0

    .line 301
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldShowAddRecipientTooltip()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 273
    const-string/jumbo v2, "pref_key_rcs_tooltip_add_recepient_displayed"

    .line 272
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isJoynWelcomeScreenDisplayed()Z

    move-result v0

    .line 272
    :cond_0
    return v0
.end method

.method public shouldShowNewGroupChatTooltip()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 260
    const-string/jumbo v2, "pref_key_rcs_tooltip_new_group_chat_displayed"

    .line 259
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isJoynWelcomeScreenDisplayed()Z

    move-result v0

    .line 259
    :cond_0
    return v0
.end method

.method public shouldShowResendUndeliveredMessageDialog()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 318
    iget-object v1, p0, Lcom/sonyericsson/conversations/settings/SettingsManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 319
    const-string/jumbo v2, "pref_key_rcs_undelivered_message_dialog_shown"

    .line 318
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
