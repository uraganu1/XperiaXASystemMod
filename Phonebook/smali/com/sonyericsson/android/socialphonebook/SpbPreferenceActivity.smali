.class public Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SpbPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 67
    .local v3, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 68
    .local v1, "intentPref":Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/IntentFactory;->getAccountsAndSyncSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const v8, 0x7f090210

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 71
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 75
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getHideSimContacts()Z

    move-result v8

    if-nez v8, :cond_0

    .line 76
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getDisableSDN()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 99
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isSpeedDialEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 101
    .local v7, "speeddialPref":Landroid/preference/PreferenceScreen;
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 102
    const-class v9, Lcom/sonyericsson/android/socialphonebook/speeddial/SpeedDialActivity;

    .line 101
    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v6, "speeddialIntent":Landroid/content/Intent;
    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 104
    const v8, 0x7f090259

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 105
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 108
    .end local v6    # "speeddialIntent":Landroid/content/Intent;
    .end local v7    # "speeddialPref":Landroid/preference/PreferenceScreen;
    :cond_1
    return-object v3

    .line 77
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    .line 75
    if-eqz v8, :cond_0

    .line 78
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v8

    invoke-interface {v8}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v2

    .line 80
    .local v2, "isMultiSimEnabled":Z
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 81
    if-eqz v2, :cond_4

    const-class v8, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;

    .line 80
    :goto_1
    invoke-direct {v4, v9, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v4, "sdnIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 84
    .local v5, "sdnIntentPref":Landroid/preference/PreferenceScreen;
    const v8, 0x7f09022f

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 85
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 87
    if-eqz v2, :cond_5

    .line 88
    invoke-static {p0, v10}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->isSimAbsent(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 89
    const/4 v8, 0x1

    invoke-static {p0, v8}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->isSimAbsent(Landroid/content/Context;I)Z

    move-result v8

    .line 88
    if-eqz v8, :cond_3

    .line 90
    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 95
    :cond_3
    :goto_2
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 82
    .end local v4    # "sdnIntent":Landroid/content/Intent;
    .end local v5    # "sdnIntentPref":Landroid/preference/PreferenceScreen;
    :cond_4
    const-class v8, Lcom/sonyericsson/android/socialphonebook/SdnContactsListActivity;

    goto :goto_1

    .line 92
    .restart local v4    # "sdnIntent":Landroid/content/Intent;
    .restart local v5    # "sdnIntentPref":Landroid/preference/PreferenceScreen;
    :cond_5
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSIMCardAbsent(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 93
    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "aSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 38
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/dialpad/InputSecretCodeActivity;->addFooterViewForTablet(Landroid/preference/PreferenceActivity;)V

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 42
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/ThemeUtils;->getActionBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 48
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 50
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SpbPreferenceActivity;->finish()V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
