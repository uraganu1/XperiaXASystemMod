.class public Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "AddNewContactActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment$BackupHintListener;
.implements Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment$SelectBackupAccountListener;
.implements Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment$SelectLocalAccountListener;
.implements Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment$AutoSyncListener;


# static fields
.field public static final INTENT_EXTRA_NEW_LOCAL_PROFILE:Ljava/lang/String; = "newLocalProfile"

.field private static final KEY_CHOSEN_ACCOUNT:Ljava/lang/String; = "chosen_account"

.field private static final KEY_HAS_STARTED_CHOOSING_ACCOUNT:Ljava/lang/String; = "has_started_choosing_account"

.field private static final SUBACTIVITY_ADD_NEW_ACCOUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AddNewContactActivity"

.field private static final TAG_AUTO_SYNC_FRAGMENT:Ljava/lang/String; = "tag_auto_sync_fragment"

.field private static final TAG_BACKUP_HINT_FRAGMENT:Ljava/lang/String; = "tag_backup_hint_fragment"

.field private static final TAG_SELECT_BACKUP_ACCOUNT_FRAGMENT:Ljava/lang/String; = "tag_select_backup_account_fragment"

.field private static final TAG_SELECT_LOCAL_ACCOUNT_FRAGMENT:Ljava/lang/String; = "tag_select_local_account_fragment"


# instance fields
.field private mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

.field private mChosenAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

.field private mHasStartedChoosingAccount:Z

.field private mIntentExtras:Landroid/os/Bundle;

.field mIsStartedToIncludeSimAccount:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    return-void
.end method

.method private handleAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isLocalAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->handleLocalAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 259
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->handleNonLocalAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method

