.class public Lcom/sonyericsson/conversations/ui/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;,
        Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;
    }
.end annotation


# static fields
.field private static final BASE_SMSC_URI:Landroid/net/Uri;


# instance fields
.field private mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

.field private mLastClickTime:J

.field private mSmscEditableValue:I


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/SettingsFragment;I)Landroid/net/Uri;
    .locals 1
    .param p1, "simSlotIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getSmscUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;)I
    .locals 1
    .param p1, "smscKey"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getSimSlotIndexForSmscKey(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "smscKey"    # Ljava/lang/CharSequence;
    .param p2, "smscNumber"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateSmscPreference(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "content://smsc/smsc_number/phoneid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->BASE_SMSC_URI:Landroid/net/Uri;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    .line 51
    return-void
.end method

.method private addMultiSimPreference(I)V
    .locals 8
    .param p1, "simCardSlotIndex"    # I

    .prologue
    .line 718
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getSimPreferencesScreen(I)Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 721
    .local v4, "simScreen":Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isSimActive(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 723
    const-string/jumbo v7, "pref_key_category_multi_sim_settings"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 724
    .local v2, "multiSimCategory":Landroid/preference/PreferenceCategory;
    if-eqz v2, :cond_0

    .line 725
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 727
    :cond_0
    return-void

    .line 731
    .end local v2    # "multiSimCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    const v7, 0x7f070002

    invoke-virtual {p0, v7}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->addPreferencesFromResource(I)V

    .line 735
    const-string/jumbo v7, "pref_key_category_sim_settings"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 736
    .local v0, "inflatedSimCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 737
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 740
    const-string/jumbo v7, "pref_key_sim_messages"

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 741
    .local v3, "simMessagesPreference":Landroid/preference/Preference;
    if-eqz v3, :cond_2

    .line 742
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getSimMessagesKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 746
    :cond_2
    const-string/jumbo v7, "pref_key_smsc_number"

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 747
    .local v5, "smscPreferences":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    .line 748
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getSmscKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 753
    :cond_3
    const-string/jumbo v7, "pref_key_wap_push_settings"

    .line 752
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 754
    .local v6, "wapPushPreference":Landroid/preference/Preference;
    if-eqz v6, :cond_4

    .line 755
    invoke-virtual {v6}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 758
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "phone"

    invoke-virtual {v1, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 759
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 717
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    return-void
.end method

.method private checkAndEnableDisableSimPreference(I)V
    .locals 2
    .param p1, "slotIndex"    # I

    .prologue
    .line 709
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isSimActive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getSimPreferencesScreen(I)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 711
    .local v0, "simPrefs":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 712
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 708
    .end local v0    # "simPrefs":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

.method private getSimMessagesKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "simCardSlotIndex"    # I

    .prologue
    .line 764
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "pref_key_sim2_messages"

    :goto_0
    return-object v0

    .line 765
    :cond_0
    const-string/jumbo v0, "pref_key_sim1_messages"

    goto :goto_0
.end method

.method private getSimPreferencesScreen(I)Landroid/preference/PreferenceScreen;
    .locals 2
    .param p1, "simCardSlotIndex"    # I

    .prologue
    .line 779
    if-nez p1, :cond_0

    .line 780
    const-string/jumbo v0, "pref_key_screen_sim1_settings"

    .line 781
    .local v0, "simScreenKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    return-object v1

    .line 780
    .end local v0    # "simScreenKey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "pref_key_screen_sim2_settings"

    .restart local v0    # "simScreenKey":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSimSlotIndexForSmscKey(Ljava/lang/String;)I
    .locals 1
    .param p1, "smscKey"    # Ljava/lang/String;

    .prologue
    .line 774
    const-string/jumbo v0, "pref_key_sim2_smsc_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 775
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSmscKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "simCardSlotIndex"    # I

    .prologue
    .line 769
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "pref_key_sim2_smsc_number"

    :goto_0
    return-object v0

    .line 770
    :cond_0
    const-string/jumbo v0, "pref_key_sim1_smsc_number"

    goto :goto_0
.end method

.method private getSmscUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "simSlotIndex"    # I

    .prologue
    .line 625
    sget-object v0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->BASE_SMSC_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private hideJoynPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->removeJoynPreferences(Landroid/preference/PreferenceFragment;)V

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->unregisterListeners(Landroid/preference/PreferenceFragment;)V

    .line 461
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    .line 457
    :cond_0
    return-void
.end method

.method private initSimSettings()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 681
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->addMultiSimPreference(I)V

    .line 683
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->addMultiSimPreference(I)V

    .line 680
    :goto_0
    return-void

    .line 686
    :cond_0
    const-string/jumbo v1, "pref_key_category_multi_sim_settings"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 687
    .local v0, "multiSimCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 688
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method private initSmscNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "smscKey"    # Ljava/lang/String;

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 478
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 479
    new-instance v1, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment$DisplaySmscAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 476
    :cond_0
    return-void
.end method

.method private isDoubleClick()Z
    .locals 4

    .prologue
    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmscKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string/jumbo v0, "pref_key_smsc_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const-string/jumbo v0, "pref_key_sim1_smsc_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 300
    if-nez v0, :cond_0

    .line 302
    const-string/jumbo v0, "pref_key_sim2_smsc_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshDefaultSmsAppPreference()V
    .locals 5

    .prologue
    .line 492
    const-string/jumbo v4, "semc_pref_default_sms_app"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/DefaultSmsAppPreference;

    .line 494
    .local v0, "defaultSmsAppPreference":Lcom/sonyericsson/conversations/ui/DefaultSmsAppPreference;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v3

    .line 495
    .local v3, "settingsManager":Lcom/sonyericsson/conversations/settings/SettingsManager;
    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/DefaultSmsAppPreference;->refreshTitleAndSummary(Lcom/sonyericsson/conversations/settings/SettingsManager;)V

    .line 496
    const-string/jumbo v4, "pref_key_category_mms_settings"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 497
    .local v2, "mmsPreferenceGroup":Landroid/preference/Preference;
    if-nez v2, :cond_0

    .line 499
    return-void

    .line 501
    :cond_0
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v1

    .line 502
    .local v1, "isDefaultSmsPackage":Z
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 503
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 490
    :goto_0
    return-void

    .line 505
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private removeGroup(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 204
    .local v0, "group":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    :cond_0
    return-void
.end method

.method private removeInvisiblePreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pg"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 210
    invoke-static {p1}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v4

    .line 211
    .local v4, "settings":Lcom/sonyericsson/conversations/settings/Settings;
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 212
    .local v2, "nrPreferences":I
    const/4 v0, 0x0

    .line 214
    .local v0, "idx":I
    :cond_0
    :goto_0
    if-ge v0, v2, :cond_e

    .line 215
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 216
    .local v3, "p":Landroid/preference/Preference;
    instance-of v6, v3, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_3

    move-object v6, v3

    .line 217
    check-cast v6, Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    .line 218
    check-cast v6, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, p1, v6}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->removeInvisiblePreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    :cond_1
    move-object v6, v3

    .line 222
    check-cast v6, Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 223
    instance-of v6, v3, Landroid/preference/PreferenceCategory;

    .line 222
    if-eqz v6, :cond_2

    .line 224
    invoke-virtual {p2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 227
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v4, v1}, Lcom/sonyericsson/conversations/settings/Settings;->isPreferenceVisible(Ljava/lang/String;)Z

    move-result v5

    .line 233
    :goto_1
    if-eqz v1, :cond_5

    .line 234
    const-string/jumbo v6, "semc_pref_key_cellbroadcast_enabled"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 233
    if-eqz v6, :cond_5

    .line 235
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v7, "userdebug"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 236
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 233
    if-eqz v6, :cond_5

    .line 237
    :cond_4
    const/4 v5, 0x0

    .line 240
    :cond_5
    if-eqz v1, :cond_6

    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserAllowedToUseMessaging()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 250
    :cond_6
    :goto_2
    if-eqz v1, :cond_c

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->isSmscKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 251
    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateSmscNumberVisibility(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v5

    .line 256
    :cond_7
    :goto_3
    if-nez v5, :cond_d

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 257
    add-int/lit8 v2, v2, -0x1

    .line 258
    if-eqz v1, :cond_0

    const-string/jumbo v6, "pref_key_delivery_reports"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 259
    const-string/jumbo v6, "pref_key_mms_read_reports"

    invoke-virtual {p0, v6}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 231
    :cond_8
    const/4 v5, 0x1

    .local v5, "visible":Z
    goto :goto_1

    .line 241
    .end local v5    # "visible":Z
    :cond_9
    const-string/jumbo v6, "pref_key_sim_messages"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 242
    const/4 v5, 0x0

    .restart local v5    # "visible":Z
    goto :goto_2

    .line 243
    .end local v5    # "visible":Z
    :cond_a
    const-string/jumbo v6, "pref_key_sim1_messages"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 244
    const/4 v5, 0x0

    .restart local v5    # "visible":Z
    goto :goto_2

    .line 245
    .end local v5    # "visible":Z
    :cond_b
    const-string/jumbo v6, "pref_key_sim2_messages"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 246
    const/4 v5, 0x0

    .restart local v5    # "visible":Z
    goto :goto_2

    .line 252
    .end local v5    # "visible":Z
    :cond_c
    if-eqz v1, :cond_7

    const-string/jumbo v6, "pref_key_mms_read_reports"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 253
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateReadReportVisibility()Z

    move-result v5

    .local v5, "visible":Z
    goto :goto_3

    .line 263
    .end local v5    # "visible":Z
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 209
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "p":Landroid/preference/Preference;
    :cond_e
    return-void
.end method

.method private removeSetting(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "groupKey"    # Ljava/lang/String;
    .param p3, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 192
    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 194
    .local v0, "group":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 196
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private showJoynPreference(Lcom/sonymobile/jms/setting/ImSettingApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonyericsson/conversations/settings/SettingsManager;)V
    .locals 1
    .param p1, "imSettingApi"    # Lcom/sonymobile/jms/setting/ImSettingApi;
    .param p2, "imEnvironmentApi"    # Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .param p3, "settingsManager"    # Lcom/sonyericsson/conversations/settings/SettingsManager;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/JoynPreferences;-><init>(Lcom/sonymobile/jms/setting/ImSettingApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonyericsson/conversations/settings/SettingsManager;)V

    .line 468
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->registerListeners(Landroid/preference/PreferenceFragment;)V

    .line 471
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->addJoynPreferences(Landroid/preference/PreferenceFragment;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->refreshPreferences(Landroid/preference/PreferenceFragment;)V

    .line 466
    return-void
.end method

.method private startSimMessagesActivity(I)V
    .locals 3
    .param p1, "simCardSlotIndex"    # I

    .prologue
    .line 417
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/conversations/ui/SimMessagesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->addSimCardSlotIndexToIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 416
    return-void
.end method

.method private updateGeotagSummary(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 648
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    return-void

    .line 652
    :cond_0
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 655
    const v0, 0x7f0b0228

    .line 666
    .local v0, "textId":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    const-string/jumbo v1, "pref_key_geotag"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 647
    :cond_1
    return-void

    .line 659
    .end local v0    # "textId":I
    :pswitch_0
    const v0, 0x7f0b0226

    .line 660
    .restart local v0    # "textId":I
    goto :goto_0

    .line 663
    .end local v0    # "textId":I
    :pswitch_1
    const v0, 0x7f0b0227

    .line 664
    .restart local v0    # "textId":I
    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateGroupMessagingSettings()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v5, "pref_key_mms_group_conversation"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 137
    .local v2, "prefGroupMms":Landroid/preference/SwitchPreference;
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 139
    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getGroupMmsEnabled()Z

    move-result v1

    .line 142
    .local v1, "isGroupMmsEnabled":Z
    if-eqz v1, :cond_3

    .line 143
    invoke-virtual {v2, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 147
    :goto_0
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 152
    const-string/jumbo v5, "pref_key_sim_1_number"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 153
    .local v3, "sim1Pref":Landroid/preference/EditTextPreference;
    if-eqz v3, :cond_1

    .line 154
    invoke-direct {p0, v0, v3, v6}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateMyPhoneNumberPref(Landroid/content/Context;Landroid/preference/EditTextPreference;I)V

    .line 155
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 156
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 157
    const v5, 0x7f0b00fe

    .line 155
    :goto_1
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    :cond_1
    const-string/jumbo v5, "pref_key_sim_2_number"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    .line 163
    .local v4, "sim2Pref":Landroid/preference/EditTextPreference;
    if-eqz v4, :cond_2

    .line 164
    invoke-direct {p0, v0, v4, v7}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateMyPhoneNumberPref(Landroid/content/Context;Landroid/preference/EditTextPreference;I)V

    .line 133
    :cond_2
    return-void

    .line 145
    .end local v3    # "sim1Pref":Landroid/preference/EditTextPreference;
    .end local v4    # "sim2Pref":Landroid/preference/EditTextPreference;
    :cond_3
    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 148
    :cond_4
    return-void

    .line 158
    .restart local v3    # "sim1Pref":Landroid/preference/EditTextPreference;
    :cond_5
    const v5, 0x7f0b00fd

    goto :goto_1
.end method

.method private updateMyPhoneNumberPref(Landroid/content/Context;Landroid/preference/EditTextPreference;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pref"    # Landroid/preference/EditTextPreference;
    .param p3, "simCardSlotIndex"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v1

    .line 172
    .local v1, "isMultiSim":Z
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isSimActive(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 173
    :cond_0
    if-nez v1, :cond_3

    if-nez p3, :cond_3

    const/4 v0, 0x1

    .line 175
    .local v0, "enablePref":Z
    :goto_0
    invoke-virtual {p2, v0}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 176
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v2

    .line 177
    .local v2, "settings":Lcom/sonyericsson/conversations/settings/SettingsManager;
    invoke-virtual {v2, p3}, Lcom/sonyericsson/conversations/settings/SettingsManager;->getMyselfSimNumber(I)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "simNumber":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getSimNumber(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 183
    const v5, 0x7f0b0100

    .line 182
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 184
    const-string/jumbo v4, ""

    invoke-virtual {p2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 170
    :goto_1
    return-void

    .line 172
    .end local v0    # "enablePref":Z
    .end local v2    # "settings":Lcom/sonyericsson/conversations/settings/SettingsManager;
    .end local v3    # "simNumber":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "enablePref":Z
    goto :goto_0

    .line 173
    .end local v0    # "enablePref":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "enablePref":Z
    goto :goto_0

    .line 186
    .restart local v2    # "settings":Lcom/sonyericsson/conversations/settings/SettingsManager;
    .restart local v3    # "simNumber":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateNotificationRelations()V
    .locals 3

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/settings/Settings;->isNotificationEnabled()Z

    move-result v0

    .line 424
    .local v0, "notificationEnabled":Z
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/conversations/ui/util/SettingsUtil;->updateNotificationEnabled(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 422
    return-void
.end method

.method private updateReadReportVisibility()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    .line 271
    .local v1, "isMmsDisabled":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportEnabled()Z

    move-result v0

    .line 276
    .local v0, "deliveryReportEnabled":Z
    const-string/jumbo v5, "pref_key_delivery_reports"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 277
    .local v2, "prefDeliveryReport":Landroid/preference/SwitchPreference;
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getActiveSubscriptionIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 279
    return v6

    .line 270
    .end local v0    # "deliveryReportEnabled":Z
    .end local v1    # "isMmsDisabled":Z
    .end local v2    # "prefDeliveryReport":Landroid/preference/SwitchPreference;
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "isMmsDisabled":Z
    goto :goto_0

    .line 272
    :cond_1
    return v6

    .line 281
    .restart local v0    # "deliveryReportEnabled":Z
    .restart local v2    # "prefDeliveryReport":Landroid/preference/SwitchPreference;
    :cond_2
    const-string/jumbo v5, "pref_key_mms_read_reports"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 283
    .local v3, "prefReadReport":Landroid/preference/Preference;
    if-eqz v0, :cond_3

    .line 284
    invoke-virtual {v2, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 285
    const v4, 0x7f0b00f9

    .line 286
    .local v4, "summaryResId":I
    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 293
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    return v7

    .line 288
    .end local v4    # "summaryResId":I
    :cond_3
    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 290
    const v4, 0x7f0b00fa

    .line 291
    .restart local v4    # "summaryResId":I
    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateRoamingEnabled(Ljava/lang/String;Landroid/preference/PreferenceScreen;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "updateValue"    # Z

    .prologue
    .line 330
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 333
    .local v0, "mmsRoaming":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 329
    :cond_0
    return-void
.end method

.method private updateSimPreferences()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 694
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    return-void

    .line 697
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    const-string/jumbo v0, "pref_key_sim_messages"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 699
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isSimActive(I)Z

    move-result v1

    .line 698
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 701
    return-void

    .line 704
    :cond_1
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->checkAndEnableDisableSimPreference(I)V

    .line 705
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->checkAndEnableDisableSimPreference(I)V

    .line 693
    return-void
.end method

.method private updateSmscNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "smscPrefKey"    # Ljava/lang/String;
    .param p2, "smscNumber"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 485
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 486
    new-instance v1, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/SettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment$UpdateSmscAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 483
    :cond_0
    return-void
.end method

.method private updateSmscNumberVisibility(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pg"    # Landroid/preference/PreferenceGroup;
    .param p2, "smscPrefKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmscEditableValue()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    .line 308
    invoke-virtual {p0, p2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 309
    .local v0, "smscPref":Landroid/preference/Preference;
    iget v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 314
    const v2, 0x7f0b0108

    .line 313
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    iget v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    if-ne v1, v4, :cond_1

    .line 317
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 321
    :cond_0
    :goto_0
    return v4

    .line 318
    :cond_1
    iget v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 319
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 324
    :cond_2
    return v3
.end method

.method private updateSmscPreference(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p1, "smscKey"    # Ljava/lang/CharSequence;
    .param p2, "smscNumber"    # Ljava/lang/String;

    .prologue
    .line 612
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    .line 614
    .local v1, "smscNumberPref":Landroid/preference/EditTextPreference;
    if-eqz v1, :cond_0

    .line 615
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->isEnabled()Z

    move-result v0

    .line 617
    .local v0, "isPrefEnabled":Z
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 618
    invoke-virtual {v1, p2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v1, p2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 620
    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 611
    .end local v0    # "isPrefEnabled":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 673
    const v0, 0xbada

    if-ne p1, v0, :cond_0

    .line 674
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->refreshDefaultSmsAppPreference()V

    .line 676
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 672
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->addPreferencesFromResource(I)V

    .line 82
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->initSimSettings()V

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 86
    .local v0, "ps":Landroid/preference/PreferenceScreen;
    if-nez v0, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    const-string/jumbo v1, "pref_key_category_mms_settings"

    .line 93
    const-string/jumbo v2, "pref_key_sim_2_number"

    .line 92
    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->removeSetting(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateGroupMessagingSettings()V

    .line 96
    const-string/jumbo v1, "pref_key_mms_retrieval_during_roaming"

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/settings/Settings;->isMmsAutoRetrievalEnabled()Z

    move-result v2

    .line 96
    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateRoamingEnabled(Ljava/lang/String;Landroid/preference/PreferenceScreen;Z)V

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pref_key_geotag"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateGeotagSummary(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->removeInvisiblePreference(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    .line 105
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateNotificationRelations()V

    .line 78
    return-void

    .line 100
    :cond_2
    const-string/jumbo v1, "pref_key_category_mms_settings"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->removeGroup(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "pref_key_category_general_settings"

    const-string/jumbo v2, "pref_key_geotag"

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->removeSetting(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 512
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 513
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 514
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 517
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/JoynPreferences;->unregisterListeners(Landroid/preference/PreferenceFragment;)V

    .line 126
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mJoynPreferences:Lcom/sonyericsson/conversations/ui/JoynPreferences;

    .line 129
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 123
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 341
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v7, "pref_key_geotag"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->isDoubleClick()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 350
    :cond_0
    :goto_0
    const-string/jumbo v7, "pref_key_enable_notifications"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateNotificationRelations()V

    .line 356
    :cond_1
    const-string/jumbo v7, "pref_key_mms_auto_retrieval"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 357
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v7

    .line 356
    if-eqz v7, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/settings/Settings;->isMmsAutoRetrievalEnabled()Z

    move-result v0

    .line 360
    .local v0, "autoRetrievalEnabled":Z
    const-string/jumbo v7, "pref_key_mms_retrieval_during_roaming"

    invoke-direct {p0, v7, p1, v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateRoamingEnabled(Ljava/lang/String;Landroid/preference/PreferenceScreen;Z)V

    .line 364
    .end local v0    # "autoRetrievalEnabled":Z
    :cond_2
    const-string/jumbo v7, "pref_key_text_template"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateActivity;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 368
    :cond_3
    const-string/jumbo v7, "pref_key_sim_messages"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 369
    const-string/jumbo v7, "pref_key_sim1_messages"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 368
    if-eqz v7, :cond_5

    .line 370
    :cond_4
    invoke-direct {p0, v11}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->startSimMessagesActivity(I)V

    .line 373
    :cond_5
    const-string/jumbo v7, "pref_key_sim2_messages"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 374
    invoke-direct {p0, v12}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->startSimMessagesActivity(I)V

    .line 379
    :cond_6
    const-string/jumbo v7, "pref_key_delivery_reports"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 380
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 381
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportEnabled()Z

    move-result v1

    .line 383
    .local v1, "deliveryReportEnabled":Z
    const-string/jumbo v7, "pref_key_mms_read_reports"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 384
    .local v6, "readReport":Landroid/preference/Preference;
    if-eqz v1, :cond_a

    .line 385
    const v7, 0x7f0b00f9

    invoke-virtual {p0, v7}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v6, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 396
    .end local v1    # "deliveryReportEnabled":Z
    .end local v6    # "readReport":Landroid/preference/Preference;
    :cond_7
    :goto_1
    const-string/jumbo v7, "semc_pref_default_sms_app"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->isDoubleClick()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 408
    :cond_8
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mLastClickTime:J

    .line 409
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    return v7

    .line 345
    :cond_9
    new-instance v7, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;

    invoke-direct {v7}, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;->createSettingsDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 389
    .restart local v1    # "deliveryReportEnabled":Z
    .restart local v6    # "readReport":Landroid/preference/Preference;
    :cond_a
    const v7, 0x7f0b00fa

    invoke-virtual {p0, v7}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 397
    .end local v1    # "deliveryReportEnabled":Z
    .end local v6    # "readReport":Landroid/preference/Preference;
    :cond_b
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/settings/SettingsManager;->isDefaultSmsPackage()Z

    move-result v3

    .line 400
    .local v3, "isDefaultSmsPackage":Z
    if-eqz v3, :cond_c

    .line 401
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getChangeDefaultSmsPackageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 406
    .local v2, "intent":Landroid/content/Intent;
    :goto_3
    const v7, 0xbada

    invoke-virtual {p0, v2, v7}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 403
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getChangeDefaultSmsPackageIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_3
.end method

.method public onResume()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 431
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 433
    iget v4, p0, Lcom/sonyericsson/conversations/ui/SettingsFragment;->mSmscEditableValue:I

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    invoke-static {}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->getInstance()Lcom/sonyericsson/conversations/util/SubscriptionUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/util/SubscriptionUtil;->isMultiSimDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    const-string/jumbo v4, "pref_key_sim1_smsc_number"

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->initSmscNumber(Ljava/lang/String;)V

    .line 436
    const-string/jumbo v4, "pref_key_sim2_smsc_number"

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->initSmscNumber(Ljava/lang/String;)V

    .line 442
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->refreshDefaultSmsAppPreference()V

    .line 444
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v0

    .line 445
    .local v0, "apis":Lcom/sonyericsson/conversations/Apis;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v2

    .line 446
    .local v2, "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getImEnvironmentApi()Lcom/sonymobile/jms/environment/ImEnvironmentApi;

    move-result-object v1

    .line 447
    .local v1, "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v2}, Lcom/sonymobile/jms/setting/ImSettingApi;->isImConfigured()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 448
    invoke-interface {v0}, Lcom/sonyericsson/conversations/Apis;->getSettingsManager()Lcom/sonyericsson/conversations/settings/SettingsManager;

    move-result-object v3

    .line 449
    .local v3, "settingsManager":Lcom/sonyericsson/conversations/settings/SettingsManager;
    invoke-direct {p0, v2, v1, v3}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->showJoynPreference(Lcom/sonymobile/jms/setting/ImSettingApi;Lcom/sonymobile/jms/environment/ImEnvironmentApi;Lcom/sonyericsson/conversations/settings/SettingsManager;)V

    .line 453
    .end local v3    # "settingsManager":Lcom/sonyericsson/conversations/settings/SettingsManager;
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateNotificationRelations()V

    .line 454
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateSimPreferences()V

    .line 430
    return-void

    .line 438
    .end local v0    # "apis":Lcom/sonyericsson/conversations/Apis;
    .end local v1    # "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .end local v2    # "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    :cond_1
    const-string/jumbo v4, "pref_key_smsc_number"

    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->initSmscNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    .restart local v0    # "apis":Lcom/sonyericsson/conversations/Apis;
    .restart local v1    # "imEnvironmentApi":Lcom/sonymobile/jms/environment/ImEnvironmentApi;
    .restart local v2    # "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->hideJoynPreferences()V

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 629
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->isSmscKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 630
    invoke-virtual {p0, p2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    .line 631
    .local v1, "smscPref":Landroid/preference/EditTextPreference;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "smscNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 634
    invoke-direct {p0, p2, v0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateSmscNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .end local v0    # "smscNumber":Ljava/lang/String;
    .end local v1    # "smscPref":Landroid/preference/EditTextPreference;
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    const-string/jumbo v2, "pref_key_geotag"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 638
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateGeotagSummary(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    const-string/jumbo v2, "pref_key_sim_1_number"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 641
    const-string/jumbo v2, "pref_key_sim_2_number"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 640
    if-nez v2, :cond_3

    .line 642
    const-string/jumbo v2, "pref_key_mms_group_conversation"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 639
    if-eqz v2, :cond_0

    .line 643
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->updateGroupMessagingSettings()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 109
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 119
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 116
    return-void
.end method
