.class Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;
.super Ljava/lang/Object;
.source "BackupMenuActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuSelectionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupToExternalStorageSelectedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)V

    return-void
.end method


# virtual methods
.method public onSelected(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;)V
    .locals 9
    .param p1, "item"    # Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 176
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .line 177
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_0
    iget-object v8, p1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    .line 175
    invoke-static {v7, v4, v8}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->checkExternalStorageState(Landroid/content/Context;ZLjava/lang/String;)I

    move-result v3

    .line 179
    .local v3, "storageState":I
    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 180
    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 181
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)I

    move-result v4

    if-nez v4, :cond_5

    .line 183
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .line 182
    invoke-static {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 185
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v1, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getWithoutSimAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 188
    .local v2, "size":I
    if-le v2, v5, :cond_2

    .line 192
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    const v5, 0x7f09028f

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->showDialog(I)V

    .line 193
    return-void

    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v1    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .end local v2    # "size":I
    .end local v3    # "storageState":I
    :cond_1
    move v4, v6

    .line 177
    goto :goto_0

    .line 195
    .restart local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v1    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .restart local v2    # "size":I
    .restart local v3    # "storageState":I
    :cond_2
    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .line 196
    if-ne v2, v5, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    :goto_1
    iget-object v5, p1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    .line 195
    invoke-static {v7, v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/AccountSelectionUtil;->doImportFromExternalStorage(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 202
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v1    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .end local v2    # "size":I
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->finish()V

    .line 173
    :goto_3
    return-void

    .line 196
    .restart local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .restart local v1    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .restart local v2    # "size":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 198
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    .end local v1    # "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    .end local v2    # "size":I
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    invoke-static {v4}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-get1(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;)I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 199
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    iget-object v5, p1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-wrap0(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;Ljava/lang/String;)V

    goto :goto_2

    .line 204
    :cond_6
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    .line 205
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupToExternalStorageSelectedHandler;->this$0:Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;

    iget-object v6, p1, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity$BackupMenuActivityItem;->path:Ljava/lang/String;

    .line 204
    invoke-static {v5, v6, v3}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil;->getErrorMessage(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/util/BackupMediaUtil$ErrorMessage;->getMessageBodyId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;->-wrap1(Lcom/sonyericsson/android/socialphonebook/BackupMenuActivity;I)V

    goto :goto_3
.end method
