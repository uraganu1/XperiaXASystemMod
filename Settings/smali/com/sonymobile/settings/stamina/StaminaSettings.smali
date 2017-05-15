.class public Lcom/sonymobile/settings/stamina/StaminaSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "StaminaSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaActiveStateObserver;,
        Lcom/sonymobile/settings/stamina/StaminaSettings$1;,
        Lcom/sonymobile/settings/stamina/StaminaSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

.field private mStaminaActiveStateObserver:Landroid/database/ContentObserver;

.field private mStaminaPreference:Landroid/preference/Preference;

.field private mStaminaSettingsGroup:Landroid/preference/PreferenceScreen;

.field private mStartUsmEnabled:Z

.field private mUSMPreference:Landroid/preference/Preference;

.field private mUsmNotReadyDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/stamina/StaminaSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/stamina/StaminaSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isUsmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/settings/stamina/StaminaSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->createEstimationPreference()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/settings/stamina/StaminaSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->recreateAndShowUsmNotReadyDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$2;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/StaminaSettings$2;-><init>()V

    .line 281
    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    .line 74
    new-instance v0, Lcom/sonymobile/settings/stamina/StaminaSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$1;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    return-void
.end method

.method private createEstimationPreference()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-boolean v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStartUsmEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isUsmEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSettingsGroup:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    :cond_1
    new-instance v0, Lcom/sonymobile/settings/stamina/EstimationPreference;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/stamina/EstimationPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    .line 328
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    const-string/jumbo v1, "estimation"

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/EstimationPreference;->setKey(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    invoke-virtual {v0, v2}, Lcom/sonymobile/settings/stamina/EstimationPreference;->setSelectable(Z)V

    .line 330
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    invoke-virtual {v0, v2}, Lcom/sonymobile/settings/stamina/EstimationPreference;->setOrder(I)V

    .line 331
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSettingsGroup:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mEstimationPreference:Lcom/sonymobile/settings/stamina/EstimationPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 317
    return-void

    .line 320
    :cond_2
    return-void
.end method

.method private isUsmEnabled()Z
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private recreateAndShowUsmNotReadyDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0c2e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 177
    const v2, 0x7f0b0c2f

    .line 176
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 178
    const v2, 0x104000a

    .line 176
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    .line 182
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 172
    return-void

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 278
    const v0, 0x7f0b0bb9

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 352
    const/16 v0, 0x33

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v1, 0x7f08006f

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->addPreferencesFromResource(I)V

    .line 90
    const-string/jumbo v1, "stamina_settings"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSettingsGroup:Landroid/preference/PreferenceScreen;

    .line 91
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaSettingsGroup:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    const-string/jumbo v1, "stamina"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaPreference:Landroid/preference/Preference;

    .line 97
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaPreference:Landroid/preference/Preference;

    new-instance v2, Lcom/sonymobile/settings/stamina/StaminaSettings$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$3;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    :cond_0
    new-instance v1, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaActiveStateObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/settings/stamina/StaminaSettings$StaminaActiveStateObserver;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaActiveStateObserver:Landroid/database/ContentObserver;

    .line 109
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaActiveStateObserver:Landroid/database/ContentObserver;

    .line 108
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerStaminaActiveStateObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 115
    :goto_0
    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-static {}, Lcom/sonymobile/settings/stamina/Utils;->isPrimaryUser()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isUsmEnabled()Z

    move-result v1

    .line 115
    if-eqz v1, :cond_4

    .line 117
    :cond_1
    const-string/jumbo v1, "usm"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    .line 130
    :goto_1
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isUsmEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iput-boolean v3, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStartUsmEnabled:Z

    .line 132
    const-string/jumbo v1, "power_save"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    .line 135
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sonymobile/settings/stamina/StaminaSettings;->setHasOptionsMenu(Z)V

    .line 85
    return-void

    .line 111
    :cond_3
    iput-object v4, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaActiveStateObserver:Landroid/database/ContentObserver;

    .line 112
    const-string/jumbo v1, "stamina"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_4
    const-string/jumbo v1, "usm"

    invoke-virtual {p0, v1}, Lcom/sonymobile/settings/stamina/StaminaSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUSMPreference:Landroid/preference/Preference;

    .line 120
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUSMPreference:Landroid/preference/Preference;

    new-instance v2, Lcom/sonymobile/settings/stamina/StaminaSettings$4;

    invoke-direct {v2, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$4;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x0

    .line 229
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isUsmEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    const/4 v3, 0x1

    const v4, 0x7f0b0bc1

    .line 230
    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 232
    .local v2, "howToUseStamina":Landroid/view/MenuItem;
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 234
    const/4 v3, 0x2

    .line 235
    const v4, 0x7f0b0c53

    .line 234
    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 236
    .local v0, "addAppsActiveInStandby":Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 238
    const/4 v3, 0x3

    .line 239
    const v4, 0x7f0b0c04

    .line 238
    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 240
    .local v1, "appPowerConsumption":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 241
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 228
    .end local v0    # "addAppsActiveInStandby":Landroid/view/MenuItem;
    .end local v1    # "appPowerConsumption":Landroid/view/MenuItem;
    .end local v2    # "howToUseStamina":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 140
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isUsmEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    const v5, 0x7f04010f

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 142
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f130226

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 144
    .local v1, "toggleUsmButton":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isUsmEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    const v5, 0x7f0b0c2d

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 148
    :cond_0
    if-eqz p3, :cond_2

    .line 149
    const-string/jumbo v5, "usmNotReadyDialogIsShown"

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 151
    :goto_0
    new-instance v5, Lcom/sonymobile/settings/stamina/StaminaSettings$5;

    invoke-direct {v5, p0}, Lcom/sonymobile/settings/stamina/StaminaSettings$5;-><init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 161
    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 162
    const v5, 0x7f130145

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    .local v2, "usmDescrView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/settings/stamina/Utils;->getUsmDesc(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .end local v2    # "usmDescrView":Landroid/widget/TextView;
    :cond_1
    return-object v4

    .line 148
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_2
    const/4 v3, 0x0

    .local v3, "usmDialogIsShowing":Z
    goto :goto_0

    .line 167
    .end local v1    # "toggleUsmButton":Landroid/widget/Button;
    .end local v3    # "usmDialogIsShowing":Z
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    const v5, 0x7f040110

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 168
    .restart local v4    # "view":Landroid/view/View;
    return-object v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaActiveStateObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaActiveStateObserver:Landroid/database/ContentObserver;

    .line 219
    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 216
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 248
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 265
    const/4 v1, 0x0

    return v1

    .line 250
    :sswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->finish()V

    .line 251
    const/4 v1, 0x1

    return v1

    .line 253
    :sswitch_1
    const-class v1, Lcom/sonymobile/settings/stamina/HowToUseStaminaFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 254
    const v3, 0x7f0b0bc1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 253
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 255
    const/4 v1, 0x1

    return v1

    .line 257
    :sswitch_2
    const-class v1, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayListSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 258
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0b0c53

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 257
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 259
    const/4 v1, 0x1

    return v1

    .line 261
    :sswitch_3
    const-class v1, Lcom/sonymobile/settings/stamina/appusage/AppUsageOverview;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 262
    const v3, 0x7f0b0c04

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 261
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 263
    const/4 v1, 0x1

    return v1

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 210
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 187
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, "intentGa":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.SUPER_STAMINA_GA_SCREEN_OPEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string/jumbo v1, "screen"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->createEstimationPreference()V

    .line 198
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->isUsmEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isStaminaAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mStaminaPreference:Landroid/preference/Preference;

    check-cast v1, Lcom/sonymobile/settings/stamina/StaminaPreference;

    .line 201
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/Utils;->getStaminaModeSummary(Landroid/content/Context;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/StaminaPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0c4a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 206
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/StaminaSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 186
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 273
    :goto_0
    const-string/jumbo v1, "usmNotReadyDialogIsShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    .local v0, "usmDialogIsShowing":Z
    goto :goto_0
.end method