.method private handleLocalAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->handleNullAccountSelected()V

    .line 285
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->isSimContactsAccount(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->isSimNewContactPossible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->saveAccountAndStartNewContactActivity(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 280
    return-void

    .line 287
    :cond_2
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSlotNumber(Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, "sub":I
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/SimStringUtil;->getSimCardFull(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 289
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->finish()V

    .line 290
    return-void
.end method

.method private handleNonLocalAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->handleNullAccountSelected()V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->shouldShowSyncDialog(Lcom/android/contacts/common/model/account/AccountWithDataSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mChosenAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 274
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->showAutoSyncDialog()V

    .line 267
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->saveAccountAndStartNewContactActivity(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method

.method private handleNullAccountSelected()V
    .locals 2

    .prologue
    .line 253
    const-string/jumbo v0, "AddNewContactActivity"

    const-string/jumbo v1, "Choosing account - Chosen account is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->setResult(I)V

    .line 255
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->finish()V

    .line 256
    return-void
.end method

.method public static isSimNewContactPossible(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 174
    invoke-static {p0, v3, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getInstance(Landroid/content/Context;ZLjava/lang/String;)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-result-object v0

    .line 175
    .local v0, "adnHelper":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAvailablePbr(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 176
    const/4 v1, 0x0

    return v1

    .line 178
    :cond_0
    return v3
.end method

.method private saveAccountAndStartNewContactActivity(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 183
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mChosenAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 184
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->startCreateContactActivity(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 181
    return-void
.end method

.method private showAutoSyncDialog()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;-><init>()V

    .line 170
    .local v0, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tag_auto_sync_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/AutoSyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private showBackupHintDialog()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;-><init>()V

    .line 153
    .local v0, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tag_backup_hint_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/BackupHintDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private showSelectBackupAccountDialog(Z)V
    .locals 3
    .param p1, "isStartedForSim"    # Z

    .prologue
    .line 158
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->newInstance(Z)Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;

    move-result-object v0

    .line 159
    .local v0, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tag_select_backup_account_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/SelectBackupAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private showSelectLocalAccountDialog(Z)V
    .locals 3
    .param p1, "isStartedForSim"    # Z

    .prologue
    .line 164
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->newInstance(Z)Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;

    move-result-object v0

    .line 165
    .local v0, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tag_select_local_account_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/SelectLocalAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private startAddNewBackupAccountActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "extra_write_only_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    return-void
.end method

.method private startChooseAccount()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->shouldShowAccountChangedNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->shouldShowSelectBackupAccountDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mIsStartedToIncludeSimAccount:Z

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->showSelectBackupAccountDialog(Z)V

    .line 124
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isModifyAccountsDisallowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->onKeepLocalClicked()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->showBackupHintDialog()V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getDefaultAccount()Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->startCreateContactActivity(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method

.method private startCreateContactActivity(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.action.NEW_CONTACT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    :cond_0
    const-string/jumbo v1, "android.provider.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->finish()V

    .line 187
    return-void
.end method

.method private startCreateContactActivityForEditingMyProfile()V
    .locals 6

    .prologue
    .line 201
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lookup/profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/LocalProfile;->getRawContactId(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 203
    .local v1, "myselfUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->finish()V

    .line 200
    return-void
.end method


# virtual methods
.method public onAccountSelectedForBackup(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->handleAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 246
    return-void
.end method

.method public onAccountSelectedForLocal(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 0
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->handleLocalAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 334
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 220
    if-ne p1, v3, :cond_2

    .line 221
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 223
    const-string/jumbo v1, "AddNewContactActivity"

    const-string/jumbo v2, "Choosing account - Adding new account cancelled"

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->finish()V

    .line 225
    return-void

    .line 228
    :cond_0
    const-string/jumbo v1, "key_chosen_account"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 229
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    if-nez v0, :cond_1

    .line 231
    const-string/jumbo v1, "AddNewContactActivity"

    const-string/jumbo v2, "Choosing account - Adding new account returned null account!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const v1, 0x7f0902f4

    .line 233
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 236
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->setResult(I)V

    .line 237
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->finish()V

    .line 238
    return-void

    .line 241
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->handleNonLocalAccountSelected(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 219
    .end local v0    # "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    :cond_2
    return-void
.end method

.method public onAddNewBackupClicked()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->startAddNewBackupAccountActivity()V

    .line 313
    return-void
.end method

.method public onAutoSyncClosed()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mChosenAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->saveAccountAndStartNewContactActivity(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 329
    return-void
.end method

.method public onBackupHintCancelled()V
    .locals 0

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->finish()V

    .line 324
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    if-eqz p1, :cond_2

    const/4 v3, 0x1

    .line 82
    .local v3, "isRecreated":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 84
    const-string/jumbo v5, "chosen_account"

    .line 83
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mChosenAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 86
    const-string/jumbo v5, "has_started_choosing_account"

    .line 85
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mHasStartedChoosingAccount:Z

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 90
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mIntentExtras:Landroid/os/Bundle;

    .line 92
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    .line 94
    const-string/jumbo v5, "disable_sim_account"

    .line 93
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mIsStartedToIncludeSimAccount:Z

    .line 96
    const-string/jumbo v5, "newLocalProfile"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 99
    .local v4, "newLocalProfile":Z
    const-string/jumbo v5, "android.provider.extra.ACCOUNT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 100
    .local v0, "accountProvided":Landroid/accounts/Account;
    const-string/jumbo v5, "android.provider.extra.DATA_SET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "dataSet":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 104
    new-instance v5, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 105
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 104
    invoke-direct {v5, v6, v7, v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->startCreateContactActivity(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 106
    return-void

    .line 80
    .end local v0    # "accountProvided":Landroid/accounts/Account;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isRecreated":Z
    .end local v4    # "newLocalProfile":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "isRecreated":Z
    goto :goto_0

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    move v5, v7

    .line 93
    goto :goto_1

    .line 110
    .restart local v0    # "accountProvided":Landroid/accounts/Account;
    .restart local v1    # "dataSet":Ljava/lang/String;
    .restart local v4    # "newLocalProfile":Z
    :cond_4
    if-eqz v4, :cond_5

    .line 111
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->startCreateContactActivityForEditingMyProfile()V

    .line 112
    return-void

    .line 115
    :cond_5
    iget-boolean v5, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mHasStartedChoosingAccount:Z

    if-nez v5, :cond_6

    .line 116
    iput-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mHasStartedChoosingAccount:Z

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->startChooseAccount()V

    .line 73
    :cond_6
    return-void
.end method

.method public onKeepLocalClicked()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mAccountUtils:Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mIsStartedToIncludeSimAccount:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->shouldShowChooseLocalAccountDialog(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mIsStartedToIncludeSimAccount:Z

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->showSelectLocalAccountDialog(Z)V

    .line 302
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    .line 307
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->saveAccountAndStartNewContactActivity(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    const-string/jumbo v0, "chosen_account"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mChosenAccount:Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 215
    const-string/jumbo v0, "has_started_choosing_account"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->mHasStartedChoosingAccount:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    return-void
.end method

.method public onSelectBackupAccountCancelled()V
    .locals 0

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->finish()V

    .line 297
    return-void
.end method

.method public onSelectLocalAccountCancelled()V
    .locals 0

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewContactActivity;->finish()V

    .line 339
    return-void
.end method
