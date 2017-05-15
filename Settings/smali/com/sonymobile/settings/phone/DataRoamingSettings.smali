.class public Lcom/sonymobile/settings/phone/DataRoamingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;,
        Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;,
        Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;,
        Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;,
        Lcom/sonymobile/settings/phone/DataRoamingSettings$1;,
        Lcom/sonymobile/settings/phone/DataRoamingSettings$2;,
        Lcom/sonymobile/settings/phone/DataRoamingSettings$3;
    }
.end annotation


# instance fields
.field private mDisableChargePopups:Z

.field private mEnableEuRoamingUi:Z

.field private mEnableNationalRoamingUi:Z

.field private mEnableNationalRoamingWarning:Z

.field private final mEuRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

.field private final mNationalDataRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mPreferenceEuRoaming:Landroid/preference/TwoStatePreference;

.field private mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

.field private mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

.field private mSubId:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mSwitchListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    return v0
.end method

.method static synthetic -get2(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingWarning:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/telephony/TelephonyManager;
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showEuRoamingWarning()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showInternationalDataRoamingWarning(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showNationalDataRoamingWarning(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showRoamingBlockedNotification()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/sonymobile/settings/phone/DataRoamingSettings;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateUi(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getEuRoamingWarningState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalRoamingUiValue()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)I
    .locals 1
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setEuRoamingSetting(Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDatatRoamingPreferenceSetting(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/sonymobile/settings/phone/DataRoamingSettings;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonymobile/settings/phone/DataRoamingSettings;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setRoamingSetting(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->showDataRoamingWarning()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableEuRoamingUi:Z

    .line 75
    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    .line 76
    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingWarning:Z

    .line 78
    iput-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z

    .line 80
    iput-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 81
    iput-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceEuRoaming:Landroid/preference/TwoStatePreference;

    .line 82
    iput-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

    .line 96
    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$1;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    .line 95
    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 142
    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$2;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEuRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 157
    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$3;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    .line 156
    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mNationalDataRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 192
    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    .line 194
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    .line 195
    iput-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    return-void
.end method

.method private createEuRoamingUi()V
    .locals 2

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableEuRoamingUi:Z

    if-eqz v0, :cond_0

    .line 417
    const-string/jumbo v0, "somc_phone_eu_roaming_key"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceEuRoaming:Landroid/preference/TwoStatePreference;

    .line 418
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceEuRoaming:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEuRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 414
    :goto_0
    return-void

    .line 420
    :cond_0
    const-string/jumbo v0, "somc_phone_eu_roaming_key"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createNationalDataRoamingUi()V
    .locals 2

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_0

    .line 449
    const-string/jumbo v0, "somc_phone_data_roaming_mode_key"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 448
    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

    .line 450
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

    .line 451
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mNationalDataRoamingListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 450
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 444
    :goto_0
    return-void

    .line 453
    :cond_0
    const-string/jumbo v0, "somc_phone_data_roaming_mode_key"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createUi()V
    .locals 3

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0237

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 339
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 340
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x11200be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mDisableChargePopups:Z

    .line 341
    const v1, 0x11200bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableEuRoamingUi:Z

    .line 343
    const v1, 0x11200bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 342
    iput-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    .line 344
    const v1, 0x7f10001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingWarning:Z

    .line 353
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->createEuRoamingUi()V

    .line 354
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->createNationalDataRoamingUi()V

    .line 335
    return-void
.end method

.method private doShowDataRoamingWarning(III)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "titleId"    # I
    .param p3, "messageId"    # I

    .prologue
    .line 536
    invoke-static {p2, p3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;->newInstance(II)Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingWarningDialogFragment;

    move-result-object v0

    .line 537
    .local v0, "fragment":Landroid/app/DialogFragment;
    invoke-virtual {v0, p0, p1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 538
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method private getEuRoamingSetting()Z
    .locals 6

    .prologue
    .line 434
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string/jumbo v2, "eu_roaming"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v3

    int-to-long v4, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v5, v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->-wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;JZ)Z

    move-result v0

    .line 436
    .local v0, "state":Z
    return v0
.end method

.method private getEuRoamingWarningState()Z
    .locals 5

    .prologue
    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eu_roaming_warning"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 494
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 496
    .local v2, "state":Z
    return v2
.end method

.method private getNationalDataRoamingPreferenceSetting()I
    .locals 6

    .prologue
    .line 479
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string/jumbo v2, "national_roaming_preference"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v3

    int-to-long v4, v3

    .line 480
    const/4 v3, 0x2

    .line 479
    invoke-static {v1, v2, v4, v5, v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->-wrap1(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;JI)I

    move-result v0

    .line 482
    .local v0, "state":I
    return v0
.end method

.method private getNationalDataRoamingSetting()I
    .locals 6

    .prologue
    .line 467
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string/jumbo v2, "national_roaming"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v3

    int-to-long v4, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v5, v3}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->-wrap1(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;JI)I

    move-result v0

    .line 469
    .local v0, "state":I
    return v0
.end method

.method private getNationalRoamingUiValue()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getRoamingSetting()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 392
    iget-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v1, :cond_1

    .line 393
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalDataRoamingSetting()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->getDataRoaming()Z

    move-result v0

    return v0
.end method

.method private final getSubId()I
    .locals 4

    .prologue
    .line 219
    iget v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->isValidSubId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    return v1

    .line 222
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 223
    .local v0, "subId":I
    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->isValidSubId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iput v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    .line 225
    const-string/jumbo v1, "DataRoamingSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubId: using subId from getDefaultDataSubId, mSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    iget v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    return v1
.end method

.method private final getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 213
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static final isValidSubId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 254
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    .line 255
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEuRoamingSetting(Z)I
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string/jumbo v1, "eu_roaming"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->-wrap2(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;JZ)I

    move-result v0

    return v0
.end method

.method private setEuRoamingWarningState(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eu_roaming_warning"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 503
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 504
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 499
    return-void
.end method

.method private setNationalDataRoamingSetting(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string/jumbo v1, "national_roaming"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->-wrap3(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;JI)I

    .line 472
    return-void
.end method

.method private setNationalDatatRoamingPreferenceSetting(I)I
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const-string/jumbo v1, "national_roaming_preference"

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getSubId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->-wrap3(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;JI)I

    move-result v0

    return v0
.end method

.method private setRoamingSetting(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 406
    iget-boolean v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v1, :cond_1

    .line 407
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalRoamingUiValue()I

    move-result v0

    .line 408
    .local v0, "state":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    .line 404
    .end local v0    # "state":I
    :goto_1
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "state":I
    goto :goto_0

    .line 410
    .end local v0    # "state":I
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    invoke-virtual {v1, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->setDataRoaming(Z)V

    goto :goto_1
.end method

.method private showDataRoamingWarning()V
    .locals 3

    .prologue
    .line 511
    const v0, 0x16204a98

    .line 512
    const v1, 0x7f0b0c63

    .line 513
    const v2, 0x7f0b023c

    .line 511
    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->doShowDataRoamingWarning(III)V

    .line 509
    return-void
.end method

.method private showEuRoamingWarning()V
    .locals 3

    .prologue
    .line 544
    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;

    invoke-direct {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;-><init>()V

    .line 545
    .local v0, "fragment":Landroid/app/DialogFragment;
    const v1, 0x16204a9b

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 546
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method private showInternationalDataRoamingWarning(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    .line 528
    const v0, 0x1040014

    .line 529
    const v1, 0x7f0b0c65

    .line 527
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->doShowDataRoamingWarning(III)V

    .line 525
    return-void
.end method

.method private showNationalDataRoamingWarning(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    .line 520
    const v0, 0x1040014

    .line 521
    const v1, 0x7f0b0c64

    .line 519
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->doShowDataRoamingWarning(III)V

    .line 517
    return-void
.end method

.method private showRoamingBlockedNotification()V
    .locals 10

    .prologue
    .line 639
    const v7, 0x10405c4

    .line 640
    .local v7, "titleId":I
    const v3, 0x10405c5

    .line 641
    .local v3, "infoId":I
    const v1, 0x108073d

    .line 643
    .local v1, "iconId":I
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 644
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, "info":Ljava/lang/String;
    new-instance v8, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 649
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v8, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    .line 652
    .local v5, "notification":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "notification"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 653
    .local v4, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v4, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 636
    return-void
.end method

.method private updateEuRoamingUi(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 430
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateEuRoamingUi(Z)V

    .line 429
    return-void
.end method

.method private updateEuRoamingUi(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 425
    const-string/jumbo v0, "DataRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEuRoamingUi: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceEuRoaming:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 424
    return-void
.end method

.method private updateNationalRoamingUi(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 458
    const-string/jumbo v0, "DataRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNationalRoamingUi: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mPreferenceNationalDataRoaming:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method private updateRoamingUi(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 386
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(Z)V

    .line 385
    return-void
.end method

.method private updateRoamingUi(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 380
    return-void
.end method

.method private updateUi()V
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getRoamingSetting()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(Z)V

    .line 359
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableEuRoamingUi:Z

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getEuRoamingSetting()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateEuRoamingUi(Z)V

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getNationalDataRoamingPreferenceSetting()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateNationalRoamingUi(I)V

    .line 357
    :cond_1
    return-void
.end method

.method private updateUi(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 368
    const-string/jumbo v0, "DataRoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUi: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "data_roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(I)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableEuRoamingUi:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "eu_roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateEuRoamingUi(I)V

    goto :goto_0

    .line 373
    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "national_roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 374
    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateRoamingUi(I)V

    goto :goto_0

    .line 375
    :cond_3
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "national_roaming_preference"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0, p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateNationalRoamingUi(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 199
    const v0, 0x186a1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 207
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 208
    invoke-virtual {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setSubIdFromExtras(Landroid/os/Bundle;)V

    .line 203
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "result"    # I
    .param p3, "dummy"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 308
    packed-switch p1, :pswitch_data_0

    .line 331
    const-string/jumbo v0, "DataRoamingSettings"

    const-string/jumbo v1, "onActivityResult: unknown requestCode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 310
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setRoamingSetting(Z)V

    goto :goto_0

    .line 314
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    goto :goto_0

    .line 318
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setNationalDataRoamingSetting(I)V

    goto :goto_0

    .line 322
    :pswitch_3
    invoke-static {p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;->decodeEnableEuRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    invoke-direct {p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setEuRoamingSetting(Z)I

    .line 325
    :cond_1
    invoke-static {p2}, Lcom/sonymobile/settings/phone/DataRoamingSettings$EuRoamingWarningDialogFragment;->decodeDisableWarning(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->setEuRoamingWarningState(Z)V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x16204a98
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 263
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->addPreferencesFromResource(I)V

    .line 264
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->createUi()V

    .line 265
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->register()V

    .line 266
    iget-boolean v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mEnableNationalRoamingUi:Z

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    .line 268
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->register()V

    .line 259
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->unRegister()V

    .line 277
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSettingsHelper:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;

    invoke-virtual {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$SettingsHelper$Observer;->unRegister()V

    .line 280
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 273
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 300
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 295
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 287
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 290
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSwitchListener:Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 291
    invoke-direct {p0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->updateUi()V

    .line 284
    return-void
.end method

.method setSubIdFromExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 232
    const v1, 0x7fffffff

    .line 233
    .local v1, "subId":I
    if-eqz p1, :cond_0

    const-string/jumbo v3, "subscription"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    const-string/jumbo v3, "subscription"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 237
    .local v2, "value":Ljava/lang/Object;
    :try_start_0
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 238
    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->isValidSubId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    iput v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings;->mSubId:I

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const-string/jumbo v3, "DataRoamingSettings"

    const-string/jumbo v4, "setSubIdFromExtras: invalid subId in extras."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "DataRoamingSettings"

    const-string/jumbo v4, "setSubIdFromExtras: subId in extras is not a long."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
