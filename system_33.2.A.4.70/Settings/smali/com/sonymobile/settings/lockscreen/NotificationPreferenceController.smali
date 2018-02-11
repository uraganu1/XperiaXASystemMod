.class public Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;
.super Ljava/lang/Object;
.source "NotificationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

.field private mLockscreen:Lcom/android/settings/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private final mSecure:Z

.field private final mSettingsObserver:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)I
    .locals 1

    iget v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;I)I
    .locals 0

    iput p1, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->updateLockscreenNotifications()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;-><init>(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)V

    iput-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mSettingsObserver:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mSecure:Z

    .line 71
    return-void
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 191
    iget-object v1, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 192
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 191
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

    .line 186
    iget-object v1, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 187
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 186
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initKeepLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 5
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v3, 0x0

    .line 197
    const-string/jumbo v2, "somc.lockscreen.keep_notifications"

    .line 196
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/TwoStatePreference;

    iput-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    .line 198
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 199
    const-string/jumbo v2, "NotificationPreferenceController"

    const-string/jumbo v3, "Preference not found: somc.lockscreen.keep_notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 204
    const v4, 0x7f100017

    .line 203
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    const/4 v1, 0x1

    .line 205
    .local v1, "keepNotificationsDefault":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 206
    const-string/jumbo v4, "somc.lockscreen.keep_notifications"

    .line 205
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, "enableKeepNotifications":I
    iget-object v4, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 211
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->getLockscreenNotificationsEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 213
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mKeepLockscreenNotifications:Landroid/preference/TwoStatePreference;

    .line 214
    new-instance v3, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$2;-><init>(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)V

    .line 213
    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    return-void

    .line 204
    .end local v0    # "enableKeepNotifications":I
    .end local v1    # "keepNotificationsDefault":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "keepNotificationsDefault":I
    goto :goto_0

    .restart local v0    # "enableKeepNotifications":I
    :cond_2
    move v2, v3

    .line 207
    goto :goto_1
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 7
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    const v6, 0x7f0b0a85

    const v5, 0x7f0b0a84

    const v4, 0x7f0b0a83

    .line 97
    const-string/jumbo v2, "lock_screen_notifications"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DropDownPreference;

    iput-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    .line 98
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    if-nez v2, :cond_0

    .line 99
    const-string/jumbo v2, "NotificationPreferenceController"

    const-string/jumbo v3, "Preference not found: lock_screen_notifications"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->isSecureNotificationsDisabled()Z

    move-result v0

    .line 104
    .local v0, "isSecureNotificationsDisabled":Z
    invoke-direct {p0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->isUnredactedNotificationsDisabled()Z

    move-result v1

    .line 105
    .local v1, "isUnredactedNotificationsDisabled":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 109
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mSecure:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_4

    .line 113
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 113
    invoke-virtual {v2, v6, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->updateLockscreenNotifications()V

    .line 116
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settings/DropDownPreference;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 117
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    new-instance v3, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$1;-><init>(Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 96
    :goto_2
    return-void

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 106
    invoke-virtual {v2, v4, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    .line 111
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 110
    invoke-virtual {v2, v5, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    goto :goto_1

    .line 140
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private isNotificationsDisabledByPolicy()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v3, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 179
    const-string/jumbo v4, "device_policy"

    .line 178
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 180
    .local v1, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 182
    .local v0, "dpmFlags":I
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isSecureNotificationsDisabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 146
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 147
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isUnredactedNotificationsDisabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 153
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 154
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    const v2, 0x7f0b0a85

    .line 159
    iget-object v3, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    if-nez v3, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->isNotificationsDisabledByPolicy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 165
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/DropDownPreference;->setEnabled(Z)V

    .line 166
    return-void

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 170
    .local v1, "enabled":Z
    iget-boolean v3, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mSecure:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 171
    :goto_0
    if-nez v1, :cond_3

    :goto_1
    iput v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreenSelectedValue:I

    .line 174
    iget-object v2, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreen:Lcom/android/settings/DropDownPreference;

    iget v3, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 158
    return-void

    .line 170
    :cond_2
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 172
    .end local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0b0a83

    goto :goto_1

    .line 173
    :cond_4
    const v2, 0x7f0b0a84

    goto :goto_1
.end method


# virtual methods
.method public initPreferences(Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->initKeepLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 80
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mSettingsObserver:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;->register(Z)V

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController;->mSettingsObserver:Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/lockscreen/NotificationPreferenceController$SettingsObserver;->register(Z)V

    .line 88
    return-void
.end method
