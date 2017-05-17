.class public Lcom/sonyericsson/conversations/ui/JoynPreferences;
.super Ljava/lang/Object;
.source "JoynPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/JoynPreferences$1;,
        Lcom/sonyericsson/conversations/ui/JoynPreferences$2;
    }
.end annotation


# static fields
.field private static synthetic -com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

.field private mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

.field private mImSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

.field private mPreferenceFragment:Landroid/preference/PreferenceFragment;

.field private mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

.field private mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Lcom/sonymobile/jms/setting/ImSettingApi;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Landroid/preference/PreferenceFragment;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/JoynPreferences;)Lcom/sonyericsson/conversations/settings/SettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    return-object v0
.end method

.method private static synthetic -getcom_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->values()[Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_ASK:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ALWAYS_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->NEVER_RESIZE:Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    invoke-virtual {v1}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-com_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/JoynPreferences;C)Z
    .locals 1
    .param p1, "inputChar"    # C

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->isDisplayNameCharacterAcceptable(C)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/SwitchPreference;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/SwitchPreference;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->onRcsServiceStateChanged(Landroid/preference/SwitchPreference;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshDisplayName(Landroid/preference/PreferenceFragment;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshFTAutoAcceptWhileRoaming(Landroid/preference/PreferenceFragment;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshRcsServicePreference(Landroid/preference/PreferenceFragment;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/PreferenceFragment;Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;)V
    .locals 0
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;
    .param p2, "fileResizeOption"    # Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->updateFileResizeOptionsSummary(Landroid/preference/PreferenceFragment;Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;)V

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/jms/setting/ImSettingApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonyericsson/conversations/settings/SettingsManager;)V
    .locals 2
    .param p1, "imSettingApi"    # Lcom/sonymobile/jms/setting/ImSettingApi;
    .param p2, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .param p3, "settingsManager"    # Lcom/sonyericsson/conversations/settings/SettingsManager;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/JoynPreferences$1;-><init>(Lcom/sonyericsson/conversations/ui/JoynPreferences;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 265
    new-instance v0, Lcom/sonyericsson/conversations/ui/JoynPreferences$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/JoynPreferences$2;-><init>(Lcom/sonyericsson/conversations/ui/JoynPreferences;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    .line 96
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

    .line 97
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    .line 98
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method private isDisplayNameCharacterAcceptable(C)Z
    .locals 2
    .param p1, "inputChar"    # C

    .prologue
    const/4 v0, 0x1

    .line 149
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const/16 v1, 0x2b

    if-ne p1, v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRcsServiceStateChanged(Landroid/preference/SwitchPreference;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    invoke-virtual {p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->setImServiceActivationState(Z)V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshRcsServicePreference(Landroid/preference/PreferenceFragment;)V

    .line 254
    invoke-virtual {p1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 255
    invoke-virtual {p1, v2}, Landroid/preference/SwitchPreference;->setSelectable(Z)V

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/JoynPreferences$4;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences$4;-><init>(Lcom/sonyericsson/conversations/ui/JoynPreferences;Landroid/preference/SwitchPreference;)V

    .line 262
    const-wide/16 v2, 0x1388

    .line 256
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    return-void
.end method

.method private refreshDisplayName(Landroid/preference/PreferenceFragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 178
    const-string/jumbo v2, "pref_key_rcs_user_alias"

    .line 177
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;

    .line 179
    .local v1, "pref":Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

    invoke-interface {v2}, Lcom/sonymobile/jms/setting/ImSettingApi;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mSettingsManager:Lcom/sonyericsson/conversations/settings/SettingsManager;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isUserDefinedDisplayName()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    const v2, 0x7f0b011a

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->setSummary(I)V

    .line 176
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->setText(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshFTAutoAccept(Landroid/preference/PreferenceFragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 200
    const-string/jumbo v1, "pref_key_rcs_auto_accept_filetransfer"

    .line 199
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 201
    .local v0, "pref":Landroid/preference/SwitchPreference;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

    invoke-interface {v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->isFileTransferAutoAcceptSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

    invoke-interface {v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->isFileTransfersAutoAccepted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->removePreference(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method private refreshFTAutoAcceptWhileRoaming(Landroid/preference/PreferenceFragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 210
    const-string/jumbo v1, "pref_key_rcs_auto_accept_filetransfer_while_roaming"

    .line 209
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 211
    .local v0, "pref":Landroid/preference/SwitchPreference;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

    invoke-interface {v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->isFileTransferAutoAcceptSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

    invoke-interface {v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->isFileTransfersAutoAcceptedWhileRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->removePreference(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method private refreshFileResizeOption(Landroid/preference/PreferenceFragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 192
    const-string/jumbo v2, "pref_key_rcs_file_resize"

    .line 191
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 193
    .local v1, "pref":Landroid/preference/ListPreference;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

    invoke-interface {v2}, Lcom/sonymobile/jms/setting/ImSettingApi;->getFileResizeOption()Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    move-result-object v0

    .line 194
    .local v0, "fileResizeOption":Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->updateFileResizeOptionsSummary(Landroid/preference/PreferenceFragment;Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;)V

    .line 190
    return-void
.end method

.method private refreshRcsServicePreference(Landroid/preference/PreferenceFragment;)V
    .locals 5
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 283
    const-string/jumbo v4, "pref_key_rcs_service_on_off"

    .line 282
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 284
    .local v2, "pref":Landroid/preference/SwitchPreference;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getBrandingPolicy()Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;->getRcsServiceCheckBoxPreferenceTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 285
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getBrandingPolicy()Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;->getRcsServiceCheckBoxPreferenceSummaryResId()I

    move-result v3

    .line 287
    .local v3, "rcsServiceCheckBoxPreferenceSummaryResId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 288
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 290
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    invoke-interface {v4}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->isImServiceActivated()Z

    move-result v1

    .line 291
    .local v1, "isImServiceActivated":Z
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    invoke-interface {v4}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->getImApisConnectionStatus()Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    move-result-object v0

    .line 292
    .local v0, "currStatus":Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 294
    if-nez v1, :cond_2

    sget-object v4, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-ne v0, v4, :cond_2

    .line 296
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 281
    :cond_1
    return-void

    .line 295
    :cond_2
    if-eqz v1, :cond_1

    sget-object v4, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    if-ne v0, v4, :cond_1

    goto :goto_0
.end method

.method private refreshReadNotification(Landroid/preference/PreferenceFragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 247
    const-string/jumbo v1, "pref_key_rcs_send_read_notification"

    .line 246
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 248
    .local v0, "pref":Landroid/preference/SwitchPreference;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImSettingApi:Lcom/sonymobile/jms/setting/ImSettingApi;

    invoke-interface {v1}, Lcom/sonymobile/jms/setting/ImSettingApi;->isDisplayedNotificationsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 245
    return-void
.end method

.method private refreshUndeliveredMessageResendOption(Landroid/preference/PreferenceFragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 302
    const-string/jumbo v2, "pref_key_rcs_undelivered_message"

    .line 301
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 303
    .local v0, "pref":Landroid/preference/SwitchPreference;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v1

    .line 304
    .local v1, "settingsManager":Lcom/sonyericsson/conversations/settings/SettingsManager;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 306
    return-void

    .line 309
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 310
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/SettingsManager;->shouldAlwaysResendUndeliveredMessage()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 300
    return-void
.end method

.method private removePreference(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)V
    .locals 2
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->isAddedTo(Landroid/preference/PreferenceFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-string/jumbo v1, "pref_key_category_rcs_settings"

    .line 239
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 241
    .local v0, "prefGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual {v0, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    .end local v0    # "prefGroup":Landroid/preference/PreferenceGroup;
    :cond_0
    return-void
.end method

.method private setDisplayNameInputFilter(Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;)V
    .locals 4
    .param p1, "aliasPref"    # Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 128
    new-instance v2, Lcom/sonyericsson/conversations/ui/JoynPreferences$3;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences$3;-><init>(Lcom/sonyericsson/conversations/ui/JoynPreferences;Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 126
    return-void
.end method

.method private updateFileResizeOptionsSummary(Landroid/preference/PreferenceFragment;Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;)V
    .locals 3
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;
    .param p2, "fileResizeOption"    # Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;

    .prologue
    .line 221
    const-string/jumbo v1, "pref_key_rcs_file_resize"

    .line 220
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 222
    .local v0, "pref":Landroid/preference/ListPreference;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->-getcom_sonymobile_jms_setting_ImSettingApi$FileResizeOptionSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonymobile/jms/setting/ImSettingApi$FileResizeOption;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 224
    :pswitch_0
    const v1, 0x7f0b0124

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 227
    :pswitch_1
    const v1, 0x7f0b0125

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 230
    :pswitch_2
    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateJoynSettingsPreferenceCategoryTitle(Landroid/preference/PreferenceFragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 171
    const-string/jumbo v1, "pref_key_category_rcs_settings"

    .line 170
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 173
    .local v0, "preferenceCategory":Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getBrandingPolicy()Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/branding/BrandingPolicy;->getJoynSettingsPreferenceCategoryTitleResId()I

    move-result v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 169
    return-void
.end method


# virtual methods
.method public addJoynPreferences(Landroid/preference/PreferenceFragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->isAddedTo(Landroid/preference/PreferenceFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    const/high16 v1, 0x7f070000

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 119
    const-string/jumbo v1, "pref_key_rcs_user_alias"

    .line 118
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;

    .line 120
    .local v0, "aliasPref":Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;
    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->setDisplayNameInputFilter(Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;)V

    .line 115
    .end local v0    # "aliasPref":Lcom/sonyericsson/conversations/settings/DefaultValueEditTextPreference;
    :cond_0
    return-void
.end method

.method public isAddedTo(Landroid/preference/PreferenceFragment;)Z
    .locals 2
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 104
    .local v0, "ps":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "pref_key_category_rcs_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refreshPreferences(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->updateJoynSettingsPreferenceCategoryTitle(Landroid/preference/PreferenceFragment;)V

    .line 315
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshDisplayName(Landroid/preference/PreferenceFragment;)V

    .line 316
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshFileResizeOption(Landroid/preference/PreferenceFragment;)V

    .line 317
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshFTAutoAccept(Landroid/preference/PreferenceFragment;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshFTAutoAcceptWhileRoaming(Landroid/preference/PreferenceFragment;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshReadNotification(Landroid/preference/PreferenceFragment;)V

    .line 320
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshRcsServicePreference(Landroid/preference/PreferenceFragment;)V

    .line 321
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshUndeliveredMessageResendOption(Landroid/preference/PreferenceFragment;)V

    .line 313
    return-void
.end method

.method public registerListeners(Landroid/preference/PreferenceFragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    .line 155
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 156
    .local v0, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 156
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 158
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    invoke-interface {v1, v2}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->registerImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 153
    return-void
.end method

.method public removeJoynPreferences(Landroid/preference/PreferenceFragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->isAddedTo(Landroid/preference/PreferenceFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 110
    .local v1, "ps":Landroid/preference/PreferenceScreen;
    const-string/jumbo v2, "pref_key_category_rcs_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 111
    .local v0, "joynPref":Landroid/preference/Preference;
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    .end local v0    # "joynPref":Landroid/preference/Preference;
    .end local v1    # "ps":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

.method public unregisterListeners(Landroid/preference/PreferenceFragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImEnvironmentApi:Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mImApiConnectionStatusListener:Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;

    invoke-interface {v1, v2}, Lcom/sonymobile/jms/environment/ImEnvironmentApi;->unregisterImApiConnectionStatusListener(Lcom/sonymobile/jms/environment/ImApiConnectionStatusListener;)V

    .line 163
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 164
    .local v0, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 164
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/JoynPreferences;->mPreferenceFragment:Landroid/preference/PreferenceFragment;

    .line 161
    return-void
.end method
