.class public Lcom/mediatek/audioprofile/AudioProfileNotification;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AudioProfileNotification.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockscreen:Lcom/android/settings/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mSecure:Z


# direct methods
.method static synthetic -get0(Lcom/mediatek/audioprofile/AudioProfileNotification;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic -set0(Lcom/mediatek/audioprofile/AudioProfileNotification;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/audioprofile/AudioProfileNotification;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 195
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 194
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 190
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 189
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLockscreenNotifications()V
    .locals 5

    .prologue
    const v4, 0x7f0b0a85

    const v3, 0x7f0b0a84

    const v2, 0x7f0b0a83

    .line 122
    const-string/jumbo v0, "lock_screen_notifications"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DropDownPreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/settings/DropDownPreference;

    .line 123
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/settings/DropDownPreference;

    if-nez v0, :cond_0

    .line 124
    const-string/jumbo v0, "@M_AudioProfileNotification"

    const-string/jumbo v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/settings/DropDownPreference;

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v2, v1}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 129
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mSecure:Z

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/settings/DropDownPreference;

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v3, v1}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/settings/DropDownPreference;

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v4, v1}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->updateLockscreenNotifications()V

    .line 136
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/settings/DropDownPreference;

    new-instance v1, Lcom/mediatek/audioprofile/AudioProfileNotification$2;

    invoke-direct {v1, p0}, Lcom/mediatek/audioprofile/AudioProfileNotification$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileNotification;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 121
    return-void
.end method

.method private initPulse()V
    .locals 2

    .prologue
    .line 86
    const-string/jumbo v0, "notification_pulse"

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 87
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 88
    const-string/jumbo v0, "@M_AudioProfileNotification"

    const-string/jumbo v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    const v1, 0x1120041

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->updatePulse()V

    .line 96
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/mediatek/audioprofile/AudioProfileNotification$1;

    invoke-direct {v1, p0}, Lcom/mediatek/audioprofile/AudioProfileNotification$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileNotification;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private refreshNotificationListeners()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 170
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 172
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 175
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 176
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 177
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 178
    const v4, 0x7f0b0a97

    .line 177
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 181
    const v5, 0x7f110009

    .line 180
    invoke-virtual {v3, v5, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 156
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/settings/DropDownPreference;

    if-nez v2, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 160
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 161
    :goto_0
    if-nez v1, :cond_2

    const v2, 0x7f0b0a85

    :goto_1
    iput v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreenSelectedValue:I

    .line 164
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreen:Lcom/android/settings/DropDownPreference;

    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 155
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 162
    .end local v0    # "allowPrivate":Z
    :cond_2
    if-eqz v0, :cond_3

    const v2, 0x7f0b0a83

    goto :goto_1

    .line 163
    :cond_3
    const v2, 0x7f0b0a84

    goto :goto_1
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 109
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 110
    return-void

    .line 113
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 114
    const-string/jumbo v4, "notification_light_pulse"

    .line 113
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    return-void

    .line 113
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "@M_AudioProfileNotification"

    const-string/jumbo v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 200
    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    const-string/jumbo v1, "@M_AudioProfileNotification"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mContext:Landroid/content/Context;

    .line 50
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mPM:Landroid/content/pm/PackageManager;

    .line 51
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mSecure:Z

    .line 53
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 54
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 57
    :cond_0
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileNotification;->addPreferencesFromResource(I)V

    .line 59
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->initPulse()V

    .line 60
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->initLockscreenNotifications()V

    .line 62
    const-string/jumbo v1, "manage_notification_access"

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileNotification;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileNotification;->mNotificationAccess:Landroid/preference/Preference;

    .line 63
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileNotification;->refreshNotificationListeners()V

    .line 46
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 79
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "@M_AudioProfileNotification"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 70
    return-void
.end method
