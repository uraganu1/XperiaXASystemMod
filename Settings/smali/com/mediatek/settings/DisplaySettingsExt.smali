.class public Lcom/mediatek/settings/DisplaySettingsExt;
.super Ljava/lang/Object;
.source "DisplaySettingsExt.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/DisplaySettingsExt$1;
    }
.end annotation


# instance fields
.field private mClearMotion:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

.field private mHdmiSettings:Landroid/preference/Preference;

.field private mMiraIntent:Landroid/content/Intent;

.field private mMiraVision:Landroid/preference/Preference;

.field private mPlmnName:Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

.field private mRotatePreference:Lcom/android/settings/DropDownPreference;

.field private mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenTimeoutPreference:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/settings/DisplaySettingsExt;)Lcom/android/settings/DropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mRotatePreference:Lcom/android/settings/DropDownPreference;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.MIRA_VISION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraIntent:Landroid/content/Intent;

    .line 263
    new-instance v0, Lcom/mediatek/settings/DisplaySettingsExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/DisplaySettingsExt$1;-><init>(Lcom/mediatek/settings/DisplaySettingsExt;)V

    iput-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 102
    const-string/jumbo v0, "mediatek.DisplaySettings"

    const-string/jumbo v1, "DisplaySettingsExt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method private createPreference(IILjava/lang/String;)Landroid/preference/Preference;
    .locals 2
    .param p1, "type"    # I
    .param p2, "titleRes"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "preference":Landroid/preference/Preference;
    packed-switch p1, :pswitch_data_0

    .line 132
    .end local v0    # "preference":Landroid/preference/Preference;
    :goto_0
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 134
    return-object v0

    .line 119
    .restart local v0    # "preference":Landroid/preference/Preference;
    :pswitch_0
    new-instance v0, Landroid/preference/Preference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "preference":Landroid/preference/Preference;
    goto :goto_0

    .line 122
    .local v0, "preference":Landroid/preference/Preference;
    :pswitch_1
    new-instance v0, Landroid/preference/CheckBoxPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 126
    .local v0, "preference":Landroid/preference/Preference;
    :pswitch_2
    new-instance v0, Landroid/preference/ListPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "preference":Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initPreference(Landroid/preference/PreferenceScreen;)V
    .locals 6
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v5, 0x0

    .line 146
    const-string/jumbo v3, "clearMotion"

    .line 145
    const v4, 0x7f0b012b

    invoke-direct {p0, v5, v4, v3}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/Preference;

    .line 147
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/Preference;

    const/16 v4, -0x64

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 148
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/Preference;

    const v4, 0x7f0b012a

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 149
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_CLEARMOTION_SUPPORT:Z

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 155
    :cond_0
    const-string/jumbo v3, "mira_vision"

    .line 154
    const v4, 0x7f0b012e

    invoke-direct {p0, v5, v4, v3}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraVision:Landroid/preference/Preference;

    .line 156
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraVision:Landroid/preference/Preference;

    const v4, 0x7f0b012f

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 157
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraVision:Landroid/preference/Preference;

    const/16 v4, -0x63

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 158
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_MIRAVISION_SETTING_SUPPORT:Z

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_5

    .line 159
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_PRODUCT_IS_TABLET:Z

    .line 158
    if-eqz v3, :cond_5

    .line 166
    :cond_1
    :goto_0
    const-string/jumbo v3, "mtkhdmi"

    .line 165
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hdmi/IMtkHdmiManager;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    .line 167
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    if-eqz v3, :cond_3

    .line 169
    const-string/jumbo v3, "hdmi_settings"

    .line 168
    const v4, 0x7f0b0102

    invoke-direct {p0, v5, v4, v3}, Lcom/mediatek/settings/DisplaySettingsExt;->createPreference(IILjava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiSettings:Landroid/preference/Preference;

    .line 170
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiSettings:Landroid/preference/Preference;

    const v4, 0x7f0b0103

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 171
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiSettings:Landroid/preference/Preference;

    const-string/jumbo v4, "com.mediatek.hdmi.HdmiSettings"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 173
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/hdmi/IMtkHdmiManager;

    invoke-interface {v3}, Lcom/mediatek/hdmi/IMtkHdmiManager;->getDisplayType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 174
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0106

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "hdmi":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0107

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "mhl":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiSettings:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiSettings:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiSettings:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiSettings:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1    # "hdmi":Ljava/lang/String;
    .end local v2    # "mhl":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiSettings:Landroid/preference/Preference;

    const/16 v4, -0x62

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 185
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiSettings:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    :cond_3
    const-string/jumbo v3, "screen_timeout"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreenTimeoutPreference:Landroid/preference/Preference;

    .line 191
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 192
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    iget-object v4, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mScreenTimeoutPreference:Landroid/preference/Preference;

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->setTimeoutPrefTitle(Landroid/preference/Preference;)V

    .line 195
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/settings/UtilsExt;->getStatusBarPlmnPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mPlmnName:Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    .line 196
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mPlmnName:Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;

    const/16 v4, 0x3e8

    invoke-interface {v3, p1, v4}, Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;->createCheckBox(Landroid/preference/PreferenceScreen;I)V

    .line 199
    const-string/jumbo v3, "screensaver"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 200
    sget-boolean v3, Lcom/mediatek/settings/FeatureOption;->MTK_GMO_RAM_OPTIMIZE:Z

    .line 199
    if-eqz v3, :cond_4

    .line 201
    const-string/jumbo v3, "screensaver"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_4
    return-void

    .line 160
    :cond_5
    const-string/jumbo v3, "mediatek.DisplaySettings"

    const-string/jumbo v4, "No MiraVision support"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraVision:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "mediatek.DisplaySettings"

    const-string/jumbo v4, "getDisplayType RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 207
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_A1_FEATURE:Z

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    const-string/jumbo v0, "mediatek.DisplaySettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0, p1}, Lcom/mediatek/settings/DisplaySettingsExt;->initPreference(Landroid/preference/PreferenceScreen;)V

    .line 206
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 228
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_A1_FEATURE:Z

    if-eqz v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    const-string/jumbo v0, "mediatek.DisplaySettings"

    const-string/jumbo v1, "onPause of DisplaySettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    .line 235
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 234
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 227
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 242
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_A1_FEATURE:Z

    if-eqz v1, :cond_0

    .line 243
    const/4 v1, 0x0

    return v1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mClearMotion:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mediatek/settings/ClearMotionSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 249
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 255
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraVision:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mMiraIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 215
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_A1_FEATURE:Z

    if-eqz v0, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    const-string/jumbo v0, "mediatek.DisplaySettings"

    const-string/jumbo v1, "onResume of DisplaySettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mContext:Landroid/content/Context;

    .line 222
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 221
    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 214
    :cond_1
    return-void
.end method

.method public setRotatePreference(Lcom/android/settings/DropDownPreference;)V
    .locals 0
    .param p1, "preference"    # Lcom/android/settings/DropDownPreference;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mediatek/settings/DisplaySettingsExt;->mRotatePreference:Lcom/android/settings/DropDownPreference;

    .line 259
    return-void
.end method
