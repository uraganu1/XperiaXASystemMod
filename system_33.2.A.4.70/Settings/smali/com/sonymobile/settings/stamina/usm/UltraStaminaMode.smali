.class public Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UltraStaminaMode.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;,
        Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatteryDurationView:Landroid/widget/TextView;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mUsmNotReadyDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mBatteryDurationView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->recreateAndShowUsmNotReadyDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$2;

    invoke-direct {v0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$2;-><init>()V

    .line 182
    sput-object v0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    .line 67
    new-instance v0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$1;-><init>(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    return-void
.end method

.method private isUsmEnabled()Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isUsmEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private recreateAndShowUsmNotReadyDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0c2e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 126
    const v2, 0x7f0b0c2f

    .line 125
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 127
    const v2, 0x104000a

    .line 125
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    .line 131
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 121
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x33

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->addPreferencesFromResource(I)V

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 81
    const v5, 0x7f040114

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 82
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f130226

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 84
    .local v1, "toggleUsmButton":Landroid/widget/Button;
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->isUsmEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    const v5, 0x7f0b0c2d

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 88
    :cond_0
    if-eqz p3, :cond_3

    .line 89
    const-string/jumbo v5, "usmNotReadyDialogIsShown"

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 91
    :goto_0
    if-eqz v3, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->recreateAndShowUsmNotReadyDialog()V

    .line 95
    :cond_1
    new-instance v5, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$3;

    invoke-direct {v5, p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode$3;-><init>(Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    instance-of v5, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_2

    .line 107
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 110
    :cond_2
    const v5, 0x7f130145

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 111
    .local v2, "usmDescrView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/settings/stamina/Utils;->getUsmDesc(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v5, 0x7f130143

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mBatteryDurationView:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 114
    invoke-static {v5, v7}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getUsmBatteryTimeEstimateString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "durationTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mBatteryDurationView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-object v4

    .line 88
    .end local v0    # "durationTime":Ljava/lang/String;
    .end local v2    # "usmDescrView":Landroid/widget/TextView;
    :cond_3
    const/4 v3, 0x0

    .local v3, "usmDialogIsShowing":Z
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 157
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 155
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 149
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 144
    invoke-virtual {p0}, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/usm/UltraStaminaMode;->mUsmNotReadyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 166
    :goto_0
    const-string/jumbo v1, "usmNotReadyDialogIsShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    .local v0, "usmDialogIsShowing":Z
    goto :goto_0
.end method
