.class public Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AccountSelectionUtil"


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "storagePath"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil;->doImport(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doImport(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "storagePath"    # Ljava/lang/String;

    .prologue
    .line 144
    if-eqz p2, :cond_0

    .line 145
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->isSimPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->convertPathToSub(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Landroid/accounts/Account;I)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil;->doImportFromExternalStorage(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static doImportFromExternalStorage(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "storagePath"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/android/socialphonebook/ImportVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, "importIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 170
    const-string/jumbo v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string/jumbo v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    :cond_0
    const-string/jumbo v1, "external_storage_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method public static doImportFromSim(Landroid/content/Context;Landroid/accounts/Account;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "sub"    # I

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "importIntent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const-string/jumbo v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :cond_0
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-class v1, Lcom/sonyericsson/android/socialphonebook/SimImportActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountSelectedListener"    # Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;
    .param p2, "storagePath"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v5

    .line 87
    .local v5, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getWithoutSimAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 90
    .local v3, "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    const-string/jumbo v1, "layout_inflater"

    .line 89
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 92
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;

    .line 93
    const v2, 0x7f0400d5

    move-object v1, p0

    .line 92
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$1;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/common/model/AccountTypeManager;)V

    .line 131
    .local v0, "accountAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    if-nez p1, :cond_0

    .line 133
    new-instance p1, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;

    .end local p1    # "accountSelectedListener":Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;
    invoke-direct {p1, p0, v3, p2}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    .line 136
    .restart local p1    # "accountSelectedListener":Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil$AccountSelectedListener;
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    const v2, 0x7f0900bd

    .line 136
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 138
    const/4 v2, 0x0

    .line 136
    invoke-virtual {v1, v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
