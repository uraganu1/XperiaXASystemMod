.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;,
        Lcom/android/settings/PrivacySettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoRestore:Landroid/preference/SwitchPreference;

.field private mBackup:Landroid/preference/PreferenceScreen;

.field private mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mEnabled:Z

.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mSomcAutoBackup:Landroid/preference/Preference;

.field private mSomcBackupAvailable:Z

.field private mSomcBackupMore:Landroid/preference/Preference;

.field private mSomcRestoreData:Landroid/preference/Preference;

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static synthetic -get0(Lcom/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/PrivacySettings;)Lcom/sonymobile/settings/backup/BackupCardPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nonVisibleKeys"    # Ljava/util/Collection;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    .line 246
    sput-object v0, Lcom/android/settings/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 176
    new-instance v0, Lcom/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PrivacySettings$1;-><init>(Lcom/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 65
    return-void
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string/jumbo v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 286
    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 288
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v2, 0x0

    .line 290
    .local v2, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 295
    .end local v2    # "isServiceActive":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 296
    const-string/jumbo v5, "com.google.settings"

    const/4 v6, 0x0

    .line 295
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v3, 0x1

    .line 297
    .local v3, "vendorSpecific":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 298
    :cond_0
    const-string/jumbo v4, "backup_inactive"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_1
    if-nez v3, :cond_6

    if-eqz v2, :cond_6

    .line 305
    :goto_2
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 306
    const-string/jumbo v5, "no_factory_reset"

    .line 305
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    const-string/jumbo v4, "factory_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_2
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 310
    const-string/jumbo v5, "no_network_reset"

    .line 309
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 311
    const-string/jumbo v4, "network_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_3
    invoke-static {p0}, Lcom/sonymobile/settings/backup/Utils;->isSomcBackupAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 315
    const-string/jumbo v4, "somc_backup_category"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_4
    return-void

    .line 291
    .end local v3    # "vendorSpecific":Z
    .restart local v2    # "isServiceActive":Z
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PrivacySettings"

    const-string/jumbo v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "isServiceActive":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "vendorSpecific":Z
    goto :goto_1

    .line 301
    :cond_6
    const-string/jumbo v4, "backup_data"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    const-string/jumbo v4, "auto_restore"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 303
    const-string/jumbo v4, "configure_account"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private initSomcBackupUI(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 320
    const-string/jumbo v0, "somc_backup_card"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/backup/BackupCardPreference;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    .line 321
    const-string/jumbo v0, "somc_automatic_backup"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mSomcAutoBackup:Landroid/preference/Preference;

    .line 322
    const-string/jumbo v0, "somc_restore_data"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mSomcRestoreData:Landroid/preference/Preference;

    .line 323
    const-string/jumbo v0, "somc_backup_more"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mSomcBackupMore:Landroid/preference/Preference;

    .line 325
    invoke-static {p1}, Lcom/sonymobile/settings/backup/Utils;->isSomcBackupAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mSomcBackupAvailable:Z

    .line 327
    iget-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mSomcBackupAvailable:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSomcAutoBackup:Landroid/preference/Preference;

    invoke-static {}, Lcom/sonymobile/settings/backup/Utils;->getAutoBackupIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSomcRestoreData:Landroid/preference/Preference;

    invoke-static {}, Lcom/sonymobile/settings/backup/Utils;->getRestoreDataIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mSomcBackupMore:Landroid/preference/Preference;

    invoke-static {}, Lcom/sonymobile/settings/backup/Utils;->getBackupMoreIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 319
    :cond_0
    return-void
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b084e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateSomcBackup()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 336
    .local v0, "context":Landroid/content/Context;
    iget-boolean v4, p0, Lcom/android/settings/PrivacySettings;->mSomcBackupAvailable:Z

    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 337
    :cond_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "somc_backup_category"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 343
    .local v2, "somcBackupCategory":Landroid/preference/PreferenceCategory;
    invoke-static {v0}, Lcom/sonymobile/settings/backup/Utils;->getBackupInfo(Landroid/content/Context;)Lcom/sonymobile/settings/backup/BackupInfo;

    move-result-object v1

    .line 344
    .local v1, "info":Lcom/sonymobile/settings/backup/BackupInfo;
    if-nez v1, :cond_2

    .line 345
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    return-void

    .line 349
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/settings/backup/BackupInfo;->isAutoBackupOn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 350
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mSomcAutoBackup:Landroid/preference/Preference;

    const v5, 0x7f0b0ca6

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 394
    :goto_0
    invoke-virtual {v1}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastBackupTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 395
    invoke-virtual {v1}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastBackupTime()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/sonymobile/settings/backup/Utils;->getLastBackupString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "when":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mSomcRestoreData:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 401
    .end local v3    # "when":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Lcom/sonymobile/settings/backup/BackupInfo;->hasRelevantErrors()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 402
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-virtual {v4, v1}, Lcom/sonymobile/settings/backup/BackupCardPreference;->update(Lcom/sonymobile/settings/backup/BackupInfo;)V

    .line 403
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    new-instance v5, Lcom/android/settings/PrivacySettings$2;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/settings/PrivacySettings$2;-><init>(Lcom/android/settings/PrivacySettings;Landroid/content/Context;Landroid/preference/PreferenceCategory;)V

    invoke-virtual {v4, v5}, Lcom/sonymobile/settings/backup/BackupCardPreference;->setListener(Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;)V

    .line 334
    :goto_2
    return-void

    .line 351
    :cond_3
    invoke-virtual {v1}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastUnsuccessfulBackupReason()I

    move-result v4

    if-eqz v4, :cond_4

    .line 354
    invoke-virtual {v1}, Lcom/sonymobile/settings/backup/BackupInfo;->getLastUnsuccessfulBackupReason()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 358
    :sswitch_0
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mSomcAutoBackup:Landroid/preference/Preference;

    const v5, 0x7f0b0caa

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 361
    :sswitch_1
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mSomcAutoBackup:Landroid/preference/Preference;

    .line 362
    const v5, 0x7f0b0cab

    .line 361
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 367
    :cond_4
    invoke-virtual {v1}, Lcom/sonymobile/settings/backup/BackupInfo;->getWaitingForBackupCondition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 369
    invoke-virtual {v1}, Lcom/sonymobile/settings/backup/BackupInfo;->getWaitingForBackupCondition()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 371
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mSomcAutoBackup:Landroid/preference/Preference;

    const v5, 0x7f0b0caf

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 374
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mSomcAutoBackup:Landroid/preference/Preference;

    const v5, 0x7f0b0cad

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 377
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mSomcAutoBackup:Landroid/preference/Preference;

    const v5, 0x7f0b0cae

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 380
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mSomcAutoBackup:Landroid/preference/Preference;

    const v5, 0x7f0b0cb0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 383
    :pswitch_4
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mSomcAutoBackup:Landroid/preference/Preference;

    const v5, 0x7f0b0cb1

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 390
    :cond_5
    invoke-virtual {v1}, Lcom/sonymobile/settings/backup/BackupInfo;->getNextAutoBackupTime()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/sonymobile/settings/backup/Utils;->getNextBackupString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 391
    .restart local v3    # "when":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mSomcAutoBackup:Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 398
    .end local v3    # "when":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mSomcRestoreData:Landroid/preference/Preference;

    const v5, 0x7f0b0cb3

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 417
    :cond_7
    invoke-static {v0}, Lcom/sonymobile/settings/backup/Utils;->showInitialWelcomeCard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 418
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-virtual {v4}, Lcom/sonymobile/settings/backup/BackupCardPreference;->showWelcome()V

    .line 419
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-virtual {v4, v8}, Lcom/sonymobile/settings/backup/BackupCardPreference;->update(Lcom/sonymobile/settings/backup/BackupInfo;)V

    .line 420
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    new-instance v5, Lcom/android/settings/PrivacySettings$3;

    invoke-direct {v5, p0, v0, v2}, Lcom/android/settings/PrivacySettings$3;-><init>(Lcom/android/settings/PrivacySettings;Landroid/content/Context;Landroid/preference/PreferenceCategory;)V

    invoke-virtual {v4, v5}, Lcom/sonymobile/settings/backup/BackupCardPreference;->setListener(Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;)V

    goto/16 :goto_2

    .line 433
    :cond_8
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackupCardPreference:Lcom/sonymobile/settings/backup/BackupCardPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 354
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 203
    .local v5, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 204
    .local v0, "backupEnabled":Z
    const/4 v1, 0x0

    .line 205
    .local v1, "configIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 207
    .local v2, "configSummary":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v9}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 208
    .local v0, "backupEnabled":Z
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v9}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "transport":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v9, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 210
    .local v1, "configIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v9, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "configSummary":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 213
    const v9, 0x7f0b0703

    .line 212
    :goto_0
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "backupEnabled":Z
    .end local v1    # "configIntent":Landroid/content/Intent;
    .end local v2    # "configSummary":Ljava/lang/String;
    .end local v6    # "transport":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 221
    const-string/jumbo v10, "backup_auto_restore"

    .line 220
    invoke-static {v5, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v7, :cond_1

    :goto_2
    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 222
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 224
    if-eqz v1, :cond_2

    move v3, v0

    .line 225
    :goto_3
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 226
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 227
    invoke-direct {p0, v2}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 200
    return-void

    .line 214
    .restart local v0    # "backupEnabled":Z
    .restart local v1    # "configIntent":Landroid/content/Intent;
    .restart local v2    # "configSummary":Ljava/lang/String;
    .restart local v6    # "transport":Ljava/lang/String;
    :cond_0
    const v9, 0x7f0b0704

    goto :goto_0

    .line 215
    .end local v0    # "backupEnabled":Z
    .end local v1    # "configIntent":Landroid/content/Intent;
    .end local v2    # "configSummary":Ljava/lang/String;
    .end local v6    # "transport":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 217
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    move v7, v8

    .line 220
    goto :goto_2

    .line 224
    :cond_2
    const/4 v3, 0x0

    .local v3, "configureEnabled":Z
    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 240
    const v0, 0x7f0b0d41

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->isOwner()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    .line 109
    iget-boolean v7, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-nez v7, :cond_0

    .line 110
    return-void

    .line 113
    :cond_0
    const v7, 0x7f080041

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 116
    .local v5, "screen":Landroid/preference/PreferenceScreen;
    const-string/jumbo v7, "backup"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 115
    invoke-static {v7}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 118
    const-string/jumbo v7, "backup_data"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    .line 120
    const-string/jumbo v7, "auto_restore"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 121
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    const-string/jumbo v7, "configure_account"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/PrivacySettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 126
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->setFactoryResetTitle(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {p0, v7, v5}, Lcom/android/settings/PrivacySettings;->initSomcBackupUI(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 131
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 132
    .local v3, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 133
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    .line 134
    .local v6, "screenPreferenceCount":I
    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 135
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 136
    .local v4, "preference":Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 137
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 141
    .end local v4    # "preference":Landroid/preference/Preference;
    :cond_2
    const-string/jumbo v7, "backup_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 142
    .local v0, "backupCategory":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 144
    .local v1, "backupCategoryPreferenceCount":I
    add-int/lit8 v2, v1, -0x1

    :goto_1
    if-ltz v2, :cond_4

    .line 145
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 146
    .restart local v4    # "preference":Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 147
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 150
    .end local v4    # "preference":Landroid/preference/Preference;
    :cond_4
    iget-boolean v7, p0, Lcom/android/settings/PrivacySettings;->mSomcBackupAvailable:Z

    if-eqz v7, :cond_5

    .line 153
    const v7, 0x7f0b0ca4

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 157
    .end local v1    # "backupCategoryPreferenceCount":I
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 170
    iget-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateSomcBackup()V

    .line 166
    :cond_0
    return-void
.end method
