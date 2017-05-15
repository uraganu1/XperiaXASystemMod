.class Lcom/android/settings/PrivacySettings$2;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/sonymobile/settings/backup/BackupCardPreference$BackupPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PrivacySettings;->updateSomcBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PrivacySettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$somcBackupCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettings;Landroid/content/Context;Landroid/preference/PreferenceCategory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/PrivacySettings;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$somcBackupCategory"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    iput-object p2, p0, Lcom/android/settings/PrivacySettings$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/PrivacySettings$2;->val$somcBackupCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/settings/PrivacySettings$2;->val$somcBackupCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {v1}, Lcom/android/settings/PrivacySettings;->-get1(Lcom/android/settings/PrivacySettings;)Lcom/sonymobile/settings/backup/BackupCardPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 413
    iget-object v0, p0, Lcom/android/settings/PrivacySettings$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/settings/backup/Utils;->resetNewBackupPerformed(Landroid/content/Context;)I

    .line 414
    iget-object v0, p0, Lcom/android/settings/PrivacySettings$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/sonymobile/settings/backup/Utils;->getBackupEditIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 411
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/settings/PrivacySettings$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/settings/backup/Utils;->resetNewBackupPerformed(Landroid/content/Context;)I

    .line 407
    iget-object v0, p0, Lcom/android/settings/PrivacySettings$2;->val$somcBackupCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {v1}, Lcom/android/settings/PrivacySettings;->-get1(Lcom/android/settings/PrivacySettings;)Lcom/sonymobile/settings/backup/BackupCardPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    return-void
.end method
