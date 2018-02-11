.class public Lcom/android/settings/nfc/PaymentSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaymentSettings.java"


# instance fields
.field private mNfcPaymentPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

.field private mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x46

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentSettings;->setHasOptionsMenu(Z)V

    .line 53
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 105
    const v4, 0x7f0b09d6

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 106
    .local v2, "menuItem":Landroid/view/MenuItem;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/nfc/HowItWorks;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v1, "howItWorksIntent":Landroid/content/Intent;
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 108
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 110
    new-instance v0, Lcom/sonymobile/settings/nfc/HceBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sonymobile/settings/nfc/HceBackend;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "backend":Lcom/sonymobile/settings/nfc/HceBackend;
    invoke-virtual {v0}, Lcom/sonymobile/settings/nfc/HceBackend;->showSelectServiceMenu()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    const v4, 0x7f0b0c8e

    invoke-interface {p1, v4}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 113
    .local v3, "menuItemEditor":Landroid/view/MenuItem;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.sonymobile.settings.nfc.NFC_HCE_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 103
    .end local v3    # "menuItemEditor":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->onPause()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcPaymentPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcPaymentPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->onPause()V

    .line 94
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v0}, Lcom/android/settings/nfc/PaymentBackend;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcPaymentPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcPaymentPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcPaymentPreference;->onResume()V

    .line 85
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 64
    .local v1, "contentRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 65
    const v7, 0x7f040098

    .line 64
    invoke-virtual {v6, v7, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "emptyView":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    .line 70
    .local v4, "manager":Landroid/preference/PreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 72
    .local v5, "screen":Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {v6}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 74
    new-instance v6, Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {v6, v7, v8}, Lcom/android/settings/nfc/NfcPaymentPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V

    iput-object v6, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcPaymentPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    .line 76
    iget-object v6, p0, Lcom/android/settings/nfc/PaymentSettings;->mNfcPaymentPreference:Lcom/android/settings/nfc/NfcPaymentPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 77
    new-instance v3, Lcom/android/settings/nfc/NfcForegroundPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 78
    iget-object v7, p0, Lcom/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 77
    invoke-direct {v3, v6, v7}, Lcom/android/settings/nfc/NfcForegroundPreference;-><init>(Landroid/content/Context;Lcom/android/settings/nfc/PaymentBackend;)V

    .line 79
    .local v3, "foreground":Lcom/android/settings/nfc/NfcForegroundPreference;
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 81
    .end local v3    # "foreground":Lcom/android/settings/nfc/NfcForegroundPreference;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 61
    return-void
.end method
