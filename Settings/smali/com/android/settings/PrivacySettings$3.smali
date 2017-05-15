.class Lcom/android/settings/PrivacySettings$3;
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
    .line 420
    iput-object p1, p0, Lcom/android/settings/PrivacySettings$3;->this$0:Lcom/android/settings/PrivacySettings;

    iput-object p2, p0, Lcom/android/settings/PrivacySettings$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/PrivacySettings$3;->val$somcBackupCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/settings/PrivacySettings$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/settings/backup/Utils;->persistShowInitialWelcomeCard(Landroid/content/Context;Z)V

    .line 424
    iget-object v0, p0, Lcom/android/settings/PrivacySettings$3;->val$somcBackupCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/PrivacySettings$3;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-static {v1}, Lcom/android/settings/PrivacySettings;->-get1(Lcom/android/settings/PrivacySettings;)Lcom/sonymobile/settings/backup/BackupCardPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    return-void
.end method
