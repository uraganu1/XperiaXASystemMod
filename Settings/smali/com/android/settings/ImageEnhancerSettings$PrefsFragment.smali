.class public Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "ImageEnhancerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ImageEnhancerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrefsFragment"
.end annotation


# instance fields
.field private mMBE2:Landroid/preference/CheckBoxPreference;

.field private mOFF:Landroid/preference/CheckBoxPreference;

.field private mSuperVivid:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private refreshRadioButtons()V
    .locals 2

    .prologue
    .line 169
    const-string/jumbo v0, "persist.service.xrfm.mode"

    const/4 v1, 0x0

    .line 168
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->updateRadioButtons(I)V

    .line 167
    return-void
.end method

.method private updateProperty(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 173
    const-string/jumbo v0, "persist.service.xrfm.mode"

    .line 174
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 177
    :pswitch_0
    invoke-static {v3}, Lcom/android/settings/PicModeJni;->setPictureMode(I)Z

    .line 178
    invoke-static {v2}, Lcom/android/settings/PicModeJni;->enableDynamicContrast(I)Z

    .line 179
    invoke-static {v2}, Lcom/android/settings/PicModeJni;->enableColorEffect(I)Z

    .line 180
    const-string/jumbo v0, "persist.service.swiqi2.enable"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-static {v2}, Lcom/android/settings/PicModeJni;->setPictureMode(I)Z

    .line 184
    invoke-static {v2}, Lcom/android/settings/PicModeJni;->enableDynamicContrast(I)Z

    .line 185
    invoke-static {v2}, Lcom/android/settings/PicModeJni;->enableColorEffect(I)Z

    .line 186
    const-string/jumbo v0, "persist.service.swiqi2.enable"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/settings/PicModeJni;->setPictureMode(I)Z

    .line 190
    invoke-static {v3}, Lcom/android/settings/PicModeJni;->enableDynamicContrast(I)Z

    .line 191
    invoke-static {v3}, Lcom/android/settings/PicModeJni;->enableColorEffect(I)Z

    .line 192
    const-string/jumbo v0, "persist.service.swiqi2.enable"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRadioButtons(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 152
    if-ne p1, v2, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mOFF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mMBE2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mSuperVivid:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mOFF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mMBE2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mSuperVivid:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mOFF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mMBE2:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mSuperVivid:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->addPreferencesFromResource(I)V

    .line 113
    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 112
    iput-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mOFF:Landroid/preference/CheckBoxPreference;

    .line 115
    const-string/jumbo v0, "mobile_bravia_engine_2"

    invoke-virtual {p0, v0}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 114
    iput-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mMBE2:Landroid/preference/CheckBoxPreference;

    .line 117
    const-string/jumbo v0, "super-vivid"

    invoke-virtual {p0, v0}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 116
    iput-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mSuperVivid:Landroid/preference/CheckBoxPreference;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->refreshRadioButtons()V

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const v1, 0x7f04007f

    .line 127
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "contentView":Landroid/view/View;
    return-object v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 140
    iget-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mMBE2:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 141
    invoke-direct {p0, v1}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->updateProperty(I)V

    .line 147
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->refreshRadioButtons()V

    .line 148
    return v1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->mSuperVivid:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 143
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->updateProperty(I)V

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->updateProperty(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/ImageEnhancerSettings$PrefsFragment;->refreshRadioButtons()V

    .line 132
    return-void
.end method
