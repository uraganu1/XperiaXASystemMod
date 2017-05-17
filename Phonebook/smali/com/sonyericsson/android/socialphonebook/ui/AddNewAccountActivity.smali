.class public Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;
.super Lcom/android/contacts/activities/TransactionSafeActivity;
.source "AddNewAccountActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment$AddNewAccountListener;


# static fields
.field public static final EXTRA_WRITE_ONLY_MODE:Ljava/lang/String; = "extra_write_only_mode"

.field public static final KEY_CHOSEN_ACCOUNT:Ljava/lang/String; = "key_chosen_account"

.field private static final KEY_ERROR_NO_TYPES_TO_DISPLAY:Ljava/lang/String; = "key_no_types_to_display"

.field private static final SUBACTIVITY_ADD_AND_LOG_IN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AddNewAccountActivity"

.field private static final TAG_ADD_NEW_ACCOUNT_FRAGMENT:Ljava/lang/String; = "tag_add_new_account_fragment"


# instance fields
.field private mWriteOnlyMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;-><init>()V

    return-void
.end method

.method private finishForNoTypesSuppliedToDisplay()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "key_no_types_to_display"

    .line 97
    const-string/jumbo v2, "No valid account types to display supplied"

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->finish()V

    .line 94
    return-void
.end method

.method private setResultAndFinish(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .prologue
    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "key_chosen_account"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    const-string/jumbo v1, "AddNewAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AddNewBackupAccountActivity.setResultAndFinish: selected account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    const-string/jumbo v3, ", "

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    iget-object v3, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->finish()V

    .line 129
    return-void
.end method

.method private setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 125
    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v0, "account":Lcom/android/contacts/common/model/account/AccountWithDataSet;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->setResultAndFinish(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 124
    return-void
.end method

.method private showAddNewAccountDialog(Z)V
    .locals 3
    .param p1, "writeOnlyMode"    # Z

    .prologue
    .line 90
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->newInstance(Z)Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;

    move-result-object v0

    .line 91
    .local v0, "dialogFragment":Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tag_add_new_account_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private startSystemAddAccountActivity(Ljava/lang/String;)V
    .locals 10
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-array v2, v9, [Ljava/lang/String;

    aput-object p1, v2, v3

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    .line 140
    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 150
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v8, v9}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 104
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 105
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 106
    const-string/jumbo v3, "authAccount"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "accountName":Ljava/lang/String;
    const-string/jumbo v3, "accountType"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "accountType":Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->setResultAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void

    .line 113
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    :cond_1
    if-nez p3, :cond_3

    const/4 v2, 0x0

    .line 114
    :goto_0
    invoke-virtual {p0, p2, v2}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->setResult(ILandroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->finish()V

    .line 103
    :cond_2
    return-void

    .line 113
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v2, "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public onAddNewAccountCancelled()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->setResult(I)V

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->finish()V

    .line 166
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 70
    .local v2, "isRecreated":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "extra_write_only_mode"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->mWriteOnlyMode:Z

    .line 72
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;

    move-result-object v1

    .line 73
    .local v1, "accountUtils":Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->mWriteOnlyMode:Z

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;->getRemoteAccountTypeStrings(Z)[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "accountTypes":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_2

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->finishForNoTypesSuppliedToDisplay()V

    .line 77
    return-void

    .line 68
    .end local v0    # "accountTypes":[Ljava/lang/String;
    .end local v1    # "accountUtils":Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
    .end local v2    # "isRecreated":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isRecreated":Z
    goto :goto_0

    .line 80
    .restart local v0    # "accountTypes":[Ljava/lang/String;
    .restart local v1    # "accountUtils":Lcom/sonyericsson/android/socialphonebook/util/ChooseAccountUtils;
    :cond_2
    if-eqz v2, :cond_3

    .line 83
    return-void

    .line 85
    :cond_3
    iget-boolean v3, p0, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->mWriteOnlyMode:Z

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->showAddNewAccountDialog(Z)V

    .line 66
    return-void
.end method

.method public onNewAccountChosen(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->startSystemAddAccountActivity(Ljava/lang/String;)V

    .line 157
    return-void

    .line 159
    :cond_0
    const-string/jumbo v0, "AddNewAccountActivity"

    const-string/jumbo v1, "AddNewBackupAccountActivity.onActivityResult: unable to find account type, pretending the request was canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->setResult(I)V

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/AddNewAccountActivity;->finish()V

    .line 154
    return-void
.end method
